-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 14:41:52 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_Renderer_0_0/BOARD_DESIGN_Renderer_0_0_sim_netlist.vhdl
-- Design      : BOARD_DESIGN_Renderer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_Renderer_0_0_Renderer is
  port (
    \SOAMAddress[4]\ : out STD_LOGIC;
    \SOAMAddress[3]\ : out STD_LOGIC;
    \SOAMAddress[0]\ : out STD_LOGIC;
    \SOAMAddress[1]\ : out STD_LOGIC;
    \SOAMAddress[2]\ : out STD_LOGIC;
    NextScanline : out STD_LOGIC_VECTOR ( 8 downto 0 );
    BufferData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SpriteROMAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BufferEnableWrite : out STD_LOGIC;
    SOAMReadEnable : out STD_LOGIC;
    isEndLine : out STD_LOGIC;
    bufferFull : in STD_LOGIC;
    clk : in STD_LOGIC;
    SpriteROMDatout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SOAMData : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BOARD_DESIGN_Renderer_0_0_Renderer : entity is "Renderer";
end BOARD_DESIGN_Renderer_0_0_Renderer;

architecture STRUCTURE of BOARD_DESIGN_Renderer_0_0_Renderer is
  signal \BufferData[7]_i_1_n_0\ : STD_LOGIC;
  signal C : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal CurrentSprite : STD_LOGIC;
  signal CurrentSprite210_in : STD_LOGIC;
  signal CurrentSprite213_in : STD_LOGIC;
  signal CurrentSprite216_in : STD_LOGIC;
  signal CurrentSprite219_in : STD_LOGIC;
  signal CurrentSprite222_in : STD_LOGIC;
  signal CurrentSprite225_in : STD_LOGIC;
  signal CurrentSprite228_in : STD_LOGIC;
  signal CurrentSprite22_in : STD_LOGIC;
  signal CurrentSprite231_in : STD_LOGIC;
  signal CurrentSprite234_in : STD_LOGIC;
  signal CurrentSprite237_in : STD_LOGIC;
  signal CurrentSprite240_in : STD_LOGIC;
  signal CurrentSprite243_in : STD_LOGIC;
  signal CurrentSprite246_in : STD_LOGIC;
  signal CurrentSprite249_in : STD_LOGIC;
  signal CurrentSprite24_in : STD_LOGIC;
  signal CurrentSprite252_in : STD_LOGIC;
  signal CurrentSprite255_in : STD_LOGIC;
  signal CurrentSprite258_in : STD_LOGIC;
  signal CurrentSprite261_in : STD_LOGIC;
  signal CurrentSprite264_in : STD_LOGIC;
  signal CurrentSprite267_in : STD_LOGIC;
  signal CurrentSprite270_in : STD_LOGIC;
  signal CurrentSprite273_in : STD_LOGIC;
  signal CurrentSprite276_in : STD_LOGIC;
  signal CurrentSprite279_in : STD_LOGIC;
  signal CurrentSprite27_in : STD_LOGIC;
  signal CurrentSprite282_in : STD_LOGIC;
  signal CurrentSprite285_in : STD_LOGIC;
  signal CurrentSprite288_in : STD_LOGIC;
  signal CurrentSprite291_in : STD_LOGIC;
  signal CurrentSprite294_in : STD_LOGIC;
  signal \CurrentSprite[0]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[0]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[10]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[11]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[12]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[13]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[14]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[15]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[16]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[17]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[18]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[19]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[1]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[20]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[21]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[22]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[23]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[24]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[25]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[26]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[27]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[28]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[29]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[2]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[30]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_100_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_102_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_103_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_105_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_106_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_108_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_109_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_115_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_116_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_118_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_119_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_124_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_127_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_137_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_138_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_140_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_141_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_142_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_147_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_148_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_149_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_154_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_155_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_160_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_161_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_166_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_167_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_168_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_169_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_16_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_171_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_172_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_174_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_175_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_176_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_178_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_179_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_17_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_180_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_181_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_182_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_183_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_184_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_185_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_186_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_187_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_188_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_189_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_18_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_190_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_192_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_193_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_195_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_196_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_198_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_199_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_19_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_201_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_202_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_204_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_205_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_207_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_208_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_20_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_210_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_211_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_213_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_214_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_216_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_217_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_219_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_21_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_220_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_222_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_223_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_225_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_226_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_227_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_228_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_229_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_230_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_231_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_232_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_233_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_234_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_236_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_237_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_238_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_239_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_240_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_241_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_242_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_243_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_244_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_245_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_246_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_247_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_248_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_250_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_251_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_252_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_253_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_254_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_256_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_257_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_259_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_260_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_261_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_262_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_263_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_264_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_265_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_266_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_267_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_268_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_26_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_270_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_271_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_272_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_273_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_274_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_275_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_276_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_277_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_278_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_279_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_280_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_281_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_282_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_284_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_285_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_286_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_287_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_288_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_290_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_291_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_293_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_294_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_296_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_297_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_299_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_300_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_302_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_303_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_304_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_305_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_306_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_307_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_308_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_309_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_310_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_311_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_312_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_313_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_314_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_316_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_317_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_319_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_31_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_320_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_322_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_323_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_325_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_326_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_328_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_329_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_32_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_331_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_332_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_334_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_335_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_337_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_338_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_340_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_341_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_343_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_344_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_346_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_347_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_349_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_350_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_352_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_353_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_355_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_356_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_358_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_359_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_35_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_360_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_361_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_362_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_363_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_364_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_365_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_366_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_367_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_368_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_369_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_36_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_370_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_372_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_373_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_375_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_376_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_378_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_379_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_37_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_381_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_382_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_384_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_385_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_387_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_388_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_38_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_390_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_391_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_393_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_394_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_396_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_397_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_399_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_39_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_400_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_402_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_403_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_405_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_406_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_408_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_409_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_40_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_411_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_412_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_414_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_415_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_417_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_418_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_420_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_421_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_422_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_423_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_424_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_425_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_426_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_427_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_428_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_429_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_430_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_431_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_432_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_433_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_434_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_435_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_436_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_437_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_438_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_439_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_43_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_440_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_441_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_442_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_443_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_444_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_446_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_447_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_448_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_449_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_44_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_450_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_451_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_452_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_453_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_454_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_455_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_456_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_457_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_458_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_45_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_460_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_461_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_462_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_463_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_464_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_465_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_466_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_467_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_468_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_469_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_46_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_470_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_471_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_472_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_474_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_475_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_476_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_477_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_478_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_479_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_47_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_480_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_481_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_482_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_483_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_484_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_485_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_486_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_488_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_489_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_48_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_490_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_491_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_492_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_493_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_494_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_495_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_496_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_497_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_498_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_499_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_49_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_500_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_502_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_503_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_504_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_505_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_506_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_507_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_508_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_509_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_50_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_510_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_511_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_512_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_513_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_514_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_516_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_517_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_518_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_519_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_51_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_520_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_521_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_522_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_523_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_524_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_525_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_526_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_527_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_528_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_529_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_52_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_530_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_531_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_532_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_533_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_534_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_535_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_536_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_538_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_539_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_53_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_540_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_541_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_542_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_543_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_544_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_545_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_546_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_547_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_548_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_549_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_54_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_550_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_551_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_552_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_553_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_554_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_555_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_556_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_557_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_558_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_55_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_560_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_561_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_562_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_563_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_564_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_565_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_566_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_567_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_568_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_569_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_56_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_570_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_571_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_572_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_574_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_575_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_576_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_577_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_578_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_579_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_57_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_580_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_581_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_582_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_583_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_584_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_585_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_586_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_587_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_588_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_589_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_58_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_590_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_592_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_593_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_594_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_595_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_596_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_597_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_598_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_599_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_59_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_600_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_601_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_602_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_603_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_604_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_606_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_607_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_608_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_609_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_60_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_610_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_611_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_612_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_613_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_614_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_615_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_616_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_617_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_618_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_620_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_621_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_622_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_623_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_624_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_625_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_626_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_627_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_628_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_629_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_630_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_631_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_632_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_634_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_635_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_636_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_637_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_638_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_639_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_63_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_640_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_641_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_642_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_643_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_644_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_645_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_646_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_648_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_649_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_64_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_650_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_651_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_652_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_653_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_654_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_655_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_656_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_657_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_658_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_659_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_660_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_662_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_663_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_664_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_665_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_666_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_667_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_668_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_669_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_66_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_670_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_671_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_672_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_673_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_674_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_676_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_677_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_678_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_679_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_67_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_680_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_681_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_682_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_683_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_684_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_685_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_686_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_687_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_688_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_689_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_690_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_691_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_692_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_694_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_695_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_696_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_697_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_698_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_699_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_69_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_700_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_701_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_702_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_703_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_704_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_705_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_706_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_708_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_709_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_70_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_710_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_711_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_712_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_713_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_714_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_715_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_716_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_717_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_718_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_719_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_720_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_722_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_723_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_724_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_725_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_726_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_728_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_729_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_730_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_731_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_732_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_733_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_734_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_735_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_736_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_737_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_738_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_739_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_740_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_742_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_743_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_744_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_745_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_746_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_747_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_748_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_749_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_750_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_751_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_752_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_753_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_754_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_755_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_756_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_757_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_758_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_759_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_760_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_761_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_762_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_764_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_765_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_766_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_767_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_768_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_770_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_771_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_772_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_773_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_774_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_775_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_776_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_777_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_778_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_779_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_780_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_781_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_782_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_783_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_784_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_785_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_786_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_787_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_788_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_789_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_790_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_792_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_793_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_794_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_795_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_796_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_797_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_798_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_799_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_79_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_800_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_801_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_802_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_803_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_804_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_805_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_806_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_807_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_808_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_809_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_810_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_811_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_812_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_813_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_814_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_815_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_816_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_817_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_818_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_819_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_820_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_821_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_822_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_823_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_824_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_825_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_826_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_827_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_828_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_829_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_830_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_831_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_832_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_833_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_834_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_835_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_836_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_837_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_838_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_839_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_840_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_841_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_842_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_843_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_844_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_845_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_846_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_847_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_848_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_849_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_850_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_851_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_852_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_853_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_854_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_855_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_856_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_857_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_858_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_859_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_85_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_860_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_861_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_862_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_863_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_864_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_865_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_866_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_867_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_868_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_869_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_86_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_870_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_871_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_872_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_873_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_874_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_875_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_876_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_877_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_878_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_879_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_880_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_881_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_882_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_883_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_884_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_885_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_886_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_887_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_888_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_889_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_88_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_890_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_891_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_892_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_893_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_894_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_895_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_896_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_89_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_91_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_92_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_94_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_95_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_99_n_0\ : STD_LOGIC;
  signal \CurrentSprite[31]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[3]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[4]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[5]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[6]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[7]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[8]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_10_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_11_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_12_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_13_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_14_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_15_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_1_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_2_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_3_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_4_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_5_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_6_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_7_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_8_n_0\ : STD_LOGIC;
  signal \CurrentSprite[9]_i_9_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_101_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_101_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_101_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_101_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_104_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_104_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_104_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_104_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_107_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_107_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_107_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_107_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_111_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_111_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_113_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_113_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_114_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_114_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_114_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_114_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_117_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_117_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_117_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_117_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_121_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_121_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_123_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_123_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_126_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_126_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_129_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_129_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_131_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_131_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_133_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_133_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_135_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_135_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_136_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_136_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_136_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_136_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_139_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_139_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_139_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_139_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_144_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_144_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_146_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_146_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_14_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_14_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_151_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_151_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_152_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_152_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_156_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_156_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_159_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_159_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_162_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_162_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_165_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_165_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_170_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_170_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_170_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_170_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_173_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_173_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_173_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_173_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_177_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_177_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_177_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_177_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_191_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_191_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_191_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_191_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_194_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_194_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_194_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_194_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_197_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_197_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_197_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_197_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_200_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_200_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_200_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_200_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_203_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_203_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_203_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_203_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_206_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_206_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_206_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_206_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_209_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_209_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_209_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_209_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_212_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_212_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_212_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_212_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_215_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_215_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_215_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_215_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_218_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_218_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_218_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_218_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_221_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_221_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_221_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_221_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_224_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_224_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_224_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_224_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_235_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_235_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_235_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_235_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_23_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_23_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_249_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_249_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_249_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_249_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_255_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_255_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_255_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_255_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_258_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_258_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_258_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_258_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_25_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_25_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_269_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_269_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_269_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_269_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_283_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_283_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_283_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_283_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_289_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_289_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_289_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_289_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_28_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_28_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_292_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_292_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_292_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_292_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_295_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_295_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_295_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_295_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_298_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_298_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_298_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_298_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_301_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_301_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_301_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_301_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_30_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_30_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_315_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_315_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_315_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_315_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_318_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_318_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_318_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_318_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_321_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_321_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_321_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_321_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_324_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_324_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_324_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_324_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_327_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_327_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_327_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_327_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_330_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_330_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_330_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_330_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_333_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_333_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_333_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_333_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_336_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_336_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_336_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_336_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_339_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_339_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_339_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_339_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_33_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_33_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_342_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_342_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_342_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_342_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_345_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_345_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_345_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_345_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_348_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_348_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_348_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_348_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_351_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_351_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_351_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_351_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_354_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_354_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_354_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_354_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_357_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_357_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_357_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_357_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_371_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_371_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_371_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_371_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_374_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_374_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_374_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_374_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_377_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_377_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_377_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_377_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_380_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_380_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_380_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_380_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_383_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_383_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_383_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_383_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_386_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_386_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_386_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_386_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_389_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_389_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_389_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_389_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_392_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_392_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_392_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_392_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_395_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_395_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_395_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_395_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_398_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_398_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_398_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_398_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_401_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_401_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_401_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_401_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_404_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_404_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_404_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_404_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_407_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_407_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_407_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_407_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_410_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_410_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_410_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_410_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_413_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_413_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_413_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_413_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_416_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_416_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_416_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_416_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_419_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_419_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_419_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_419_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_41_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_41_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_445_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_445_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_445_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_445_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_459_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_459_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_459_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_459_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_473_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_473_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_473_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_473_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_487_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_487_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_487_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_487_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_501_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_501_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_501_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_501_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_515_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_515_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_515_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_515_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_537_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_537_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_537_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_537_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_559_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_559_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_559_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_559_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_573_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_573_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_573_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_573_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_591_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_591_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_591_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_591_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_605_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_605_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_605_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_605_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_619_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_619_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_619_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_619_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_61_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_61_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_633_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_633_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_633_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_633_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_647_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_647_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_647_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_647_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_65_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_65_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_65_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_65_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_661_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_661_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_661_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_661_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_675_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_675_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_675_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_675_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_68_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_68_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_68_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_68_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_693_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_693_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_693_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_693_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_707_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_707_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_707_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_707_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_721_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_721_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_721_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_721_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_727_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_727_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_727_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_727_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_72_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_72_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_741_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_741_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_741_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_741_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_74_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_74_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_763_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_763_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_763_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_763_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_769_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_769_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_769_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_769_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_76_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_76_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_78_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_78_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_791_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_791_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_791_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_791_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_81_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_81_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_83_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_83_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_84_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_84_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_84_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_84_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_87_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_87_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_87_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_87_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_90_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_90_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_90_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_90_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_93_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_93_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_93_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_93_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_97_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_97_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_98_n_0\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_98_n_1\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_98_n_2\ : STD_LOGIC;
  signal \CurrentSprite_reg[31]_i_98_n_3\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[10]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[11]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[12]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[13]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[14]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[15]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[16]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[17]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[18]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[19]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[20]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[21]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[22]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[23]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[24]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[25]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[26]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[27]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[28]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[29]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[30]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[31]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[8]\ : STD_LOGIC;
  signal \CurrentSprite_reg_n_0_[9]\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 22 downto 14 );
  signal \NextScanline[0]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[1]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[2]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[3]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[4]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[5]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[6]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[7]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[8]_i_1_n_0\ : STD_LOGIC;
  signal \NextScanline[8]_i_2_n_0\ : STD_LOGIC;
  signal \NextScanline[8]_i_3_n_0\ : STD_LOGIC;
  signal \NextScanline[8]_i_4_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[4]_i_3_n_0\ : STD_LOGIC;
  signal \SOAMAddressCounter[4]_i_4_n_0\ : STD_LOGIC;
  signal \^soamaddress[0]\ : STD_LOGIC;
  signal \^soamaddress[1]\ : STD_LOGIC;
  signal \^soamaddress[2]\ : STD_LOGIC;
  signal \^soamaddress[3]\ : STD_LOGIC;
  signal \^soamaddress[4]\ : STD_LOGIC;
  signal \SOAMBuffer[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[10][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[11][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[12][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[13][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[14][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[15][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[16][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[17][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[18][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[19][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[20][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[21][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[22][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[23][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[24][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[25][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[26][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[27][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[28][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[29][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[30][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[31][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[6][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[7][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[8][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer[9][31]_i_1_n_0\ : STD_LOGIC;
  signal \SOAMBuffer_reg[0]_30\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[10]_20\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[11]_19\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[12]_18\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[13]_17\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[14]_16\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[15]_15\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[16]_14\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[17]_13\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[18]_12\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[19]_11\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[1]_29\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[20]_10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[21]_9\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[22]_8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[23]_7\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[24]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[25]_5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[26]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[27]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[28]_2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[29]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[2]_28\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[30]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[3]_27\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[4]_26\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[5]_25\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[6]_24\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[7]_23\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[8]_22\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg[9]_21\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \SOAMBuffer_reg_n_0_[31][0]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][10]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][11]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][12]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][13]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][1]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][23]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][24]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][25]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][26]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][27]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][28]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][29]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][2]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][30]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][31]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][3]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][4]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][5]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][6]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][7]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][8]\ : STD_LOGIC;
  signal \SOAMBuffer_reg_n_0_[31][9]\ : STD_LOGIC;
  signal \^soamreadenable\ : STD_LOGIC;
  signal SOAMReadEnable_i_1_n_0 : STD_LOGIC;
  signal \ScanLineCounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \ScanLineCounter[8]_i_2_n_0\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[6]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[7]\ : STD_LOGIC;
  signal \ScanLineCounter_reg_n_0_[8]\ : STD_LOGIC;
  signal SpriteOffset : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal SpriteOffset0 : STD_LOGIC_VECTOR ( 13 downto 6 );
  signal \SpriteOffset[0]_i_1_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_1_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_2_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_3_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_4_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_5_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_6_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_7_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_8_n_0\ : STD_LOGIC;
  signal \SpriteOffset[13]_i_9_n_0\ : STD_LOGIC;
  signal SpriteROMAddr0 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \SpriteROMAddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr[15]_i_3_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr[15]_i_4_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr[5]_i_4_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \SpriteROMAddr_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal SpriteY : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal SpriteY0 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \SpriteY[0]_i_1_n_0\ : STD_LOGIC;
  signal bufferFull2_reg_srl2_n_0 : STD_LOGIC;
  signal bufferFull3 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal endLineBit : STD_LOGIC;
  signal endLineBit_i_2_n_0 : STD_LOGIC;
  signal endLineBit_i_3_n_0 : STD_LOGIC;
  signal isBufferReady : STD_LOGIC;
  signal isBufferReady_i_1_n_0 : STD_LOGIC;
  signal \pixelData1_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixelData1_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixelData1_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixelData1_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixelData1_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixelData1_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixelData1_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixelData1_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixelData4_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[7]_srl3_i_1_n_0\ : STD_LOGIC;
  signal \pixelData4_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal xCounter : STD_LOGIC;
  signal \xCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[1]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[2]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[2]_i_3_n_0\ : STD_LOGIC;
  signal \xCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[5]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[6]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[7]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \xCounter[8]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[9]_i_2_n_0\ : STD_LOGIC;
  signal \xCounter[9]_i_3_n_0\ : STD_LOGIC;
  signal \xCounter[9]_i_5_n_0\ : STD_LOGIC;
  signal \xCounter[9]_i_6_n_0\ : STD_LOGIC;
  signal \xCounter[9]_i_7_n_0\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[6]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[7]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[8]\ : STD_LOGIC;
  signal \xCounter_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_CurrentSprite_reg[31]_i_101_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_104_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_107_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_110_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_110_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_111_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_111_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_112_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_112_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_113_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_113_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_114_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_117_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_120_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_120_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_121_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_121_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_122_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_122_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_123_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_123_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_125_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_125_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_126_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_126_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_128_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_128_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_129_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_129_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_130_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_130_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_131_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_131_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_132_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_132_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_133_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_133_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_134_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_134_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_135_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_135_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_136_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_139_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_143_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_143_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_144_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_144_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_145_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_145_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_146_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_146_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_15_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_150_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_150_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_151_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_151_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_152_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_152_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_153_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_153_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_156_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_156_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_157_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_157_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_158_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_158_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_159_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_159_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_162_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_162_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_163_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_163_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_164_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_164_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_165_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_165_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_170_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_173_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_177_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_191_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_194_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_197_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_200_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_203_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_206_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_209_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_212_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_215_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_218_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_221_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_224_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_23_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_235_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_24_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_249_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_25_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_25_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_255_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_258_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_269_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_27_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_27_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_28_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_283_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_289_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_29_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_29_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_292_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_295_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_298_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_30_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_30_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_301_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_315_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_318_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_321_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_324_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_327_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_33_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_330_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_333_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_336_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_339_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_34_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_34_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_342_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_345_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_348_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_351_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_354_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_357_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_371_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_374_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_377_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_380_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_383_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_386_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_389_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_392_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_395_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_398_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_401_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_404_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_407_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_41_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_41_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_410_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_413_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_416_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_419_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_42_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_42_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_445_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_459_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_473_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_487_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_501_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_515_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_537_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_559_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_573_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_591_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_605_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_61_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_61_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_619_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_62_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_62_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_633_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_647_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_65_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_661_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_675_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_68_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_693_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_707_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_71_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_71_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_72_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_72_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_721_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_727_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_73_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_73_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_74_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_74_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_741_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_75_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_75_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_76_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_76_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_763_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_769_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_77_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_77_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_78_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_78_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_791_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_80_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_80_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_81_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_81_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_82_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_82_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_83_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_83_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_84_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_87_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_90_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_93_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_96_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CurrentSprite_reg[31]_i_96_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_97_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CurrentSprite_reg[31]_i_97_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CurrentSprite_reg[31]_i_98_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SpriteROMAddr_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SpriteROMAddr_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \NextScanline[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \NextScanline[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \NextScanline[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \NextScanline[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \NextScanline[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \NextScanline[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \NextScanline[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \NextScanline[8]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SOAMAddressCounter[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SOAMAddressCounter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SOAMAddressCounter[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SOAMAddressCounter[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SOAMAddressCounter[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SOAMAddressCounter[4]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of SOAMReadEnable_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SpriteOffset[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SpriteOffset[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SpriteY[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SpriteY[1]_i_1\ : label is "soft_lutpair9";
  attribute srl_name : string;
  attribute srl_name of bufferFull2_reg_srl2 : label is "\U0/bufferFull2_reg_srl2 ";
  attribute SOFT_HLUTNM of endLineBit_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of endLineBit_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of isBufferReady_i_1 : label is "soft_lutpair8";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \pixelData4_reg[0]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[0]_srl3\ : label is "\U0/pixelData4_reg[0]_srl3 ";
  attribute srl_bus_name of \pixelData4_reg[1]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[1]_srl3\ : label is "\U0/pixelData4_reg[1]_srl3 ";
  attribute srl_bus_name of \pixelData4_reg[2]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[2]_srl3\ : label is "\U0/pixelData4_reg[2]_srl3 ";
  attribute srl_bus_name of \pixelData4_reg[3]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[3]_srl3\ : label is "\U0/pixelData4_reg[3]_srl3 ";
  attribute srl_bus_name of \pixelData4_reg[4]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[4]_srl3\ : label is "\U0/pixelData4_reg[4]_srl3 ";
  attribute srl_bus_name of \pixelData4_reg[5]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[5]_srl3\ : label is "\U0/pixelData4_reg[5]_srl3 ";
  attribute srl_bus_name of \pixelData4_reg[6]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[6]_srl3\ : label is "\U0/pixelData4_reg[6]_srl3 ";
  attribute srl_bus_name of \pixelData4_reg[7]_srl3\ : label is "\U0/pixelData4_reg ";
  attribute srl_name of \pixelData4_reg[7]_srl3\ : label is "\U0/pixelData4_reg[7]_srl3 ";
  attribute SOFT_HLUTNM of \xCounter[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \xCounter[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \xCounter[1]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \xCounter[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \xCounter[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \xCounter[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \xCounter[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \xCounter[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \xCounter[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \xCounter[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \xCounter[8]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \xCounter[9]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \xCounter[9]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \xCounter[9]_i_6\ : label is "soft_lutpair12";
begin
  \SOAMAddress[0]\ <= \^soamaddress[0]\;
  \SOAMAddress[1]\ <= \^soamaddress[1]\;
  \SOAMAddress[2]\ <= \^soamaddress[2]\;
  \SOAMAddress[3]\ <= \^soamaddress[3]\;
  \SOAMAddress[4]\ <= \^soamaddress[4]\;
  SOAMReadEnable <= \^soamreadenable\;
\BufferData[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bufferFull,
      O => \BufferData[7]_i_1_n_0\
    );
\BufferData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[0]_srl3_n_0\,
      Q => BufferData(0),
      R => '0'
    );
\BufferData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[1]_srl3_n_0\,
      Q => BufferData(1),
      R => '0'
    );
\BufferData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[2]_srl3_n_0\,
      Q => BufferData(2),
      R => '0'
    );
\BufferData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[3]_srl3_n_0\,
      Q => BufferData(3),
      R => '0'
    );
\BufferData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[4]_srl3_n_0\,
      Q => BufferData(4),
      R => '0'
    );
\BufferData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[5]_srl3_n_0\,
      Q => BufferData(5),
      R => '0'
    );
\BufferData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[6]_srl3_n_0\,
      Q => BufferData(6),
      R => '0'
    );
\BufferData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \BufferData[7]_i_1_n_0\,
      D => \pixelData4_reg[7]_srl3_n_0\,
      Q => BufferData(7),
      R => '0'
    );
BufferEnableWrite_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \BufferData[7]_i_1_n_0\,
      Q => BufferEnableWrite,
      R => '0'
    );
\CurrentSprite[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[0]_i_2_n_0\,
      I1 => \CurrentSprite[0]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[0]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[0]_i_5_n_0\,
      O => \CurrentSprite[0]_i_1_n_0\
    );
\CurrentSprite[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(0),
      I3 => \SOAMBuffer_reg_n_0_[31][0]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(0),
      O => \CurrentSprite[0]_i_10_n_0\
    );
\CurrentSprite[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(0),
      I1 => \SOAMBuffer_reg[28]_2\(0),
      I2 => \SOAMBuffer_reg[27]_3\(0),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[0]_i_11_n_0\
    );
\CurrentSprite[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(0),
      I1 => \SOAMBuffer_reg[10]_20\(0),
      I2 => \SOAMBuffer_reg[9]_21\(0),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[0]_i_12_n_0\
    );
\CurrentSprite[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(0),
      I1 => \SOAMBuffer_reg[13]_17\(0),
      I2 => \SOAMBuffer_reg[12]_18\(0),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[0]_i_13_n_0\
    );
\CurrentSprite[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(0),
      I1 => \SOAMBuffer_reg[7]_23\(0),
      I2 => \SOAMBuffer_reg[6]_24\(0),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[0]_i_14_n_0\
    );
\CurrentSprite[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(0),
      I1 => \SOAMBuffer_reg[4]_26\(0),
      I2 => \SOAMBuffer_reg[3]_27\(0),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[0]_i_15_n_0\
    );
\CurrentSprite[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[0]_i_6_n_0\,
      I1 => \CurrentSprite[0]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[0]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[0]_i_2_n_0\
    );
\CurrentSprite[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[0]_i_9_n_0\,
      I1 => \CurrentSprite[0]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[0]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[0]_i_3_n_0\
    );
\CurrentSprite[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[0]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[0]_i_13_n_0\,
      I4 => \CurrentSprite[0]_i_14_n_0\,
      O => \CurrentSprite[0]_i_4_n_0\
    );
\CurrentSprite[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[0]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(0),
      I5 => \SOAMBuffer_reg[0]_30\(0),
      O => \CurrentSprite[0]_i_5_n_0\
    );
\CurrentSprite[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(0),
      I1 => \SOAMBuffer_reg[16]_14\(0),
      I2 => \SOAMBuffer_reg[15]_15\(0),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[0]_i_6_n_0\
    );
\CurrentSprite[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(0),
      I1 => \SOAMBuffer_reg[22]_8\(0),
      I2 => \SOAMBuffer_reg[21]_9\(0),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[0]_i_7_n_0\
    );
\CurrentSprite[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(0),
      I1 => \SOAMBuffer_reg[19]_11\(0),
      I2 => \SOAMBuffer_reg[18]_12\(0),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[0]_i_8_n_0\
    );
\CurrentSprite[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(0),
      I1 => \SOAMBuffer_reg[25]_5\(0),
      I2 => \SOAMBuffer_reg[24]_6\(0),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[0]_i_9_n_0\
    );
\CurrentSprite[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[10]_i_2_n_0\,
      I1 => \CurrentSprite[10]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[10]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[10]_i_5_n_0\,
      O => \CurrentSprite[10]_i_1_n_0\
    );
\CurrentSprite[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(10),
      I3 => \SOAMBuffer_reg_n_0_[31][10]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(10),
      O => \CurrentSprite[10]_i_10_n_0\
    );
\CurrentSprite[10]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(10),
      I1 => \SOAMBuffer_reg[28]_2\(10),
      I2 => \SOAMBuffer_reg[27]_3\(10),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[10]_i_11_n_0\
    );
\CurrentSprite[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(10),
      I1 => \SOAMBuffer_reg[10]_20\(10),
      I2 => \SOAMBuffer_reg[9]_21\(10),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[10]_i_12_n_0\
    );
\CurrentSprite[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(10),
      I1 => \SOAMBuffer_reg[13]_17\(10),
      I2 => \SOAMBuffer_reg[12]_18\(10),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[10]_i_13_n_0\
    );
\CurrentSprite[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(10),
      I1 => \SOAMBuffer_reg[7]_23\(10),
      I2 => \SOAMBuffer_reg[6]_24\(10),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[10]_i_14_n_0\
    );
\CurrentSprite[10]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(10),
      I1 => \SOAMBuffer_reg[4]_26\(10),
      I2 => \SOAMBuffer_reg[3]_27\(10),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[10]_i_15_n_0\
    );
\CurrentSprite[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[10]_i_6_n_0\,
      I1 => \CurrentSprite[10]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[10]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[10]_i_2_n_0\
    );
\CurrentSprite[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[10]_i_9_n_0\,
      I1 => \CurrentSprite[10]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[10]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[10]_i_3_n_0\
    );
\CurrentSprite[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[10]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[10]_i_13_n_0\,
      I4 => \CurrentSprite[10]_i_14_n_0\,
      O => \CurrentSprite[10]_i_4_n_0\
    );
\CurrentSprite[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[10]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(10),
      I5 => \SOAMBuffer_reg[0]_30\(10),
      O => \CurrentSprite[10]_i_5_n_0\
    );
\CurrentSprite[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(10),
      I1 => \SOAMBuffer_reg[16]_14\(10),
      I2 => \SOAMBuffer_reg[15]_15\(10),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[10]_i_6_n_0\
    );
\CurrentSprite[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(10),
      I1 => \SOAMBuffer_reg[22]_8\(10),
      I2 => \SOAMBuffer_reg[21]_9\(10),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[10]_i_7_n_0\
    );
\CurrentSprite[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(10),
      I1 => \SOAMBuffer_reg[19]_11\(10),
      I2 => \SOAMBuffer_reg[18]_12\(10),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[10]_i_8_n_0\
    );
\CurrentSprite[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(10),
      I1 => \SOAMBuffer_reg[25]_5\(10),
      I2 => \SOAMBuffer_reg[24]_6\(10),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[10]_i_9_n_0\
    );
\CurrentSprite[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[11]_i_2_n_0\,
      I1 => \CurrentSprite[11]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[11]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[11]_i_5_n_0\,
      O => \CurrentSprite[11]_i_1_n_0\
    );
\CurrentSprite[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(11),
      I3 => \SOAMBuffer_reg_n_0_[31][11]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(11),
      O => \CurrentSprite[11]_i_10_n_0\
    );
\CurrentSprite[11]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(11),
      I1 => \SOAMBuffer_reg[28]_2\(11),
      I2 => \SOAMBuffer_reg[27]_3\(11),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[11]_i_11_n_0\
    );
\CurrentSprite[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(11),
      I1 => \SOAMBuffer_reg[10]_20\(11),
      I2 => \SOAMBuffer_reg[9]_21\(11),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[11]_i_12_n_0\
    );
\CurrentSprite[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(11),
      I1 => \SOAMBuffer_reg[13]_17\(11),
      I2 => \SOAMBuffer_reg[12]_18\(11),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[11]_i_13_n_0\
    );
\CurrentSprite[11]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(11),
      I1 => \SOAMBuffer_reg[7]_23\(11),
      I2 => \SOAMBuffer_reg[6]_24\(11),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[11]_i_14_n_0\
    );
\CurrentSprite[11]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(11),
      I1 => \SOAMBuffer_reg[4]_26\(11),
      I2 => \SOAMBuffer_reg[3]_27\(11),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[11]_i_15_n_0\
    );
\CurrentSprite[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[11]_i_6_n_0\,
      I1 => \CurrentSprite[11]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[11]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[11]_i_2_n_0\
    );
\CurrentSprite[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[11]_i_9_n_0\,
      I1 => \CurrentSprite[11]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[11]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[11]_i_3_n_0\
    );
\CurrentSprite[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[11]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[11]_i_13_n_0\,
      I4 => \CurrentSprite[11]_i_14_n_0\,
      O => \CurrentSprite[11]_i_4_n_0\
    );
\CurrentSprite[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[11]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(11),
      I5 => \SOAMBuffer_reg[0]_30\(11),
      O => \CurrentSprite[11]_i_5_n_0\
    );
\CurrentSprite[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(11),
      I1 => \SOAMBuffer_reg[16]_14\(11),
      I2 => \SOAMBuffer_reg[15]_15\(11),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[11]_i_6_n_0\
    );
\CurrentSprite[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(11),
      I1 => \SOAMBuffer_reg[22]_8\(11),
      I2 => \SOAMBuffer_reg[21]_9\(11),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[11]_i_7_n_0\
    );
\CurrentSprite[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(11),
      I1 => \SOAMBuffer_reg[19]_11\(11),
      I2 => \SOAMBuffer_reg[18]_12\(11),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[11]_i_8_n_0\
    );
\CurrentSprite[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(11),
      I1 => \SOAMBuffer_reg[25]_5\(11),
      I2 => \SOAMBuffer_reg[24]_6\(11),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[11]_i_9_n_0\
    );
\CurrentSprite[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[12]_i_2_n_0\,
      I1 => \CurrentSprite[12]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[12]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[12]_i_5_n_0\,
      O => \CurrentSprite[12]_i_1_n_0\
    );
\CurrentSprite[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(12),
      I3 => \SOAMBuffer_reg_n_0_[31][12]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(12),
      O => \CurrentSprite[12]_i_10_n_0\
    );
\CurrentSprite[12]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(12),
      I1 => \SOAMBuffer_reg[28]_2\(12),
      I2 => \SOAMBuffer_reg[27]_3\(12),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[12]_i_11_n_0\
    );
\CurrentSprite[12]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(12),
      I1 => \SOAMBuffer_reg[10]_20\(12),
      I2 => \SOAMBuffer_reg[9]_21\(12),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[12]_i_12_n_0\
    );
\CurrentSprite[12]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(12),
      I1 => \SOAMBuffer_reg[13]_17\(12),
      I2 => \SOAMBuffer_reg[12]_18\(12),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[12]_i_13_n_0\
    );
\CurrentSprite[12]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(12),
      I1 => \SOAMBuffer_reg[7]_23\(12),
      I2 => \SOAMBuffer_reg[6]_24\(12),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[12]_i_14_n_0\
    );
\CurrentSprite[12]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(12),
      I1 => \SOAMBuffer_reg[4]_26\(12),
      I2 => \SOAMBuffer_reg[3]_27\(12),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[12]_i_15_n_0\
    );
\CurrentSprite[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[12]_i_6_n_0\,
      I1 => \CurrentSprite[12]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[12]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[12]_i_2_n_0\
    );
\CurrentSprite[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[12]_i_9_n_0\,
      I1 => \CurrentSprite[12]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[12]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[12]_i_3_n_0\
    );
\CurrentSprite[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[12]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[12]_i_13_n_0\,
      I4 => \CurrentSprite[12]_i_14_n_0\,
      O => \CurrentSprite[12]_i_4_n_0\
    );
\CurrentSprite[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[12]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(12),
      I5 => \SOAMBuffer_reg[0]_30\(12),
      O => \CurrentSprite[12]_i_5_n_0\
    );
\CurrentSprite[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(12),
      I1 => \SOAMBuffer_reg[16]_14\(12),
      I2 => \SOAMBuffer_reg[15]_15\(12),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[12]_i_6_n_0\
    );
\CurrentSprite[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(12),
      I1 => \SOAMBuffer_reg[22]_8\(12),
      I2 => \SOAMBuffer_reg[21]_9\(12),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[12]_i_7_n_0\
    );
\CurrentSprite[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(12),
      I1 => \SOAMBuffer_reg[19]_11\(12),
      I2 => \SOAMBuffer_reg[18]_12\(12),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[12]_i_8_n_0\
    );
\CurrentSprite[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(12),
      I1 => \SOAMBuffer_reg[25]_5\(12),
      I2 => \SOAMBuffer_reg[24]_6\(12),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[12]_i_9_n_0\
    );
\CurrentSprite[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[13]_i_2_n_0\,
      I1 => \CurrentSprite[13]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[13]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[13]_i_5_n_0\,
      O => \CurrentSprite[13]_i_1_n_0\
    );
\CurrentSprite[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(13),
      I3 => \SOAMBuffer_reg_n_0_[31][13]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(13),
      O => \CurrentSprite[13]_i_10_n_0\
    );
\CurrentSprite[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(13),
      I1 => \SOAMBuffer_reg[28]_2\(13),
      I2 => \SOAMBuffer_reg[27]_3\(13),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[13]_i_11_n_0\
    );
\CurrentSprite[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(13),
      I1 => \SOAMBuffer_reg[10]_20\(13),
      I2 => \SOAMBuffer_reg[9]_21\(13),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[13]_i_12_n_0\
    );
\CurrentSprite[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(13),
      I1 => \SOAMBuffer_reg[13]_17\(13),
      I2 => \SOAMBuffer_reg[12]_18\(13),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[13]_i_13_n_0\
    );
\CurrentSprite[13]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(13),
      I1 => \SOAMBuffer_reg[7]_23\(13),
      I2 => \SOAMBuffer_reg[6]_24\(13),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[13]_i_14_n_0\
    );
\CurrentSprite[13]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(13),
      I1 => \SOAMBuffer_reg[4]_26\(13),
      I2 => \SOAMBuffer_reg[3]_27\(13),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[13]_i_15_n_0\
    );
\CurrentSprite[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[13]_i_6_n_0\,
      I1 => \CurrentSprite[13]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[13]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[13]_i_2_n_0\
    );
\CurrentSprite[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[13]_i_9_n_0\,
      I1 => \CurrentSprite[13]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[13]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[13]_i_3_n_0\
    );
\CurrentSprite[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[13]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[13]_i_13_n_0\,
      I4 => \CurrentSprite[13]_i_14_n_0\,
      O => \CurrentSprite[13]_i_4_n_0\
    );
\CurrentSprite[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[13]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(13),
      I5 => \SOAMBuffer_reg[0]_30\(13),
      O => \CurrentSprite[13]_i_5_n_0\
    );
\CurrentSprite[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(13),
      I1 => \SOAMBuffer_reg[16]_14\(13),
      I2 => \SOAMBuffer_reg[15]_15\(13),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[13]_i_6_n_0\
    );
\CurrentSprite[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(13),
      I1 => \SOAMBuffer_reg[22]_8\(13),
      I2 => \SOAMBuffer_reg[21]_9\(13),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[13]_i_7_n_0\
    );
\CurrentSprite[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(13),
      I1 => \SOAMBuffer_reg[19]_11\(13),
      I2 => \SOAMBuffer_reg[18]_12\(13),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[13]_i_8_n_0\
    );
\CurrentSprite[13]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(13),
      I1 => \SOAMBuffer_reg[25]_5\(13),
      I2 => \SOAMBuffer_reg[24]_6\(13),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[13]_i_9_n_0\
    );
\CurrentSprite[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[14]_i_2_n_0\,
      I1 => \CurrentSprite[14]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[14]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[14]_i_5_n_0\,
      O => \CurrentSprite[14]_i_1_n_0\
    );
\CurrentSprite[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(14),
      I3 => L(14),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(14),
      O => \CurrentSprite[14]_i_10_n_0\
    );
\CurrentSprite[14]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(14),
      I1 => \SOAMBuffer_reg[28]_2\(14),
      I2 => \SOAMBuffer_reg[27]_3\(14),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[14]_i_11_n_0\
    );
\CurrentSprite[14]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(14),
      I1 => \SOAMBuffer_reg[10]_20\(14),
      I2 => \SOAMBuffer_reg[9]_21\(14),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[14]_i_12_n_0\
    );
\CurrentSprite[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(14),
      I1 => \SOAMBuffer_reg[13]_17\(14),
      I2 => \SOAMBuffer_reg[12]_18\(14),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[14]_i_13_n_0\
    );
\CurrentSprite[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(14),
      I1 => \SOAMBuffer_reg[7]_23\(14),
      I2 => \SOAMBuffer_reg[6]_24\(14),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[14]_i_14_n_0\
    );
\CurrentSprite[14]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(14),
      I1 => \SOAMBuffer_reg[4]_26\(14),
      I2 => \SOAMBuffer_reg[3]_27\(14),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[14]_i_15_n_0\
    );
\CurrentSprite[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[14]_i_6_n_0\,
      I1 => \CurrentSprite[14]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[14]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[14]_i_2_n_0\
    );
\CurrentSprite[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[14]_i_9_n_0\,
      I1 => \CurrentSprite[14]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[14]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[14]_i_3_n_0\
    );
\CurrentSprite[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[14]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[14]_i_13_n_0\,
      I4 => \CurrentSprite[14]_i_14_n_0\,
      O => \CurrentSprite[14]_i_4_n_0\
    );
\CurrentSprite[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[14]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(14),
      I5 => \SOAMBuffer_reg[0]_30\(14),
      O => \CurrentSprite[14]_i_5_n_0\
    );
\CurrentSprite[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(14),
      I1 => \SOAMBuffer_reg[16]_14\(14),
      I2 => \SOAMBuffer_reg[15]_15\(14),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[14]_i_6_n_0\
    );
\CurrentSprite[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(14),
      I1 => \SOAMBuffer_reg[22]_8\(14),
      I2 => \SOAMBuffer_reg[21]_9\(14),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[14]_i_7_n_0\
    );
\CurrentSprite[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(14),
      I1 => \SOAMBuffer_reg[19]_11\(14),
      I2 => \SOAMBuffer_reg[18]_12\(14),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[14]_i_8_n_0\
    );
\CurrentSprite[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(14),
      I1 => \SOAMBuffer_reg[25]_5\(14),
      I2 => \SOAMBuffer_reg[24]_6\(14),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[14]_i_9_n_0\
    );
\CurrentSprite[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[15]_i_2_n_0\,
      I1 => \CurrentSprite[15]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[15]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[15]_i_5_n_0\,
      O => \CurrentSprite[15]_i_1_n_0\
    );
\CurrentSprite[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(15),
      I3 => L(15),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(15),
      O => \CurrentSprite[15]_i_10_n_0\
    );
\CurrentSprite[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(15),
      I1 => \SOAMBuffer_reg[28]_2\(15),
      I2 => \SOAMBuffer_reg[27]_3\(15),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[15]_i_11_n_0\
    );
\CurrentSprite[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(15),
      I1 => \SOAMBuffer_reg[10]_20\(15),
      I2 => \SOAMBuffer_reg[9]_21\(15),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[15]_i_12_n_0\
    );
\CurrentSprite[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(15),
      I1 => \SOAMBuffer_reg[13]_17\(15),
      I2 => \SOAMBuffer_reg[12]_18\(15),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[15]_i_13_n_0\
    );
\CurrentSprite[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(15),
      I1 => \SOAMBuffer_reg[7]_23\(15),
      I2 => \SOAMBuffer_reg[6]_24\(15),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[15]_i_14_n_0\
    );
\CurrentSprite[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(15),
      I1 => \SOAMBuffer_reg[4]_26\(15),
      I2 => \SOAMBuffer_reg[3]_27\(15),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[15]_i_15_n_0\
    );
\CurrentSprite[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[15]_i_6_n_0\,
      I1 => \CurrentSprite[15]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[15]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[15]_i_2_n_0\
    );
\CurrentSprite[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[15]_i_9_n_0\,
      I1 => \CurrentSprite[15]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[15]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[15]_i_3_n_0\
    );
\CurrentSprite[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[15]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[15]_i_13_n_0\,
      I4 => \CurrentSprite[15]_i_14_n_0\,
      O => \CurrentSprite[15]_i_4_n_0\
    );
\CurrentSprite[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[15]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(15),
      I5 => \SOAMBuffer_reg[0]_30\(15),
      O => \CurrentSprite[15]_i_5_n_0\
    );
\CurrentSprite[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(15),
      I1 => \SOAMBuffer_reg[16]_14\(15),
      I2 => \SOAMBuffer_reg[15]_15\(15),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[15]_i_6_n_0\
    );
\CurrentSprite[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(15),
      I1 => \SOAMBuffer_reg[22]_8\(15),
      I2 => \SOAMBuffer_reg[21]_9\(15),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[15]_i_7_n_0\
    );
\CurrentSprite[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(15),
      I1 => \SOAMBuffer_reg[19]_11\(15),
      I2 => \SOAMBuffer_reg[18]_12\(15),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[15]_i_8_n_0\
    );
\CurrentSprite[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(15),
      I1 => \SOAMBuffer_reg[25]_5\(15),
      I2 => \SOAMBuffer_reg[24]_6\(15),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[15]_i_9_n_0\
    );
\CurrentSprite[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[16]_i_2_n_0\,
      I1 => \CurrentSprite[16]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[16]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[16]_i_5_n_0\,
      O => \CurrentSprite[16]_i_1_n_0\
    );
\CurrentSprite[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(16),
      I3 => L(16),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(16),
      O => \CurrentSprite[16]_i_10_n_0\
    );
\CurrentSprite[16]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(16),
      I1 => \SOAMBuffer_reg[28]_2\(16),
      I2 => \SOAMBuffer_reg[27]_3\(16),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[16]_i_11_n_0\
    );
\CurrentSprite[16]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(16),
      I1 => \SOAMBuffer_reg[10]_20\(16),
      I2 => \SOAMBuffer_reg[9]_21\(16),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[16]_i_12_n_0\
    );
\CurrentSprite[16]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(16),
      I1 => \SOAMBuffer_reg[13]_17\(16),
      I2 => \SOAMBuffer_reg[12]_18\(16),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[16]_i_13_n_0\
    );
\CurrentSprite[16]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(16),
      I1 => \SOAMBuffer_reg[7]_23\(16),
      I2 => \SOAMBuffer_reg[6]_24\(16),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[16]_i_14_n_0\
    );
\CurrentSprite[16]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(16),
      I1 => \SOAMBuffer_reg[4]_26\(16),
      I2 => \SOAMBuffer_reg[3]_27\(16),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[16]_i_15_n_0\
    );
\CurrentSprite[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[16]_i_6_n_0\,
      I1 => \CurrentSprite[16]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[16]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[16]_i_2_n_0\
    );
\CurrentSprite[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[16]_i_9_n_0\,
      I1 => \CurrentSprite[16]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[16]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[16]_i_3_n_0\
    );
\CurrentSprite[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[16]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[16]_i_13_n_0\,
      I4 => \CurrentSprite[16]_i_14_n_0\,
      O => \CurrentSprite[16]_i_4_n_0\
    );
\CurrentSprite[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[16]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(16),
      I5 => \SOAMBuffer_reg[0]_30\(16),
      O => \CurrentSprite[16]_i_5_n_0\
    );
\CurrentSprite[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(16),
      I1 => \SOAMBuffer_reg[16]_14\(16),
      I2 => \SOAMBuffer_reg[15]_15\(16),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[16]_i_6_n_0\
    );
\CurrentSprite[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(16),
      I1 => \SOAMBuffer_reg[22]_8\(16),
      I2 => \SOAMBuffer_reg[21]_9\(16),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[16]_i_7_n_0\
    );
\CurrentSprite[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(16),
      I1 => \SOAMBuffer_reg[19]_11\(16),
      I2 => \SOAMBuffer_reg[18]_12\(16),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[16]_i_8_n_0\
    );
\CurrentSprite[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(16),
      I1 => \SOAMBuffer_reg[25]_5\(16),
      I2 => \SOAMBuffer_reg[24]_6\(16),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[16]_i_9_n_0\
    );
\CurrentSprite[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[17]_i_2_n_0\,
      I1 => \CurrentSprite[17]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[17]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[17]_i_5_n_0\,
      O => \CurrentSprite[17]_i_1_n_0\
    );
\CurrentSprite[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(17),
      I3 => L(17),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(17),
      O => \CurrentSprite[17]_i_10_n_0\
    );
\CurrentSprite[17]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(17),
      I1 => \SOAMBuffer_reg[28]_2\(17),
      I2 => \SOAMBuffer_reg[27]_3\(17),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[17]_i_11_n_0\
    );
\CurrentSprite[17]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(17),
      I1 => \SOAMBuffer_reg[10]_20\(17),
      I2 => \SOAMBuffer_reg[9]_21\(17),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[17]_i_12_n_0\
    );
\CurrentSprite[17]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(17),
      I1 => \SOAMBuffer_reg[13]_17\(17),
      I2 => \SOAMBuffer_reg[12]_18\(17),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[17]_i_13_n_0\
    );
\CurrentSprite[17]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(17),
      I1 => \SOAMBuffer_reg[7]_23\(17),
      I2 => \SOAMBuffer_reg[6]_24\(17),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[17]_i_14_n_0\
    );
\CurrentSprite[17]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(17),
      I1 => \SOAMBuffer_reg[4]_26\(17),
      I2 => \SOAMBuffer_reg[3]_27\(17),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[17]_i_15_n_0\
    );
\CurrentSprite[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[17]_i_6_n_0\,
      I1 => \CurrentSprite[17]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[17]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[17]_i_2_n_0\
    );
\CurrentSprite[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[17]_i_9_n_0\,
      I1 => \CurrentSprite[17]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[17]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[17]_i_3_n_0\
    );
\CurrentSprite[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[17]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[17]_i_13_n_0\,
      I4 => \CurrentSprite[17]_i_14_n_0\,
      O => \CurrentSprite[17]_i_4_n_0\
    );
\CurrentSprite[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[17]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(17),
      I5 => \SOAMBuffer_reg[0]_30\(17),
      O => \CurrentSprite[17]_i_5_n_0\
    );
\CurrentSprite[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(17),
      I1 => \SOAMBuffer_reg[16]_14\(17),
      I2 => \SOAMBuffer_reg[15]_15\(17),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[17]_i_6_n_0\
    );
\CurrentSprite[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(17),
      I1 => \SOAMBuffer_reg[22]_8\(17),
      I2 => \SOAMBuffer_reg[21]_9\(17),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[17]_i_7_n_0\
    );
\CurrentSprite[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(17),
      I1 => \SOAMBuffer_reg[19]_11\(17),
      I2 => \SOAMBuffer_reg[18]_12\(17),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[17]_i_8_n_0\
    );
\CurrentSprite[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(17),
      I1 => \SOAMBuffer_reg[25]_5\(17),
      I2 => \SOAMBuffer_reg[24]_6\(17),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[17]_i_9_n_0\
    );
\CurrentSprite[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[18]_i_2_n_0\,
      I1 => \CurrentSprite[18]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[18]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[18]_i_5_n_0\,
      O => \CurrentSprite[18]_i_1_n_0\
    );
\CurrentSprite[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(18),
      I3 => L(18),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(18),
      O => \CurrentSprite[18]_i_10_n_0\
    );
\CurrentSprite[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(18),
      I1 => \SOAMBuffer_reg[28]_2\(18),
      I2 => \SOAMBuffer_reg[27]_3\(18),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[18]_i_11_n_0\
    );
\CurrentSprite[18]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(18),
      I1 => \SOAMBuffer_reg[10]_20\(18),
      I2 => \SOAMBuffer_reg[9]_21\(18),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[18]_i_12_n_0\
    );
\CurrentSprite[18]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(18),
      I1 => \SOAMBuffer_reg[13]_17\(18),
      I2 => \SOAMBuffer_reg[12]_18\(18),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[18]_i_13_n_0\
    );
\CurrentSprite[18]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(18),
      I1 => \SOAMBuffer_reg[7]_23\(18),
      I2 => \SOAMBuffer_reg[6]_24\(18),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[18]_i_14_n_0\
    );
\CurrentSprite[18]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(18),
      I1 => \SOAMBuffer_reg[4]_26\(18),
      I2 => \SOAMBuffer_reg[3]_27\(18),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[18]_i_15_n_0\
    );
\CurrentSprite[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[18]_i_6_n_0\,
      I1 => \CurrentSprite[18]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[18]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[18]_i_2_n_0\
    );
\CurrentSprite[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[18]_i_9_n_0\,
      I1 => \CurrentSprite[18]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[18]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[18]_i_3_n_0\
    );
\CurrentSprite[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[18]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[18]_i_13_n_0\,
      I4 => \CurrentSprite[18]_i_14_n_0\,
      O => \CurrentSprite[18]_i_4_n_0\
    );
\CurrentSprite[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[18]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(18),
      I5 => \SOAMBuffer_reg[0]_30\(18),
      O => \CurrentSprite[18]_i_5_n_0\
    );
\CurrentSprite[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(18),
      I1 => \SOAMBuffer_reg[16]_14\(18),
      I2 => \SOAMBuffer_reg[15]_15\(18),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[18]_i_6_n_0\
    );
\CurrentSprite[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(18),
      I1 => \SOAMBuffer_reg[22]_8\(18),
      I2 => \SOAMBuffer_reg[21]_9\(18),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[18]_i_7_n_0\
    );
\CurrentSprite[18]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(18),
      I1 => \SOAMBuffer_reg[19]_11\(18),
      I2 => \SOAMBuffer_reg[18]_12\(18),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[18]_i_8_n_0\
    );
\CurrentSprite[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(18),
      I1 => \SOAMBuffer_reg[25]_5\(18),
      I2 => \SOAMBuffer_reg[24]_6\(18),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[18]_i_9_n_0\
    );
\CurrentSprite[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[19]_i_2_n_0\,
      I1 => \CurrentSprite[19]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[19]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[19]_i_5_n_0\,
      O => \CurrentSprite[19]_i_1_n_0\
    );
\CurrentSprite[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(19),
      I3 => L(19),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(19),
      O => \CurrentSprite[19]_i_10_n_0\
    );
\CurrentSprite[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(19),
      I1 => \SOAMBuffer_reg[28]_2\(19),
      I2 => \SOAMBuffer_reg[27]_3\(19),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[19]_i_11_n_0\
    );
\CurrentSprite[19]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(19),
      I1 => \SOAMBuffer_reg[10]_20\(19),
      I2 => \SOAMBuffer_reg[9]_21\(19),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[19]_i_12_n_0\
    );
\CurrentSprite[19]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(19),
      I1 => \SOAMBuffer_reg[13]_17\(19),
      I2 => \SOAMBuffer_reg[12]_18\(19),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[19]_i_13_n_0\
    );
\CurrentSprite[19]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(19),
      I1 => \SOAMBuffer_reg[7]_23\(19),
      I2 => \SOAMBuffer_reg[6]_24\(19),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[19]_i_14_n_0\
    );
\CurrentSprite[19]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(19),
      I1 => \SOAMBuffer_reg[4]_26\(19),
      I2 => \SOAMBuffer_reg[3]_27\(19),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[19]_i_15_n_0\
    );
\CurrentSprite[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[19]_i_6_n_0\,
      I1 => \CurrentSprite[19]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[19]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[19]_i_2_n_0\
    );
\CurrentSprite[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[19]_i_9_n_0\,
      I1 => \CurrentSprite[19]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[19]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[19]_i_3_n_0\
    );
\CurrentSprite[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[19]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[19]_i_13_n_0\,
      I4 => \CurrentSprite[19]_i_14_n_0\,
      O => \CurrentSprite[19]_i_4_n_0\
    );
\CurrentSprite[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[19]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(19),
      I5 => \SOAMBuffer_reg[0]_30\(19),
      O => \CurrentSprite[19]_i_5_n_0\
    );
\CurrentSprite[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(19),
      I1 => \SOAMBuffer_reg[16]_14\(19),
      I2 => \SOAMBuffer_reg[15]_15\(19),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[19]_i_6_n_0\
    );
\CurrentSprite[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(19),
      I1 => \SOAMBuffer_reg[22]_8\(19),
      I2 => \SOAMBuffer_reg[21]_9\(19),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[19]_i_7_n_0\
    );
\CurrentSprite[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(19),
      I1 => \SOAMBuffer_reg[19]_11\(19),
      I2 => \SOAMBuffer_reg[18]_12\(19),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[19]_i_8_n_0\
    );
\CurrentSprite[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(19),
      I1 => \SOAMBuffer_reg[25]_5\(19),
      I2 => \SOAMBuffer_reg[24]_6\(19),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[19]_i_9_n_0\
    );
\CurrentSprite[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[1]_i_2_n_0\,
      I1 => \CurrentSprite[1]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[1]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[1]_i_5_n_0\,
      O => \CurrentSprite[1]_i_1_n_0\
    );
\CurrentSprite[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(1),
      I3 => \SOAMBuffer_reg_n_0_[31][1]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(1),
      O => \CurrentSprite[1]_i_10_n_0\
    );
\CurrentSprite[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(1),
      I1 => \SOAMBuffer_reg[28]_2\(1),
      I2 => \SOAMBuffer_reg[27]_3\(1),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[1]_i_11_n_0\
    );
\CurrentSprite[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(1),
      I1 => \SOAMBuffer_reg[10]_20\(1),
      I2 => \SOAMBuffer_reg[9]_21\(1),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[1]_i_12_n_0\
    );
\CurrentSprite[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(1),
      I1 => \SOAMBuffer_reg[13]_17\(1),
      I2 => \SOAMBuffer_reg[12]_18\(1),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[1]_i_13_n_0\
    );
\CurrentSprite[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(1),
      I1 => \SOAMBuffer_reg[7]_23\(1),
      I2 => \SOAMBuffer_reg[6]_24\(1),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[1]_i_14_n_0\
    );
\CurrentSprite[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(1),
      I1 => \SOAMBuffer_reg[4]_26\(1),
      I2 => \SOAMBuffer_reg[3]_27\(1),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[1]_i_15_n_0\
    );
\CurrentSprite[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[1]_i_6_n_0\,
      I1 => \CurrentSprite[1]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[1]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[1]_i_2_n_0\
    );
\CurrentSprite[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[1]_i_9_n_0\,
      I1 => \CurrentSprite[1]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[1]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[1]_i_3_n_0\
    );
\CurrentSprite[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[1]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[1]_i_13_n_0\,
      I4 => \CurrentSprite[1]_i_14_n_0\,
      O => \CurrentSprite[1]_i_4_n_0\
    );
\CurrentSprite[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[1]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(1),
      I5 => \SOAMBuffer_reg[0]_30\(1),
      O => \CurrentSprite[1]_i_5_n_0\
    );
\CurrentSprite[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(1),
      I1 => \SOAMBuffer_reg[16]_14\(1),
      I2 => \SOAMBuffer_reg[15]_15\(1),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[1]_i_6_n_0\
    );
\CurrentSprite[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(1),
      I1 => \SOAMBuffer_reg[22]_8\(1),
      I2 => \SOAMBuffer_reg[21]_9\(1),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[1]_i_7_n_0\
    );
\CurrentSprite[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(1),
      I1 => \SOAMBuffer_reg[19]_11\(1),
      I2 => \SOAMBuffer_reg[18]_12\(1),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[1]_i_8_n_0\
    );
\CurrentSprite[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(1),
      I1 => \SOAMBuffer_reg[25]_5\(1),
      I2 => \SOAMBuffer_reg[24]_6\(1),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[1]_i_9_n_0\
    );
\CurrentSprite[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[20]_i_2_n_0\,
      I1 => \CurrentSprite[20]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[20]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[20]_i_5_n_0\,
      O => \CurrentSprite[20]_i_1_n_0\
    );
\CurrentSprite[20]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(20),
      I3 => L(20),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(20),
      O => \CurrentSprite[20]_i_10_n_0\
    );
\CurrentSprite[20]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(20),
      I1 => \SOAMBuffer_reg[28]_2\(20),
      I2 => \SOAMBuffer_reg[27]_3\(20),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[20]_i_11_n_0\
    );
\CurrentSprite[20]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(20),
      I1 => \SOAMBuffer_reg[10]_20\(20),
      I2 => \SOAMBuffer_reg[9]_21\(20),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[20]_i_12_n_0\
    );
\CurrentSprite[20]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(20),
      I1 => \SOAMBuffer_reg[13]_17\(20),
      I2 => \SOAMBuffer_reg[12]_18\(20),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[20]_i_13_n_0\
    );
\CurrentSprite[20]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(20),
      I1 => \SOAMBuffer_reg[7]_23\(20),
      I2 => \SOAMBuffer_reg[6]_24\(20),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[20]_i_14_n_0\
    );
\CurrentSprite[20]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(20),
      I1 => \SOAMBuffer_reg[4]_26\(20),
      I2 => \SOAMBuffer_reg[3]_27\(20),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[20]_i_15_n_0\
    );
\CurrentSprite[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[20]_i_6_n_0\,
      I1 => \CurrentSprite[20]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[20]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[20]_i_2_n_0\
    );
\CurrentSprite[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[20]_i_9_n_0\,
      I1 => \CurrentSprite[20]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[20]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[20]_i_3_n_0\
    );
\CurrentSprite[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[20]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[20]_i_13_n_0\,
      I4 => \CurrentSprite[20]_i_14_n_0\,
      O => \CurrentSprite[20]_i_4_n_0\
    );
\CurrentSprite[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[20]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(20),
      I5 => \SOAMBuffer_reg[0]_30\(20),
      O => \CurrentSprite[20]_i_5_n_0\
    );
\CurrentSprite[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(20),
      I1 => \SOAMBuffer_reg[16]_14\(20),
      I2 => \SOAMBuffer_reg[15]_15\(20),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[20]_i_6_n_0\
    );
\CurrentSprite[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(20),
      I1 => \SOAMBuffer_reg[22]_8\(20),
      I2 => \SOAMBuffer_reg[21]_9\(20),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[20]_i_7_n_0\
    );
\CurrentSprite[20]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(20),
      I1 => \SOAMBuffer_reg[19]_11\(20),
      I2 => \SOAMBuffer_reg[18]_12\(20),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[20]_i_8_n_0\
    );
\CurrentSprite[20]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(20),
      I1 => \SOAMBuffer_reg[25]_5\(20),
      I2 => \SOAMBuffer_reg[24]_6\(20),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[20]_i_9_n_0\
    );
\CurrentSprite[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[21]_i_2_n_0\,
      I1 => \CurrentSprite[21]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[21]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[21]_i_5_n_0\,
      O => \CurrentSprite[21]_i_1_n_0\
    );
\CurrentSprite[21]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(21),
      I3 => L(21),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(21),
      O => \CurrentSprite[21]_i_10_n_0\
    );
\CurrentSprite[21]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(21),
      I1 => \SOAMBuffer_reg[28]_2\(21),
      I2 => \SOAMBuffer_reg[27]_3\(21),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[21]_i_11_n_0\
    );
\CurrentSprite[21]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(21),
      I1 => \SOAMBuffer_reg[10]_20\(21),
      I2 => \SOAMBuffer_reg[9]_21\(21),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[21]_i_12_n_0\
    );
\CurrentSprite[21]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(21),
      I1 => \SOAMBuffer_reg[13]_17\(21),
      I2 => \SOAMBuffer_reg[12]_18\(21),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[21]_i_13_n_0\
    );
\CurrentSprite[21]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(21),
      I1 => \SOAMBuffer_reg[7]_23\(21),
      I2 => \SOAMBuffer_reg[6]_24\(21),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[21]_i_14_n_0\
    );
\CurrentSprite[21]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(21),
      I1 => \SOAMBuffer_reg[4]_26\(21),
      I2 => \SOAMBuffer_reg[3]_27\(21),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[21]_i_15_n_0\
    );
\CurrentSprite[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[21]_i_6_n_0\,
      I1 => \CurrentSprite[21]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[21]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[21]_i_2_n_0\
    );
\CurrentSprite[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[21]_i_9_n_0\,
      I1 => \CurrentSprite[21]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[21]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[21]_i_3_n_0\
    );
\CurrentSprite[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[21]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[21]_i_13_n_0\,
      I4 => \CurrentSprite[21]_i_14_n_0\,
      O => \CurrentSprite[21]_i_4_n_0\
    );
\CurrentSprite[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[21]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(21),
      I5 => \SOAMBuffer_reg[0]_30\(21),
      O => \CurrentSprite[21]_i_5_n_0\
    );
\CurrentSprite[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(21),
      I1 => \SOAMBuffer_reg[16]_14\(21),
      I2 => \SOAMBuffer_reg[15]_15\(21),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[21]_i_6_n_0\
    );
\CurrentSprite[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(21),
      I1 => \SOAMBuffer_reg[22]_8\(21),
      I2 => \SOAMBuffer_reg[21]_9\(21),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[21]_i_7_n_0\
    );
\CurrentSprite[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(21),
      I1 => \SOAMBuffer_reg[19]_11\(21),
      I2 => \SOAMBuffer_reg[18]_12\(21),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[21]_i_8_n_0\
    );
\CurrentSprite[21]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(21),
      I1 => \SOAMBuffer_reg[25]_5\(21),
      I2 => \SOAMBuffer_reg[24]_6\(21),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[21]_i_9_n_0\
    );
\CurrentSprite[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[22]_i_2_n_0\,
      I1 => \CurrentSprite[22]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[22]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[22]_i_5_n_0\,
      O => \CurrentSprite[22]_i_1_n_0\
    );
\CurrentSprite[22]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(22),
      I3 => L(22),
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(22),
      O => \CurrentSprite[22]_i_10_n_0\
    );
\CurrentSprite[22]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(22),
      I1 => \SOAMBuffer_reg[28]_2\(22),
      I2 => \SOAMBuffer_reg[27]_3\(22),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[22]_i_11_n_0\
    );
\CurrentSprite[22]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(22),
      I1 => \SOAMBuffer_reg[10]_20\(22),
      I2 => \SOAMBuffer_reg[9]_21\(22),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[22]_i_12_n_0\
    );
\CurrentSprite[22]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(22),
      I1 => \SOAMBuffer_reg[13]_17\(22),
      I2 => \SOAMBuffer_reg[12]_18\(22),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[22]_i_13_n_0\
    );
\CurrentSprite[22]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(22),
      I1 => \SOAMBuffer_reg[7]_23\(22),
      I2 => \SOAMBuffer_reg[6]_24\(22),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[22]_i_14_n_0\
    );
\CurrentSprite[22]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(22),
      I1 => \SOAMBuffer_reg[4]_26\(22),
      I2 => \SOAMBuffer_reg[3]_27\(22),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[22]_i_15_n_0\
    );
\CurrentSprite[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[22]_i_6_n_0\,
      I1 => \CurrentSprite[22]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[22]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[22]_i_2_n_0\
    );
\CurrentSprite[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[22]_i_9_n_0\,
      I1 => \CurrentSprite[22]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[22]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[22]_i_3_n_0\
    );
\CurrentSprite[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[22]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[22]_i_13_n_0\,
      I4 => \CurrentSprite[22]_i_14_n_0\,
      O => \CurrentSprite[22]_i_4_n_0\
    );
\CurrentSprite[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[22]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(22),
      I5 => \SOAMBuffer_reg[0]_30\(22),
      O => \CurrentSprite[22]_i_5_n_0\
    );
\CurrentSprite[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(22),
      I1 => \SOAMBuffer_reg[16]_14\(22),
      I2 => \SOAMBuffer_reg[15]_15\(22),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[22]_i_6_n_0\
    );
\CurrentSprite[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(22),
      I1 => \SOAMBuffer_reg[22]_8\(22),
      I2 => \SOAMBuffer_reg[21]_9\(22),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[22]_i_7_n_0\
    );
\CurrentSprite[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(22),
      I1 => \SOAMBuffer_reg[19]_11\(22),
      I2 => \SOAMBuffer_reg[18]_12\(22),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[22]_i_8_n_0\
    );
\CurrentSprite[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(22),
      I1 => \SOAMBuffer_reg[25]_5\(22),
      I2 => \SOAMBuffer_reg[24]_6\(22),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[22]_i_9_n_0\
    );
\CurrentSprite[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[23]_i_2_n_0\,
      I1 => \CurrentSprite[23]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[23]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[23]_i_5_n_0\,
      O => \CurrentSprite[23]_i_1_n_0\
    );
\CurrentSprite[23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(23),
      I3 => \SOAMBuffer_reg_n_0_[31][23]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(23),
      O => \CurrentSprite[23]_i_10_n_0\
    );
\CurrentSprite[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(23),
      I1 => \SOAMBuffer_reg[28]_2\(23),
      I2 => \SOAMBuffer_reg[27]_3\(23),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[23]_i_11_n_0\
    );
\CurrentSprite[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(23),
      I1 => \SOAMBuffer_reg[10]_20\(23),
      I2 => \SOAMBuffer_reg[9]_21\(23),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[23]_i_12_n_0\
    );
\CurrentSprite[23]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(23),
      I1 => \SOAMBuffer_reg[13]_17\(23),
      I2 => \SOAMBuffer_reg[12]_18\(23),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[23]_i_13_n_0\
    );
\CurrentSprite[23]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(23),
      I1 => \SOAMBuffer_reg[7]_23\(23),
      I2 => \SOAMBuffer_reg[6]_24\(23),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[23]_i_14_n_0\
    );
\CurrentSprite[23]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(23),
      I1 => \SOAMBuffer_reg[4]_26\(23),
      I2 => \SOAMBuffer_reg[3]_27\(23),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[23]_i_15_n_0\
    );
\CurrentSprite[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[23]_i_6_n_0\,
      I1 => \CurrentSprite[23]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[23]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[23]_i_2_n_0\
    );
\CurrentSprite[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[23]_i_9_n_0\,
      I1 => \CurrentSprite[23]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[23]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[23]_i_3_n_0\
    );
\CurrentSprite[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[23]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[23]_i_13_n_0\,
      I4 => \CurrentSprite[23]_i_14_n_0\,
      O => \CurrentSprite[23]_i_4_n_0\
    );
\CurrentSprite[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[23]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(23),
      I5 => \SOAMBuffer_reg[0]_30\(23),
      O => \CurrentSprite[23]_i_5_n_0\
    );
\CurrentSprite[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(23),
      I1 => \SOAMBuffer_reg[16]_14\(23),
      I2 => \SOAMBuffer_reg[15]_15\(23),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[23]_i_6_n_0\
    );
\CurrentSprite[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(23),
      I1 => \SOAMBuffer_reg[22]_8\(23),
      I2 => \SOAMBuffer_reg[21]_9\(23),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[23]_i_7_n_0\
    );
\CurrentSprite[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(23),
      I1 => \SOAMBuffer_reg[19]_11\(23),
      I2 => \SOAMBuffer_reg[18]_12\(23),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[23]_i_8_n_0\
    );
\CurrentSprite[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(23),
      I1 => \SOAMBuffer_reg[25]_5\(23),
      I2 => \SOAMBuffer_reg[24]_6\(23),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[23]_i_9_n_0\
    );
\CurrentSprite[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[24]_i_2_n_0\,
      I1 => \CurrentSprite[24]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[24]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[24]_i_5_n_0\,
      O => \CurrentSprite[24]_i_1_n_0\
    );
\CurrentSprite[24]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(24),
      I3 => \SOAMBuffer_reg_n_0_[31][24]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(24),
      O => \CurrentSprite[24]_i_10_n_0\
    );
\CurrentSprite[24]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(24),
      I1 => \SOAMBuffer_reg[28]_2\(24),
      I2 => \SOAMBuffer_reg[27]_3\(24),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[24]_i_11_n_0\
    );
\CurrentSprite[24]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(24),
      I1 => \SOAMBuffer_reg[10]_20\(24),
      I2 => \SOAMBuffer_reg[9]_21\(24),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[24]_i_12_n_0\
    );
\CurrentSprite[24]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(24),
      I1 => \SOAMBuffer_reg[13]_17\(24),
      I2 => \SOAMBuffer_reg[12]_18\(24),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[24]_i_13_n_0\
    );
\CurrentSprite[24]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(24),
      I1 => \SOAMBuffer_reg[7]_23\(24),
      I2 => \SOAMBuffer_reg[6]_24\(24),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[24]_i_14_n_0\
    );
\CurrentSprite[24]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(24),
      I1 => \SOAMBuffer_reg[4]_26\(24),
      I2 => \SOAMBuffer_reg[3]_27\(24),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[24]_i_15_n_0\
    );
\CurrentSprite[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[24]_i_6_n_0\,
      I1 => \CurrentSprite[24]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[24]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[24]_i_2_n_0\
    );
\CurrentSprite[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[24]_i_9_n_0\,
      I1 => \CurrentSprite[24]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[24]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[24]_i_3_n_0\
    );
\CurrentSprite[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[24]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[24]_i_13_n_0\,
      I4 => \CurrentSprite[24]_i_14_n_0\,
      O => \CurrentSprite[24]_i_4_n_0\
    );
\CurrentSprite[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[24]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(24),
      I5 => \SOAMBuffer_reg[0]_30\(24),
      O => \CurrentSprite[24]_i_5_n_0\
    );
\CurrentSprite[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(24),
      I1 => \SOAMBuffer_reg[16]_14\(24),
      I2 => \SOAMBuffer_reg[15]_15\(24),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[24]_i_6_n_0\
    );
\CurrentSprite[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(24),
      I1 => \SOAMBuffer_reg[22]_8\(24),
      I2 => \SOAMBuffer_reg[21]_9\(24),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[24]_i_7_n_0\
    );
\CurrentSprite[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(24),
      I1 => \SOAMBuffer_reg[19]_11\(24),
      I2 => \SOAMBuffer_reg[18]_12\(24),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[24]_i_8_n_0\
    );
\CurrentSprite[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(24),
      I1 => \SOAMBuffer_reg[25]_5\(24),
      I2 => \SOAMBuffer_reg[24]_6\(24),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[24]_i_9_n_0\
    );
\CurrentSprite[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[25]_i_2_n_0\,
      I1 => \CurrentSprite[25]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[25]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[25]_i_5_n_0\,
      O => \CurrentSprite[25]_i_1_n_0\
    );
\CurrentSprite[25]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(25),
      I3 => \SOAMBuffer_reg_n_0_[31][25]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(25),
      O => \CurrentSprite[25]_i_10_n_0\
    );
\CurrentSprite[25]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(25),
      I1 => \SOAMBuffer_reg[28]_2\(25),
      I2 => \SOAMBuffer_reg[27]_3\(25),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[25]_i_11_n_0\
    );
\CurrentSprite[25]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(25),
      I1 => \SOAMBuffer_reg[10]_20\(25),
      I2 => \SOAMBuffer_reg[9]_21\(25),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[25]_i_12_n_0\
    );
\CurrentSprite[25]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(25),
      I1 => \SOAMBuffer_reg[13]_17\(25),
      I2 => \SOAMBuffer_reg[12]_18\(25),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[25]_i_13_n_0\
    );
\CurrentSprite[25]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(25),
      I1 => \SOAMBuffer_reg[7]_23\(25),
      I2 => \SOAMBuffer_reg[6]_24\(25),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[25]_i_14_n_0\
    );
\CurrentSprite[25]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(25),
      I1 => \SOAMBuffer_reg[4]_26\(25),
      I2 => \SOAMBuffer_reg[3]_27\(25),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[25]_i_15_n_0\
    );
\CurrentSprite[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[25]_i_6_n_0\,
      I1 => \CurrentSprite[25]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[25]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[25]_i_2_n_0\
    );
\CurrentSprite[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[25]_i_9_n_0\,
      I1 => \CurrentSprite[25]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[25]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[25]_i_3_n_0\
    );
\CurrentSprite[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[25]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[25]_i_13_n_0\,
      I4 => \CurrentSprite[25]_i_14_n_0\,
      O => \CurrentSprite[25]_i_4_n_0\
    );
\CurrentSprite[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[25]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(25),
      I5 => \SOAMBuffer_reg[0]_30\(25),
      O => \CurrentSprite[25]_i_5_n_0\
    );
\CurrentSprite[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(25),
      I1 => \SOAMBuffer_reg[16]_14\(25),
      I2 => \SOAMBuffer_reg[15]_15\(25),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[25]_i_6_n_0\
    );
\CurrentSprite[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(25),
      I1 => \SOAMBuffer_reg[22]_8\(25),
      I2 => \SOAMBuffer_reg[21]_9\(25),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[25]_i_7_n_0\
    );
\CurrentSprite[25]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(25),
      I1 => \SOAMBuffer_reg[19]_11\(25),
      I2 => \SOAMBuffer_reg[18]_12\(25),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[25]_i_8_n_0\
    );
\CurrentSprite[25]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(25),
      I1 => \SOAMBuffer_reg[25]_5\(25),
      I2 => \SOAMBuffer_reg[24]_6\(25),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[25]_i_9_n_0\
    );
\CurrentSprite[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[26]_i_2_n_0\,
      I1 => \CurrentSprite[26]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[26]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[26]_i_5_n_0\,
      O => \CurrentSprite[26]_i_1_n_0\
    );
\CurrentSprite[26]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(26),
      I3 => \SOAMBuffer_reg_n_0_[31][26]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(26),
      O => \CurrentSprite[26]_i_10_n_0\
    );
\CurrentSprite[26]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(26),
      I1 => \SOAMBuffer_reg[28]_2\(26),
      I2 => \SOAMBuffer_reg[27]_3\(26),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[26]_i_11_n_0\
    );
\CurrentSprite[26]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(26),
      I1 => \SOAMBuffer_reg[10]_20\(26),
      I2 => \SOAMBuffer_reg[9]_21\(26),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[26]_i_12_n_0\
    );
\CurrentSprite[26]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(26),
      I1 => \SOAMBuffer_reg[13]_17\(26),
      I2 => \SOAMBuffer_reg[12]_18\(26),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[26]_i_13_n_0\
    );
\CurrentSprite[26]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(26),
      I1 => \SOAMBuffer_reg[7]_23\(26),
      I2 => \SOAMBuffer_reg[6]_24\(26),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[26]_i_14_n_0\
    );
\CurrentSprite[26]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(26),
      I1 => \SOAMBuffer_reg[4]_26\(26),
      I2 => \SOAMBuffer_reg[3]_27\(26),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[26]_i_15_n_0\
    );
\CurrentSprite[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[26]_i_6_n_0\,
      I1 => \CurrentSprite[26]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[26]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[26]_i_2_n_0\
    );
\CurrentSprite[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[26]_i_9_n_0\,
      I1 => \CurrentSprite[26]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[26]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[26]_i_3_n_0\
    );
\CurrentSprite[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[26]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[26]_i_13_n_0\,
      I4 => \CurrentSprite[26]_i_14_n_0\,
      O => \CurrentSprite[26]_i_4_n_0\
    );
\CurrentSprite[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[26]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(26),
      I5 => \SOAMBuffer_reg[0]_30\(26),
      O => \CurrentSprite[26]_i_5_n_0\
    );
\CurrentSprite[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(26),
      I1 => \SOAMBuffer_reg[16]_14\(26),
      I2 => \SOAMBuffer_reg[15]_15\(26),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[26]_i_6_n_0\
    );
\CurrentSprite[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(26),
      I1 => \SOAMBuffer_reg[22]_8\(26),
      I2 => \SOAMBuffer_reg[21]_9\(26),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[26]_i_7_n_0\
    );
\CurrentSprite[26]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(26),
      I1 => \SOAMBuffer_reg[19]_11\(26),
      I2 => \SOAMBuffer_reg[18]_12\(26),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[26]_i_8_n_0\
    );
\CurrentSprite[26]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(26),
      I1 => \SOAMBuffer_reg[25]_5\(26),
      I2 => \SOAMBuffer_reg[24]_6\(26),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[26]_i_9_n_0\
    );
\CurrentSprite[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[27]_i_2_n_0\,
      I1 => \CurrentSprite[27]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[27]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[27]_i_5_n_0\,
      O => \CurrentSprite[27]_i_1_n_0\
    );
\CurrentSprite[27]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(27),
      I3 => \SOAMBuffer_reg_n_0_[31][27]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(27),
      O => \CurrentSprite[27]_i_10_n_0\
    );
\CurrentSprite[27]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(27),
      I1 => \SOAMBuffer_reg[28]_2\(27),
      I2 => \SOAMBuffer_reg[27]_3\(27),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[27]_i_11_n_0\
    );
\CurrentSprite[27]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(27),
      I1 => \SOAMBuffer_reg[10]_20\(27),
      I2 => \SOAMBuffer_reg[9]_21\(27),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[27]_i_12_n_0\
    );
\CurrentSprite[27]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(27),
      I1 => \SOAMBuffer_reg[13]_17\(27),
      I2 => \SOAMBuffer_reg[12]_18\(27),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[27]_i_13_n_0\
    );
\CurrentSprite[27]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(27),
      I1 => \SOAMBuffer_reg[7]_23\(27),
      I2 => \SOAMBuffer_reg[6]_24\(27),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[27]_i_14_n_0\
    );
\CurrentSprite[27]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(27),
      I1 => \SOAMBuffer_reg[4]_26\(27),
      I2 => \SOAMBuffer_reg[3]_27\(27),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[27]_i_15_n_0\
    );
\CurrentSprite[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[27]_i_6_n_0\,
      I1 => \CurrentSprite[27]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[27]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[27]_i_2_n_0\
    );
\CurrentSprite[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[27]_i_9_n_0\,
      I1 => \CurrentSprite[27]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[27]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[27]_i_3_n_0\
    );
\CurrentSprite[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[27]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[27]_i_13_n_0\,
      I4 => \CurrentSprite[27]_i_14_n_0\,
      O => \CurrentSprite[27]_i_4_n_0\
    );
\CurrentSprite[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[27]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(27),
      I5 => \SOAMBuffer_reg[0]_30\(27),
      O => \CurrentSprite[27]_i_5_n_0\
    );
\CurrentSprite[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(27),
      I1 => \SOAMBuffer_reg[16]_14\(27),
      I2 => \SOAMBuffer_reg[15]_15\(27),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[27]_i_6_n_0\
    );
\CurrentSprite[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(27),
      I1 => \SOAMBuffer_reg[22]_8\(27),
      I2 => \SOAMBuffer_reg[21]_9\(27),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[27]_i_7_n_0\
    );
\CurrentSprite[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(27),
      I1 => \SOAMBuffer_reg[19]_11\(27),
      I2 => \SOAMBuffer_reg[18]_12\(27),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[27]_i_8_n_0\
    );
\CurrentSprite[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(27),
      I1 => \SOAMBuffer_reg[25]_5\(27),
      I2 => \SOAMBuffer_reg[24]_6\(27),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[27]_i_9_n_0\
    );
\CurrentSprite[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[28]_i_2_n_0\,
      I1 => \CurrentSprite[28]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[28]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[28]_i_5_n_0\,
      O => \CurrentSprite[28]_i_1_n_0\
    );
\CurrentSprite[28]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(28),
      I3 => \SOAMBuffer_reg_n_0_[31][28]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(28),
      O => \CurrentSprite[28]_i_10_n_0\
    );
\CurrentSprite[28]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(28),
      I1 => \SOAMBuffer_reg[28]_2\(28),
      I2 => \SOAMBuffer_reg[27]_3\(28),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[28]_i_11_n_0\
    );
\CurrentSprite[28]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(28),
      I1 => \SOAMBuffer_reg[10]_20\(28),
      I2 => \SOAMBuffer_reg[9]_21\(28),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[28]_i_12_n_0\
    );
\CurrentSprite[28]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(28),
      I1 => \SOAMBuffer_reg[13]_17\(28),
      I2 => \SOAMBuffer_reg[12]_18\(28),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[28]_i_13_n_0\
    );
\CurrentSprite[28]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(28),
      I1 => \SOAMBuffer_reg[7]_23\(28),
      I2 => \SOAMBuffer_reg[6]_24\(28),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[28]_i_14_n_0\
    );
\CurrentSprite[28]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(28),
      I1 => \SOAMBuffer_reg[4]_26\(28),
      I2 => \SOAMBuffer_reg[3]_27\(28),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[28]_i_15_n_0\
    );
\CurrentSprite[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[28]_i_6_n_0\,
      I1 => \CurrentSprite[28]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[28]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[28]_i_2_n_0\
    );
\CurrentSprite[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[28]_i_9_n_0\,
      I1 => \CurrentSprite[28]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[28]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[28]_i_3_n_0\
    );
\CurrentSprite[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[28]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[28]_i_13_n_0\,
      I4 => \CurrentSprite[28]_i_14_n_0\,
      O => \CurrentSprite[28]_i_4_n_0\
    );
\CurrentSprite[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[28]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(28),
      I5 => \SOAMBuffer_reg[0]_30\(28),
      O => \CurrentSprite[28]_i_5_n_0\
    );
\CurrentSprite[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(28),
      I1 => \SOAMBuffer_reg[16]_14\(28),
      I2 => \SOAMBuffer_reg[15]_15\(28),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[28]_i_6_n_0\
    );
\CurrentSprite[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(28),
      I1 => \SOAMBuffer_reg[22]_8\(28),
      I2 => \SOAMBuffer_reg[21]_9\(28),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[28]_i_7_n_0\
    );
\CurrentSprite[28]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(28),
      I1 => \SOAMBuffer_reg[19]_11\(28),
      I2 => \SOAMBuffer_reg[18]_12\(28),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[28]_i_8_n_0\
    );
\CurrentSprite[28]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(28),
      I1 => \SOAMBuffer_reg[25]_5\(28),
      I2 => \SOAMBuffer_reg[24]_6\(28),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[28]_i_9_n_0\
    );
\CurrentSprite[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[29]_i_2_n_0\,
      I1 => \CurrentSprite[29]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[29]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[29]_i_5_n_0\,
      O => \CurrentSprite[29]_i_1_n_0\
    );
\CurrentSprite[29]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(29),
      I3 => \SOAMBuffer_reg_n_0_[31][29]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(29),
      O => \CurrentSprite[29]_i_10_n_0\
    );
\CurrentSprite[29]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(29),
      I1 => \SOAMBuffer_reg[28]_2\(29),
      I2 => \SOAMBuffer_reg[27]_3\(29),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[29]_i_11_n_0\
    );
\CurrentSprite[29]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(29),
      I1 => \SOAMBuffer_reg[10]_20\(29),
      I2 => \SOAMBuffer_reg[9]_21\(29),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[29]_i_12_n_0\
    );
\CurrentSprite[29]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(29),
      I1 => \SOAMBuffer_reg[13]_17\(29),
      I2 => \SOAMBuffer_reg[12]_18\(29),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[29]_i_13_n_0\
    );
\CurrentSprite[29]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(29),
      I1 => \SOAMBuffer_reg[7]_23\(29),
      I2 => \SOAMBuffer_reg[6]_24\(29),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[29]_i_14_n_0\
    );
\CurrentSprite[29]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(29),
      I1 => \SOAMBuffer_reg[4]_26\(29),
      I2 => \SOAMBuffer_reg[3]_27\(29),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[29]_i_15_n_0\
    );
\CurrentSprite[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[29]_i_6_n_0\,
      I1 => \CurrentSprite[29]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[29]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[29]_i_2_n_0\
    );
\CurrentSprite[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[29]_i_9_n_0\,
      I1 => \CurrentSprite[29]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[29]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[29]_i_3_n_0\
    );
\CurrentSprite[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[29]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[29]_i_13_n_0\,
      I4 => \CurrentSprite[29]_i_14_n_0\,
      O => \CurrentSprite[29]_i_4_n_0\
    );
\CurrentSprite[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[29]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(29),
      I5 => \SOAMBuffer_reg[0]_30\(29),
      O => \CurrentSprite[29]_i_5_n_0\
    );
\CurrentSprite[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(29),
      I1 => \SOAMBuffer_reg[16]_14\(29),
      I2 => \SOAMBuffer_reg[15]_15\(29),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[29]_i_6_n_0\
    );
\CurrentSprite[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(29),
      I1 => \SOAMBuffer_reg[22]_8\(29),
      I2 => \SOAMBuffer_reg[21]_9\(29),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[29]_i_7_n_0\
    );
\CurrentSprite[29]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(29),
      I1 => \SOAMBuffer_reg[19]_11\(29),
      I2 => \SOAMBuffer_reg[18]_12\(29),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[29]_i_8_n_0\
    );
\CurrentSprite[29]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(29),
      I1 => \SOAMBuffer_reg[25]_5\(29),
      I2 => \SOAMBuffer_reg[24]_6\(29),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[29]_i_9_n_0\
    );
\CurrentSprite[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[2]_i_2_n_0\,
      I1 => \CurrentSprite[2]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[2]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[2]_i_5_n_0\,
      O => \CurrentSprite[2]_i_1_n_0\
    );
\CurrentSprite[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(2),
      I3 => \SOAMBuffer_reg_n_0_[31][2]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(2),
      O => \CurrentSprite[2]_i_10_n_0\
    );
\CurrentSprite[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(2),
      I1 => \SOAMBuffer_reg[28]_2\(2),
      I2 => \SOAMBuffer_reg[27]_3\(2),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[2]_i_11_n_0\
    );
\CurrentSprite[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(2),
      I1 => \SOAMBuffer_reg[10]_20\(2),
      I2 => \SOAMBuffer_reg[9]_21\(2),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[2]_i_12_n_0\
    );
\CurrentSprite[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(2),
      I1 => \SOAMBuffer_reg[13]_17\(2),
      I2 => \SOAMBuffer_reg[12]_18\(2),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[2]_i_13_n_0\
    );
\CurrentSprite[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(2),
      I1 => \SOAMBuffer_reg[7]_23\(2),
      I2 => \SOAMBuffer_reg[6]_24\(2),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[2]_i_14_n_0\
    );
\CurrentSprite[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(2),
      I1 => \SOAMBuffer_reg[4]_26\(2),
      I2 => \SOAMBuffer_reg[3]_27\(2),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[2]_i_15_n_0\
    );
\CurrentSprite[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[2]_i_6_n_0\,
      I1 => \CurrentSprite[2]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[2]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[2]_i_2_n_0\
    );
\CurrentSprite[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[2]_i_9_n_0\,
      I1 => \CurrentSprite[2]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[2]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[2]_i_3_n_0\
    );
\CurrentSprite[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[2]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[2]_i_13_n_0\,
      I4 => \CurrentSprite[2]_i_14_n_0\,
      O => \CurrentSprite[2]_i_4_n_0\
    );
\CurrentSprite[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[2]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(2),
      I5 => \SOAMBuffer_reg[0]_30\(2),
      O => \CurrentSprite[2]_i_5_n_0\
    );
\CurrentSprite[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(2),
      I1 => \SOAMBuffer_reg[16]_14\(2),
      I2 => \SOAMBuffer_reg[15]_15\(2),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[2]_i_6_n_0\
    );
\CurrentSprite[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(2),
      I1 => \SOAMBuffer_reg[22]_8\(2),
      I2 => \SOAMBuffer_reg[21]_9\(2),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[2]_i_7_n_0\
    );
\CurrentSprite[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(2),
      I1 => \SOAMBuffer_reg[19]_11\(2),
      I2 => \SOAMBuffer_reg[18]_12\(2),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[2]_i_8_n_0\
    );
\CurrentSprite[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(2),
      I1 => \SOAMBuffer_reg[25]_5\(2),
      I2 => \SOAMBuffer_reg[24]_6\(2),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[2]_i_9_n_0\
    );
\CurrentSprite[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[30]_i_2_n_0\,
      I1 => \CurrentSprite[30]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[30]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[30]_i_5_n_0\,
      O => \CurrentSprite[30]_i_1_n_0\
    );
\CurrentSprite[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(30),
      I3 => \SOAMBuffer_reg_n_0_[31][30]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(30),
      O => \CurrentSprite[30]_i_10_n_0\
    );
\CurrentSprite[30]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(30),
      I1 => \SOAMBuffer_reg[28]_2\(30),
      I2 => \SOAMBuffer_reg[27]_3\(30),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[30]_i_11_n_0\
    );
\CurrentSprite[30]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(30),
      I1 => \SOAMBuffer_reg[10]_20\(30),
      I2 => \SOAMBuffer_reg[9]_21\(30),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[30]_i_12_n_0\
    );
\CurrentSprite[30]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(30),
      I1 => \SOAMBuffer_reg[13]_17\(30),
      I2 => \SOAMBuffer_reg[12]_18\(30),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[30]_i_13_n_0\
    );
\CurrentSprite[30]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(30),
      I1 => \SOAMBuffer_reg[7]_23\(30),
      I2 => \SOAMBuffer_reg[6]_24\(30),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[30]_i_14_n_0\
    );
\CurrentSprite[30]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(30),
      I1 => \SOAMBuffer_reg[4]_26\(30),
      I2 => \SOAMBuffer_reg[3]_27\(30),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[30]_i_15_n_0\
    );
\CurrentSprite[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[30]_i_6_n_0\,
      I1 => \CurrentSprite[30]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[30]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[30]_i_2_n_0\
    );
\CurrentSprite[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[30]_i_9_n_0\,
      I1 => \CurrentSprite[30]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[30]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[30]_i_3_n_0\
    );
\CurrentSprite[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[30]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[30]_i_13_n_0\,
      I4 => \CurrentSprite[30]_i_14_n_0\,
      O => \CurrentSprite[30]_i_4_n_0\
    );
\CurrentSprite[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[30]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(30),
      I5 => \SOAMBuffer_reg[0]_30\(30),
      O => \CurrentSprite[30]_i_5_n_0\
    );
\CurrentSprite[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(30),
      I1 => \SOAMBuffer_reg[16]_14\(30),
      I2 => \SOAMBuffer_reg[15]_15\(30),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[30]_i_6_n_0\
    );
\CurrentSprite[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(30),
      I1 => \SOAMBuffer_reg[22]_8\(30),
      I2 => \SOAMBuffer_reg[21]_9\(30),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[30]_i_7_n_0\
    );
\CurrentSprite[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(30),
      I1 => \SOAMBuffer_reg[19]_11\(30),
      I2 => \SOAMBuffer_reg[18]_12\(30),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[30]_i_8_n_0\
    );
\CurrentSprite[30]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(30),
      I1 => \SOAMBuffer_reg[25]_5\(30),
      I2 => \SOAMBuffer_reg[24]_6\(30),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[30]_i_9_n_0\
    );
\CurrentSprite[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => isBufferReady,
      I1 => \CurrentSprite[31]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_4_n_0\,
      I3 => \CurrentSprite[31]_i_5_n_0\,
      I4 => \CurrentSprite[31]_i_6_n_0\,
      I5 => \CurrentSprite[31]_i_7_n_0\,
      O => CurrentSprite
    );
\CurrentSprite[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_55_n_0\,
      I1 => \CurrentSprite[31]_i_16_n_0\,
      I2 => CurrentSprite255_in,
      I3 => \CurrentSprite_reg[31]_i_14_n_2\,
      I4 => \CurrentSprite[31]_i_56_n_0\,
      I5 => \CurrentSprite[31]_i_57_n_0\,
      O => \CurrentSprite[31]_i_10_n_0\
    );
\CurrentSprite[31]_i_100\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[7]_23\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_100_n_0\
    );
\CurrentSprite[31]_i_102\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_102_n_0\
    );
\CurrentSprite[31]_i_103\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[7]_23\(22),
      I2 => \SOAMBuffer_reg[7]_23\(21),
      I3 => \CurrentSprite[31]_i_274_n_0\,
      O => \CurrentSprite[31]_i_103_n_0\
    );
\CurrentSprite[31]_i_105\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[4]_26\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_105_n_0\
    );
\CurrentSprite[31]_i_106\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[4]_26\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_106_n_0\
    );
\CurrentSprite[31]_i_108\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_108_n_0\
    );
\CurrentSprite[31]_i_109\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[4]_26\(22),
      I2 => \SOAMBuffer_reg[4]_26\(21),
      I3 => \CurrentSprite[31]_i_288_n_0\,
      O => \CurrentSprite[31]_i_109_n_0\
    );
\CurrentSprite[31]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[31]_i_58_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[31]_i_59_n_0\,
      I4 => \CurrentSprite[31]_i_60_n_0\,
      O => \CurrentSprite[31]_i_11_n_0\
    );
\CurrentSprite[31]_i_115\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_115_n_0\
    );
\CurrentSprite[31]_i_116\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[28]_2\(22),
      I2 => \SOAMBuffer_reg[28]_2\(21),
      I3 => \CurrentSprite[31]_i_306_n_0\,
      O => \CurrentSprite[31]_i_116_n_0\
    );
\CurrentSprite[31]_i_118\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[28]_2\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_118_n_0\
    );
\CurrentSprite[31]_i_119\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[28]_2\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_119_n_0\
    );
\CurrentSprite[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => \CurrentSprite[31]_i_20_n_0\,
      I1 => \CurrentSprite_reg[31]_i_30_n_2\,
      I2 => CurrentSprite282_in,
      I3 => \CurrentSprite_reg[31]_i_61_n_2\,
      I4 => CurrentSprite285_in,
      I5 => \CurrentSprite[31]_i_63_n_0\,
      O => \CurrentSprite[31]_i_12_n_0\
    );
\CurrentSprite[31]_i_124\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite216_in,
      I1 => \CurrentSprite_reg[31]_i_156_n_2\,
      O => \CurrentSprite[31]_i_124_n_0\
    );
\CurrentSprite[31]_i_127\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite222_in,
      I1 => \CurrentSprite_reg[31]_i_159_n_2\,
      O => \CurrentSprite[31]_i_127_n_0\
    );
\CurrentSprite[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[31]_i_64_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(31),
      I5 => \SOAMBuffer_reg[0]_30\(31),
      O => \CurrentSprite[31]_i_13_n_0\
    );
\CurrentSprite[31]_i_137\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_137_n_0\
    );
\CurrentSprite[31]_i_138\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[22]_8\(22),
      I2 => \SOAMBuffer_reg[22]_8\(21),
      I3 => \CurrentSprite[31]_i_362_n_0\,
      O => \CurrentSprite[31]_i_138_n_0\
    );
\CurrentSprite[31]_i_140\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[22]_8\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_140_n_0\
    );
\CurrentSprite[31]_i_141\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[22]_8\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_141_n_0\
    );
\CurrentSprite[31]_i_142\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite240_in,
      I1 => \CurrentSprite_reg[31]_i_151_n_2\,
      O => \CurrentSprite[31]_i_142_n_0\
    );
\CurrentSprite[31]_i_147\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite243_in,
      I1 => \CurrentSprite_reg[31]_i_152_n_2\,
      O => \CurrentSprite[31]_i_147_n_0\
    );
\CurrentSprite[31]_i_148\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite246_in,
      I1 => \CurrentSprite_reg[31]_i_146_n_2\,
      O => \CurrentSprite[31]_i_148_n_0\
    );
\CurrentSprite[31]_i_149\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite228_in,
      I1 => \CurrentSprite_reg[31]_i_41_n_2\,
      O => \CurrentSprite[31]_i_149_n_0\
    );
\CurrentSprite[31]_i_154\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite237_in,
      I1 => \CurrentSprite_reg[31]_i_144_n_2\,
      O => \CurrentSprite[31]_i_154_n_0\
    );
\CurrentSprite[31]_i_155\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite219_in,
      I1 => \CurrentSprite_reg[31]_i_129_n_2\,
      O => \CurrentSprite[31]_i_155_n_0\
    );
\CurrentSprite[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite258_in,
      I1 => \CurrentSprite_reg[31]_i_72_n_2\,
      O => \CurrentSprite[31]_i_16_n_0\
    );
\CurrentSprite[31]_i_160\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite210_in,
      I1 => \CurrentSprite_reg[31]_i_33_n_2\,
      O => \CurrentSprite[31]_i_160_n_0\
    );
\CurrentSprite[31]_i_161\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite213_in,
      I1 => \CurrentSprite_reg[31]_i_126_n_2\,
      O => \CurrentSprite[31]_i_161_n_0\
    );
\CurrentSprite[31]_i_166\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite264_in,
      I1 => \CurrentSprite_reg[31]_i_78_n_2\,
      O => \CurrentSprite[31]_i_166_n_0\
    );
\CurrentSprite[31]_i_167\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite267_in,
      I1 => \CurrentSprite_reg[31]_i_81_n_2\,
      O => \CurrentSprite[31]_i_167_n_0\
    );
\CurrentSprite[31]_i_168\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite255_in,
      I1 => \CurrentSprite_reg[31]_i_14_n_2\,
      O => \CurrentSprite[31]_i_168_n_0\
    );
\CurrentSprite[31]_i_169\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite273_in,
      I1 => \CurrentSprite_reg[31]_i_28_n_2\,
      O => \CurrentSprite[31]_i_169_n_0\
    );
\CurrentSprite[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite249_in,
      I1 => \CurrentSprite_reg[31]_i_74_n_2\,
      O => \CurrentSprite[31]_i_17_n_0\
    );
\CurrentSprite[31]_i_171\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_171_n_0\
    );
\CurrentSprite[31]_i_172\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[3]_27\(22),
      I2 => \SOAMBuffer_reg[3]_27\(21),
      I3 => \CurrentSprite[31]_i_424_n_0\,
      O => \CurrentSprite[31]_i_172_n_0\
    );
\CurrentSprite[31]_i_174\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[3]_27\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_174_n_0\
    );
\CurrentSprite[31]_i_175\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[3]_27\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_175_n_0\
    );
\CurrentSprite[31]_i_176\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite282_in,
      I1 => \CurrentSprite_reg[31]_i_30_n_2\,
      O => \CurrentSprite[31]_i_176_n_0\
    );
\CurrentSprite[31]_i_178\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[13]_17\(21),
      I2 => \SOAMBuffer_reg[13]_17\(20),
      I3 => \SOAMBuffer_reg[13]_17\(18),
      I4 => \SOAMBuffer_reg[13]_17\(17),
      I5 => \SOAMBuffer_reg[13]_17\(19),
      O => \CurrentSprite[31]_i_178_n_0\
    );
\CurrentSprite[31]_i_179\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[13]_17\(20),
      I2 => \SOAMBuffer_reg[13]_17\(19),
      I3 => \SOAMBuffer_reg[13]_17\(17),
      I4 => \SOAMBuffer_reg[13]_17\(18),
      O => \CurrentSprite[31]_i_179_n_0\
    );
\CurrentSprite[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite252_in,
      I1 => \CurrentSprite_reg[31]_i_76_n_2\,
      O => \CurrentSprite[31]_i_18_n_0\
    );
\CurrentSprite[31]_i_180\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[13]_17\(19),
      I2 => \SOAMBuffer_reg[13]_17\(18),
      I3 => \SOAMBuffer_reg[13]_17\(17),
      O => \CurrentSprite[31]_i_180_n_0\
    );
\CurrentSprite[31]_i_181\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[13]_17\(18),
      I2 => \SOAMBuffer_reg[13]_17\(17),
      O => \CurrentSprite[31]_i_181_n_0\
    );
\CurrentSprite[31]_i_182\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[13]_17\(20),
      I1 => \SOAMBuffer_reg[13]_17\(18),
      I2 => \SOAMBuffer_reg[13]_17\(17),
      I3 => \SOAMBuffer_reg[13]_17\(19),
      O => \CurrentSprite[31]_i_182_n_0\
    );
\CurrentSprite[31]_i_183\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[13]_17\(20),
      I2 => \SOAMBuffer_reg[13]_17\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_183_n_0\
    );
\CurrentSprite[31]_i_184\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[13]_17\(18),
      I2 => \SOAMBuffer_reg[13]_17\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_184_n_0\
    );
\CurrentSprite[31]_i_185\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[13]_17\(16),
      I2 => \SOAMBuffer_reg[13]_17\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_185_n_0\
    );
\CurrentSprite[31]_i_186\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[13]_17\(14),
      I2 => \SOAMBuffer_reg[13]_17\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_186_n_0\
    );
\CurrentSprite[31]_i_187\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[13]_17\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[13]_17\(21),
      O => \CurrentSprite[31]_i_187_n_0\
    );
\CurrentSprite[31]_i_188\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[13]_17\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[13]_17\(19),
      O => \CurrentSprite[31]_i_188_n_0\
    );
\CurrentSprite[31]_i_189\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[13]_17\(16),
      I2 => \SOAMBuffer_reg[13]_17\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_189_n_0\
    );
\CurrentSprite[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFF2FFFFFFF2"
    )
        port map (
      I0 => CurrentSprite264_in,
      I1 => \CurrentSprite_reg[31]_i_78_n_2\,
      I2 => \CurrentSprite[31]_i_56_n_0\,
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => CurrentSprite267_in,
      I5 => \CurrentSprite_reg[31]_i_81_n_2\,
      O => \CurrentSprite[31]_i_19_n_0\
    );
\CurrentSprite[31]_i_190\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[13]_17\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[13]_17\(15),
      O => \CurrentSprite[31]_i_190_n_0\
    );
\CurrentSprite[31]_i_192\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[12]_18\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_192_n_0\
    );
\CurrentSprite[31]_i_193\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[12]_18\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_193_n_0\
    );
\CurrentSprite[31]_i_195\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_195_n_0\
    );
\CurrentSprite[31]_i_196\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[12]_18\(22),
      I2 => \SOAMBuffer_reg[12]_18\(21),
      I3 => \CurrentSprite[31]_i_450_n_0\,
      O => \CurrentSprite[31]_i_196_n_0\
    );
\CurrentSprite[31]_i_198\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[15]_15\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_198_n_0\
    );
\CurrentSprite[31]_i_199\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[15]_15\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_199_n_0\
    );
\CurrentSprite[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[31]_i_8_n_0\,
      I1 => \CurrentSprite[31]_i_9_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[31]_i_11_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[31]_i_13_n_0\,
      O => \CurrentSprite[31]_i_2_n_0\
    );
\CurrentSprite[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite288_in,
      I1 => \CurrentSprite_reg[31]_i_83_n_2\,
      O => \CurrentSprite[31]_i_20_n_0\
    );
\CurrentSprite[31]_i_201\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_201_n_0\
    );
\CurrentSprite[31]_i_202\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[15]_15\(22),
      I2 => \SOAMBuffer_reg[15]_15\(21),
      I3 => \CurrentSprite[31]_i_464_n_0\,
      O => \CurrentSprite[31]_i_202_n_0\
    );
\CurrentSprite[31]_i_204\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[14]_16\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_204_n_0\
    );
\CurrentSprite[31]_i_205\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[14]_16\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_205_n_0\
    );
\CurrentSprite[31]_i_207\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_207_n_0\
    );
\CurrentSprite[31]_i_208\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[14]_16\(22),
      I2 => \SOAMBuffer_reg[14]_16\(21),
      I3 => \CurrentSprite[31]_i_478_n_0\,
      O => \CurrentSprite[31]_i_208_n_0\
    );
\CurrentSprite[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite285_in,
      I1 => \CurrentSprite_reg[31]_i_61_n_2\,
      O => \CurrentSprite[31]_i_21_n_0\
    );
\CurrentSprite[31]_i_210\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[10]_20\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_210_n_0\
    );
\CurrentSprite[31]_i_211\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[10]_20\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_211_n_0\
    );
\CurrentSprite[31]_i_213\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_213_n_0\
    );
\CurrentSprite[31]_i_214\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[10]_20\(22),
      I2 => \SOAMBuffer_reg[10]_20\(21),
      I3 => \CurrentSprite[31]_i_492_n_0\,
      O => \CurrentSprite[31]_i_214_n_0\
    );
\CurrentSprite[31]_i_216\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[9]_21\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_216_n_0\
    );
\CurrentSprite[31]_i_217\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[9]_21\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_217_n_0\
    );
\CurrentSprite[31]_i_219\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_219_n_0\
    );
\CurrentSprite[31]_i_220\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[9]_21\(22),
      I2 => \SOAMBuffer_reg[9]_21\(21),
      I3 => \CurrentSprite[31]_i_506_n_0\,
      O => \CurrentSprite[31]_i_220_n_0\
    );
\CurrentSprite[31]_i_222\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[2]_28\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_222_n_0\
    );
\CurrentSprite[31]_i_223\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[2]_28\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_223_n_0\
    );
\CurrentSprite[31]_i_225\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_225_n_0\
    );
\CurrentSprite[31]_i_226\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[2]_28\(22),
      I2 => \SOAMBuffer_reg[2]_28\(21),
      I3 => \CurrentSprite[31]_i_520_n_0\,
      O => \CurrentSprite[31]_i_226_n_0\
    );
\CurrentSprite[31]_i_227\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => L(20),
      I2 => L(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_227_n_0\
    );
\CurrentSprite[31]_i_228\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => L(18),
      I2 => L(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_228_n_0\
    );
\CurrentSprite[31]_i_229\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => L(16),
      I2 => L(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_229_n_0\
    );
\CurrentSprite[31]_i_230\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => L(14),
      I2 => L(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_230_n_0\
    );
\CurrentSprite[31]_i_231\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => L(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => L(21),
      O => \CurrentSprite[31]_i_231_n_0\
    );
\CurrentSprite[31]_i_232\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => L(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => L(19),
      O => \CurrentSprite[31]_i_232_n_0\
    );
\CurrentSprite[31]_i_233\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => L(16),
      I2 => L(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_233_n_0\
    );
\CurrentSprite[31]_i_234\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => L(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => L(15),
      O => \CurrentSprite[31]_i_234_n_0\
    );
\CurrentSprite[31]_i_236\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => L(21),
      I2 => L(20),
      I3 => L(18),
      I4 => L(17),
      I5 => L(19),
      O => \CurrentSprite[31]_i_236_n_0\
    );
\CurrentSprite[31]_i_237\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => L(20),
      I2 => L(19),
      I3 => L(17),
      I4 => L(18),
      O => \CurrentSprite[31]_i_237_n_0\
    );
\CurrentSprite[31]_i_238\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => L(19),
      I2 => L(18),
      I3 => L(17),
      O => \CurrentSprite[31]_i_238_n_0\
    );
\CurrentSprite[31]_i_239\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => L(18),
      I2 => L(17),
      O => \CurrentSprite[31]_i_239_n_0\
    );
\CurrentSprite[31]_i_240\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => L(20),
      I1 => L(18),
      I2 => L(17),
      I3 => L(19),
      O => \CurrentSprite[31]_i_240_n_0\
    );
\CurrentSprite[31]_i_241\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[1]_29\(20),
      I2 => \SOAMBuffer_reg[1]_29\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_241_n_0\
    );
\CurrentSprite[31]_i_242\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[1]_29\(18),
      I2 => \SOAMBuffer_reg[1]_29\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_242_n_0\
    );
\CurrentSprite[31]_i_243\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[1]_29\(16),
      I2 => \SOAMBuffer_reg[1]_29\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_243_n_0\
    );
\CurrentSprite[31]_i_244\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[1]_29\(14),
      I2 => \SOAMBuffer_reg[1]_29\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_244_n_0\
    );
\CurrentSprite[31]_i_245\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[1]_29\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[1]_29\(21),
      O => \CurrentSprite[31]_i_245_n_0\
    );
\CurrentSprite[31]_i_246\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[1]_29\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[1]_29\(19),
      O => \CurrentSprite[31]_i_246_n_0\
    );
\CurrentSprite[31]_i_247\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[1]_29\(16),
      I2 => \SOAMBuffer_reg[1]_29\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_247_n_0\
    );
\CurrentSprite[31]_i_248\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[1]_29\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[1]_29\(15),
      O => \CurrentSprite[31]_i_248_n_0\
    );
\CurrentSprite[31]_i_250\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[1]_29\(21),
      I2 => \SOAMBuffer_reg[1]_29\(20),
      I3 => \SOAMBuffer_reg[1]_29\(18),
      I4 => \SOAMBuffer_reg[1]_29\(17),
      I5 => \SOAMBuffer_reg[1]_29\(19),
      O => \CurrentSprite[31]_i_250_n_0\
    );
\CurrentSprite[31]_i_251\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[1]_29\(20),
      I2 => \SOAMBuffer_reg[1]_29\(19),
      I3 => \SOAMBuffer_reg[1]_29\(17),
      I4 => \SOAMBuffer_reg[1]_29\(18),
      O => \CurrentSprite[31]_i_251_n_0\
    );
\CurrentSprite[31]_i_252\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[1]_29\(19),
      I2 => \SOAMBuffer_reg[1]_29\(18),
      I3 => \SOAMBuffer_reg[1]_29\(17),
      O => \CurrentSprite[31]_i_252_n_0\
    );
\CurrentSprite[31]_i_253\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[1]_29\(18),
      I2 => \SOAMBuffer_reg[1]_29\(17),
      O => \CurrentSprite[31]_i_253_n_0\
    );
\CurrentSprite[31]_i_254\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[1]_29\(20),
      I1 => \SOAMBuffer_reg[1]_29\(18),
      I2 => \SOAMBuffer_reg[1]_29\(17),
      I3 => \SOAMBuffer_reg[1]_29\(19),
      O => \CurrentSprite[31]_i_254_n_0\
    );
\CurrentSprite[31]_i_256\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[6]_24\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_256_n_0\
    );
\CurrentSprite[31]_i_257\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[6]_24\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_257_n_0\
    );
\CurrentSprite[31]_i_259\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_259_n_0\
    );
\CurrentSprite[31]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite276_in,
      I1 => \CurrentSprite_reg[31]_i_97_n_2\,
      O => \CurrentSprite[31]_i_26_n_0\
    );
\CurrentSprite[31]_i_260\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[6]_24\(22),
      I2 => \SOAMBuffer_reg[6]_24\(21),
      I3 => \CurrentSprite[31]_i_542_n_0\,
      O => \CurrentSprite[31]_i_260_n_0\
    );
\CurrentSprite[31]_i_261\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[7]_23\(20),
      I2 => \SOAMBuffer_reg[7]_23\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_261_n_0\
    );
\CurrentSprite[31]_i_262\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[7]_23\(18),
      I2 => \SOAMBuffer_reg[7]_23\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_262_n_0\
    );
\CurrentSprite[31]_i_263\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[7]_23\(16),
      I2 => \SOAMBuffer_reg[7]_23\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_263_n_0\
    );
\CurrentSprite[31]_i_264\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[7]_23\(14),
      I2 => \SOAMBuffer_reg[7]_23\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_264_n_0\
    );
\CurrentSprite[31]_i_265\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[7]_23\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[7]_23\(21),
      O => \CurrentSprite[31]_i_265_n_0\
    );
\CurrentSprite[31]_i_266\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[7]_23\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[7]_23\(19),
      O => \CurrentSprite[31]_i_266_n_0\
    );
\CurrentSprite[31]_i_267\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[7]_23\(16),
      I2 => \SOAMBuffer_reg[7]_23\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_267_n_0\
    );
\CurrentSprite[31]_i_268\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[7]_23\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[7]_23\(15),
      O => \CurrentSprite[31]_i_268_n_0\
    );
\CurrentSprite[31]_i_270\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[7]_23\(21),
      I2 => \SOAMBuffer_reg[7]_23\(20),
      I3 => \SOAMBuffer_reg[7]_23\(18),
      I4 => \SOAMBuffer_reg[7]_23\(17),
      I5 => \SOAMBuffer_reg[7]_23\(19),
      O => \CurrentSprite[31]_i_270_n_0\
    );
\CurrentSprite[31]_i_271\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[7]_23\(20),
      I2 => \SOAMBuffer_reg[7]_23\(19),
      I3 => \SOAMBuffer_reg[7]_23\(17),
      I4 => \SOAMBuffer_reg[7]_23\(18),
      O => \CurrentSprite[31]_i_271_n_0\
    );
\CurrentSprite[31]_i_272\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[7]_23\(19),
      I2 => \SOAMBuffer_reg[7]_23\(18),
      I3 => \SOAMBuffer_reg[7]_23\(17),
      O => \CurrentSprite[31]_i_272_n_0\
    );
\CurrentSprite[31]_i_273\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[7]_23\(18),
      I2 => \SOAMBuffer_reg[7]_23\(17),
      O => \CurrentSprite[31]_i_273_n_0\
    );
\CurrentSprite[31]_i_274\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[7]_23\(20),
      I1 => \SOAMBuffer_reg[7]_23\(18),
      I2 => \SOAMBuffer_reg[7]_23\(17),
      I3 => \SOAMBuffer_reg[7]_23\(19),
      O => \CurrentSprite[31]_i_274_n_0\
    );
\CurrentSprite[31]_i_275\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[4]_26\(20),
      I2 => \SOAMBuffer_reg[4]_26\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_275_n_0\
    );
\CurrentSprite[31]_i_276\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[4]_26\(18),
      I2 => \SOAMBuffer_reg[4]_26\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_276_n_0\
    );
\CurrentSprite[31]_i_277\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[4]_26\(16),
      I2 => \SOAMBuffer_reg[4]_26\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_277_n_0\
    );
\CurrentSprite[31]_i_278\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[4]_26\(14),
      I2 => \SOAMBuffer_reg[4]_26\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_278_n_0\
    );
\CurrentSprite[31]_i_279\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[4]_26\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[4]_26\(21),
      O => \CurrentSprite[31]_i_279_n_0\
    );
\CurrentSprite[31]_i_280\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[4]_26\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[4]_26\(19),
      O => \CurrentSprite[31]_i_280_n_0\
    );
\CurrentSprite[31]_i_281\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[4]_26\(16),
      I2 => \SOAMBuffer_reg[4]_26\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_281_n_0\
    );
\CurrentSprite[31]_i_282\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[4]_26\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[4]_26\(15),
      O => \CurrentSprite[31]_i_282_n_0\
    );
\CurrentSprite[31]_i_284\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[4]_26\(21),
      I2 => \SOAMBuffer_reg[4]_26\(20),
      I3 => \SOAMBuffer_reg[4]_26\(18),
      I4 => \SOAMBuffer_reg[4]_26\(17),
      I5 => \SOAMBuffer_reg[4]_26\(19),
      O => \CurrentSprite[31]_i_284_n_0\
    );
\CurrentSprite[31]_i_285\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[4]_26\(20),
      I2 => \SOAMBuffer_reg[4]_26\(19),
      I3 => \SOAMBuffer_reg[4]_26\(17),
      I4 => \SOAMBuffer_reg[4]_26\(18),
      O => \CurrentSprite[31]_i_285_n_0\
    );
\CurrentSprite[31]_i_286\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[4]_26\(19),
      I2 => \SOAMBuffer_reg[4]_26\(18),
      I3 => \SOAMBuffer_reg[4]_26\(17),
      O => \CurrentSprite[31]_i_286_n_0\
    );
\CurrentSprite[31]_i_287\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[4]_26\(18),
      I2 => \SOAMBuffer_reg[4]_26\(17),
      O => \CurrentSprite[31]_i_287_n_0\
    );
\CurrentSprite[31]_i_288\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[4]_26\(20),
      I1 => \SOAMBuffer_reg[4]_26\(18),
      I2 => \SOAMBuffer_reg[4]_26\(17),
      I3 => \SOAMBuffer_reg[4]_26\(19),
      O => \CurrentSprite[31]_i_288_n_0\
    );
\CurrentSprite[31]_i_290\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[5]_25\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_290_n_0\
    );
\CurrentSprite[31]_i_291\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[5]_25\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_291_n_0\
    );
\CurrentSprite[31]_i_293\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_293_n_0\
    );
\CurrentSprite[31]_i_294\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[5]_25\(22),
      I2 => \SOAMBuffer_reg[5]_25\(21),
      I3 => \CurrentSprite[31]_i_564_n_0\,
      O => \CurrentSprite[31]_i_294_n_0\
    );
\CurrentSprite[31]_i_296\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[29]_1\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_296_n_0\
    );
\CurrentSprite[31]_i_297\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[29]_1\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_297_n_0\
    );
\CurrentSprite[31]_i_299\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_299_n_0\
    );
\CurrentSprite[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \CurrentSprite_reg[31]_i_14_n_2\,
      I1 => CurrentSprite255_in,
      I2 => \CurrentSprite[31]_i_16_n_0\,
      I3 => \CurrentSprite[31]_i_17_n_0\,
      I4 => \CurrentSprite[31]_i_18_n_0\,
      I5 => \CurrentSprite[31]_i_19_n_0\,
      O => \CurrentSprite[31]_i_3_n_0\
    );
\CurrentSprite[31]_i_300\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[29]_1\(22),
      I2 => \SOAMBuffer_reg[29]_1\(21),
      I3 => \CurrentSprite[31]_i_578_n_0\,
      O => \CurrentSprite[31]_i_300_n_0\
    );
\CurrentSprite[31]_i_302\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[28]_2\(21),
      I2 => \SOAMBuffer_reg[28]_2\(20),
      I3 => \SOAMBuffer_reg[28]_2\(18),
      I4 => \SOAMBuffer_reg[28]_2\(17),
      I5 => \SOAMBuffer_reg[28]_2\(19),
      O => \CurrentSprite[31]_i_302_n_0\
    );
\CurrentSprite[31]_i_303\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[28]_2\(20),
      I2 => \SOAMBuffer_reg[28]_2\(19),
      I3 => \SOAMBuffer_reg[28]_2\(17),
      I4 => \SOAMBuffer_reg[28]_2\(18),
      O => \CurrentSprite[31]_i_303_n_0\
    );
\CurrentSprite[31]_i_304\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[28]_2\(19),
      I2 => \SOAMBuffer_reg[28]_2\(18),
      I3 => \SOAMBuffer_reg[28]_2\(17),
      O => \CurrentSprite[31]_i_304_n_0\
    );
\CurrentSprite[31]_i_305\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[28]_2\(18),
      I2 => \SOAMBuffer_reg[28]_2\(17),
      O => \CurrentSprite[31]_i_305_n_0\
    );
\CurrentSprite[31]_i_306\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[28]_2\(20),
      I1 => \SOAMBuffer_reg[28]_2\(18),
      I2 => \SOAMBuffer_reg[28]_2\(17),
      I3 => \SOAMBuffer_reg[28]_2\(19),
      O => \CurrentSprite[31]_i_306_n_0\
    );
\CurrentSprite[31]_i_307\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[28]_2\(20),
      I2 => \SOAMBuffer_reg[28]_2\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_307_n_0\
    );
\CurrentSprite[31]_i_308\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[28]_2\(18),
      I2 => \SOAMBuffer_reg[28]_2\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_308_n_0\
    );
\CurrentSprite[31]_i_309\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[28]_2\(16),
      I2 => \SOAMBuffer_reg[28]_2\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_309_n_0\
    );
\CurrentSprite[31]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite279_in,
      I1 => \CurrentSprite_reg[31]_i_111_n_2\,
      O => \CurrentSprite[31]_i_31_n_0\
    );
\CurrentSprite[31]_i_310\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[28]_2\(14),
      I2 => \SOAMBuffer_reg[28]_2\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_310_n_0\
    );
\CurrentSprite[31]_i_311\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[28]_2\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[28]_2\(21),
      O => \CurrentSprite[31]_i_311_n_0\
    );
\CurrentSprite[31]_i_312\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[28]_2\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[28]_2\(19),
      O => \CurrentSprite[31]_i_312_n_0\
    );
\CurrentSprite[31]_i_313\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[28]_2\(16),
      I2 => \SOAMBuffer_reg[28]_2\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_313_n_0\
    );
\CurrentSprite[31]_i_314\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[28]_2\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[28]_2\(15),
      O => \CurrentSprite[31]_i_314_n_0\
    );
\CurrentSprite[31]_i_316\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[30]_0\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_316_n_0\
    );
\CurrentSprite[31]_i_317\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[30]_0\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_317_n_0\
    );
\CurrentSprite[31]_i_319\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_319_n_0\
    );
\CurrentSprite[31]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite27_in,
      I1 => \CurrentSprite_reg[31]_i_113_n_2\,
      O => \CurrentSprite[31]_i_32_n_0\
    );
\CurrentSprite[31]_i_320\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[30]_0\(22),
      I2 => \SOAMBuffer_reg[30]_0\(21),
      I3 => \CurrentSprite[31]_i_596_n_0\,
      O => \CurrentSprite[31]_i_320_n_0\
    );
\CurrentSprite[31]_i_322\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[0]_30\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_322_n_0\
    );
\CurrentSprite[31]_i_323\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[0]_30\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_323_n_0\
    );
\CurrentSprite[31]_i_325\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_325_n_0\
    );
\CurrentSprite[31]_i_326\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[0]_30\(22),
      I2 => \SOAMBuffer_reg[0]_30\(21),
      I3 => \CurrentSprite[31]_i_610_n_0\,
      O => \CurrentSprite[31]_i_326_n_0\
    );
\CurrentSprite[31]_i_328\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[27]_3\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_328_n_0\
    );
\CurrentSprite[31]_i_329\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[27]_3\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_329_n_0\
    );
\CurrentSprite[31]_i_331\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_331_n_0\
    );
\CurrentSprite[31]_i_332\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[27]_3\(22),
      I2 => \SOAMBuffer_reg[27]_3\(21),
      I3 => \CurrentSprite[31]_i_624_n_0\,
      O => \CurrentSprite[31]_i_332_n_0\
    );
\CurrentSprite[31]_i_334\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[25]_5\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_334_n_0\
    );
\CurrentSprite[31]_i_335\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[25]_5\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_335_n_0\
    );
\CurrentSprite[31]_i_337\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_337_n_0\
    );
\CurrentSprite[31]_i_338\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[25]_5\(22),
      I2 => \SOAMBuffer_reg[25]_5\(21),
      I3 => \CurrentSprite[31]_i_638_n_0\,
      O => \CurrentSprite[31]_i_338_n_0\
    );
\CurrentSprite[31]_i_340\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[21]_9\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_340_n_0\
    );
\CurrentSprite[31]_i_341\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[21]_9\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_341_n_0\
    );
\CurrentSprite[31]_i_343\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_343_n_0\
    );
\CurrentSprite[31]_i_344\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[21]_9\(22),
      I2 => \SOAMBuffer_reg[21]_9\(21),
      I3 => \CurrentSprite[31]_i_652_n_0\,
      O => \CurrentSprite[31]_i_344_n_0\
    );
\CurrentSprite[31]_i_346\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[20]_10\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_346_n_0\
    );
\CurrentSprite[31]_i_347\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[20]_10\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_347_n_0\
    );
\CurrentSprite[31]_i_349\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_349_n_0\
    );
\CurrentSprite[31]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      O => \CurrentSprite[31]_i_35_n_0\
    );
\CurrentSprite[31]_i_350\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[20]_10\(22),
      I2 => \SOAMBuffer_reg[20]_10\(21),
      I3 => \CurrentSprite[31]_i_666_n_0\,
      O => \CurrentSprite[31]_i_350_n_0\
    );
\CurrentSprite[31]_i_352\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[23]_7\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_352_n_0\
    );
\CurrentSprite[31]_i_353\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[23]_7\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_353_n_0\
    );
\CurrentSprite[31]_i_355\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_355_n_0\
    );
\CurrentSprite[31]_i_356\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[23]_7\(22),
      I2 => \SOAMBuffer_reg[23]_7\(21),
      I3 => \CurrentSprite[31]_i_680_n_0\,
      O => \CurrentSprite[31]_i_356_n_0\
    );
\CurrentSprite[31]_i_358\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[22]_8\(21),
      I2 => \SOAMBuffer_reg[22]_8\(20),
      I3 => \SOAMBuffer_reg[22]_8\(18),
      I4 => \SOAMBuffer_reg[22]_8\(17),
      I5 => \SOAMBuffer_reg[22]_8\(19),
      O => \CurrentSprite[31]_i_358_n_0\
    );
\CurrentSprite[31]_i_359\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[22]_8\(20),
      I2 => \SOAMBuffer_reg[22]_8\(19),
      I3 => \SOAMBuffer_reg[22]_8\(17),
      I4 => \SOAMBuffer_reg[22]_8\(18),
      O => \CurrentSprite[31]_i_359_n_0\
    );
\CurrentSprite[31]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite294_in,
      I1 => \CurrentSprite_reg[31]_i_123_n_2\,
      O => \CurrentSprite[31]_i_36_n_0\
    );
\CurrentSprite[31]_i_360\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[22]_8\(19),
      I2 => \SOAMBuffer_reg[22]_8\(18),
      I3 => \SOAMBuffer_reg[22]_8\(17),
      O => \CurrentSprite[31]_i_360_n_0\
    );
\CurrentSprite[31]_i_361\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[22]_8\(18),
      I2 => \SOAMBuffer_reg[22]_8\(17),
      O => \CurrentSprite[31]_i_361_n_0\
    );
\CurrentSprite[31]_i_362\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[22]_8\(20),
      I1 => \SOAMBuffer_reg[22]_8\(18),
      I2 => \SOAMBuffer_reg[22]_8\(17),
      I3 => \SOAMBuffer_reg[22]_8\(19),
      O => \CurrentSprite[31]_i_362_n_0\
    );
\CurrentSprite[31]_i_363\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[22]_8\(20),
      I2 => \SOAMBuffer_reg[22]_8\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_363_n_0\
    );
\CurrentSprite[31]_i_364\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[22]_8\(18),
      I2 => \SOAMBuffer_reg[22]_8\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_364_n_0\
    );
\CurrentSprite[31]_i_365\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[22]_8\(16),
      I2 => \SOAMBuffer_reg[22]_8\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_365_n_0\
    );
\CurrentSprite[31]_i_366\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[22]_8\(14),
      I2 => \SOAMBuffer_reg[22]_8\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_366_n_0\
    );
\CurrentSprite[31]_i_367\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[22]_8\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[22]_8\(21),
      O => \CurrentSprite[31]_i_367_n_0\
    );
\CurrentSprite[31]_i_368\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[22]_8\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[22]_8\(19),
      O => \CurrentSprite[31]_i_368_n_0\
    );
\CurrentSprite[31]_i_369\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[22]_8\(16),
      I2 => \SOAMBuffer_reg[22]_8\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_369_n_0\
    );
\CurrentSprite[31]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_124_n_0\,
      I1 => CurrentSprite213_in,
      I2 => \CurrentSprite_reg[31]_i_126_n_2\,
      I3 => \CurrentSprite[31]_i_127_n_0\,
      I4 => CurrentSprite219_in,
      I5 => \CurrentSprite_reg[31]_i_129_n_2\,
      O => \CurrentSprite[31]_i_37_n_0\
    );
\CurrentSprite[31]_i_370\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[22]_8\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[22]_8\(15),
      O => \CurrentSprite[31]_i_370_n_0\
    );
\CurrentSprite[31]_i_372\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[19]_11\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_372_n_0\
    );
\CurrentSprite[31]_i_373\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[19]_11\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_373_n_0\
    );
\CurrentSprite[31]_i_375\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_375_n_0\
    );
\CurrentSprite[31]_i_376\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[19]_11\(22),
      I2 => \SOAMBuffer_reg[19]_11\(21),
      I3 => \CurrentSprite[31]_i_698_n_0\,
      O => \CurrentSprite[31]_i_376_n_0\
    );
\CurrentSprite[31]_i_378\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[16]_14\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_378_n_0\
    );
\CurrentSprite[31]_i_379\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[16]_14\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_379_n_0\
    );
\CurrentSprite[31]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite231_in,
      I1 => \CurrentSprite_reg[31]_i_131_n_2\,
      O => \CurrentSprite[31]_i_38_n_0\
    );
\CurrentSprite[31]_i_381\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_381_n_0\
    );
\CurrentSprite[31]_i_382\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[16]_14\(22),
      I2 => \SOAMBuffer_reg[16]_14\(21),
      I3 => \CurrentSprite[31]_i_712_n_0\,
      O => \CurrentSprite[31]_i_382_n_0\
    );
\CurrentSprite[31]_i_384\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[18]_12\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_384_n_0\
    );
\CurrentSprite[31]_i_385\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[18]_12\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_385_n_0\
    );
\CurrentSprite[31]_i_387\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_387_n_0\
    );
\CurrentSprite[31]_i_388\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[18]_12\(22),
      I2 => \SOAMBuffer_reg[18]_12\(21),
      I3 => \CurrentSprite[31]_i_726_n_0\,
      O => \CurrentSprite[31]_i_388_n_0\
    );
\CurrentSprite[31]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite234_in,
      I1 => \CurrentSprite_reg[31]_i_133_n_2\,
      O => \CurrentSprite[31]_i_39_n_0\
    );
\CurrentSprite[31]_i_390\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_390_n_0\
    );
\CurrentSprite[31]_i_391\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[17]_13\(22),
      I2 => \SOAMBuffer_reg[17]_13\(21),
      I3 => \CurrentSprite[31]_i_732_n_0\,
      O => \CurrentSprite[31]_i_391_n_0\
    );
\CurrentSprite[31]_i_393\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[17]_13\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_393_n_0\
    );
\CurrentSprite[31]_i_394\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[17]_13\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_394_n_0\
    );
\CurrentSprite[31]_i_396\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_396_n_0\
    );
\CurrentSprite[31]_i_397\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[26]_4\(22),
      I2 => \SOAMBuffer_reg[26]_4\(21),
      I3 => \CurrentSprite[31]_i_746_n_0\,
      O => \CurrentSprite[31]_i_397_n_0\
    );
\CurrentSprite[31]_i_399\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[26]_4\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_399_n_0\
    );
\CurrentSprite[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEFEFFFFEEFE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_20_n_0\,
      I1 => \CurrentSprite[31]_i_21_n_0\,
      I2 => CurrentSprite22_in,
      I3 => \CurrentSprite_reg[31]_i_23_n_2\,
      I4 => CurrentSprite291_in,
      I5 => \CurrentSprite_reg[31]_i_25_n_2\,
      O => \CurrentSprite[31]_i_4_n_0\
    );
\CurrentSprite[31]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite225_in,
      I1 => \CurrentSprite_reg[31]_i_135_n_2\,
      O => \CurrentSprite[31]_i_40_n_0\
    );
\CurrentSprite[31]_i_400\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[26]_4\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_400_n_0\
    );
\CurrentSprite[31]_i_402\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[24]_6\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_402_n_0\
    );
\CurrentSprite[31]_i_403\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[24]_6\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_403_n_0\
    );
\CurrentSprite[31]_i_405\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_405_n_0\
    );
\CurrentSprite[31]_i_406\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[24]_6\(22),
      I2 => \SOAMBuffer_reg[24]_6\(21),
      I3 => \CurrentSprite[31]_i_768_n_0\,
      O => \CurrentSprite[31]_i_406_n_0\
    );
\CurrentSprite[31]_i_408\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_408_n_0\
    );
\CurrentSprite[31]_i_409\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[8]_22\(22),
      I2 => \SOAMBuffer_reg[8]_22\(21),
      I3 => \CurrentSprite[31]_i_774_n_0\,
      O => \CurrentSprite[31]_i_409_n_0\
    );
\CurrentSprite[31]_i_411\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[8]_22\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_411_n_0\
    );
\CurrentSprite[31]_i_412\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[8]_22\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_412_n_0\
    );
\CurrentSprite[31]_i_414\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[11]_19\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_414_n_0\
    );
\CurrentSprite[31]_i_415\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[11]_19\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_415_n_0\
    );
\CurrentSprite[31]_i_417\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_417_n_0\
    );
\CurrentSprite[31]_i_418\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[11]_19\(22),
      I2 => \SOAMBuffer_reg[11]_19\(21),
      I3 => \CurrentSprite[31]_i_796_n_0\,
      O => \CurrentSprite[31]_i_418_n_0\
    );
\CurrentSprite[31]_i_420\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[3]_27\(21),
      I2 => \SOAMBuffer_reg[3]_27\(20),
      I3 => \SOAMBuffer_reg[3]_27\(18),
      I4 => \SOAMBuffer_reg[3]_27\(17),
      I5 => \SOAMBuffer_reg[3]_27\(19),
      O => \CurrentSprite[31]_i_420_n_0\
    );
\CurrentSprite[31]_i_421\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[3]_27\(20),
      I2 => \SOAMBuffer_reg[3]_27\(19),
      I3 => \SOAMBuffer_reg[3]_27\(17),
      I4 => \SOAMBuffer_reg[3]_27\(18),
      O => \CurrentSprite[31]_i_421_n_0\
    );
\CurrentSprite[31]_i_422\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[3]_27\(19),
      I2 => \SOAMBuffer_reg[3]_27\(18),
      I3 => \SOAMBuffer_reg[3]_27\(17),
      O => \CurrentSprite[31]_i_422_n_0\
    );
\CurrentSprite[31]_i_423\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[3]_27\(18),
      I2 => \SOAMBuffer_reg[3]_27\(17),
      O => \CurrentSprite[31]_i_423_n_0\
    );
\CurrentSprite[31]_i_424\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[3]_27\(20),
      I1 => \SOAMBuffer_reg[3]_27\(18),
      I2 => \SOAMBuffer_reg[3]_27\(17),
      I3 => \SOAMBuffer_reg[3]_27\(19),
      O => \CurrentSprite[31]_i_424_n_0\
    );
\CurrentSprite[31]_i_425\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[3]_27\(20),
      I2 => \SOAMBuffer_reg[3]_27\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_425_n_0\
    );
\CurrentSprite[31]_i_426\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[3]_27\(18),
      I2 => \SOAMBuffer_reg[3]_27\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_426_n_0\
    );
\CurrentSprite[31]_i_427\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[3]_27\(16),
      I2 => \SOAMBuffer_reg[3]_27\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_427_n_0\
    );
\CurrentSprite[31]_i_428\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[3]_27\(14),
      I2 => \SOAMBuffer_reg[3]_27\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_428_n_0\
    );
\CurrentSprite[31]_i_429\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[3]_27\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[3]_27\(21),
      O => \CurrentSprite[31]_i_429_n_0\
    );
\CurrentSprite[31]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEAEFFAE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_142_n_0\,
      I1 => CurrentSprite237_in,
      I2 => \CurrentSprite_reg[31]_i_144_n_2\,
      I3 => CurrentSprite246_in,
      I4 => \CurrentSprite_reg[31]_i_146_n_2\,
      I5 => \CurrentSprite[31]_i_147_n_0\,
      O => \CurrentSprite[31]_i_43_n_0\
    );
\CurrentSprite[31]_i_430\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[3]_27\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[3]_27\(19),
      O => \CurrentSprite[31]_i_430_n_0\
    );
\CurrentSprite[31]_i_431\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[3]_27\(16),
      I2 => \SOAMBuffer_reg[3]_27\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_431_n_0\
    );
\CurrentSprite[31]_i_432\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[3]_27\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[3]_27\(15),
      O => \CurrentSprite[31]_i_432_n_0\
    );
\CurrentSprite[31]_i_433\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[13]_17\(17),
      O => \CurrentSprite[31]_i_433_n_0\
    );
\CurrentSprite[31]_i_434\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[13]_17\(16),
      O => \CurrentSprite[31]_i_434_n_0\
    );
\CurrentSprite[31]_i_435\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[13]_17\(15),
      O => \CurrentSprite[31]_i_435_n_0\
    );
\CurrentSprite[31]_i_436\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[13]_17\(14),
      O => \CurrentSprite[31]_i_436_n_0\
    );
\CurrentSprite[31]_i_437\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[12]_18\(20),
      I2 => \SOAMBuffer_reg[12]_18\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_437_n_0\
    );
\CurrentSprite[31]_i_438\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[12]_18\(18),
      I2 => \SOAMBuffer_reg[12]_18\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_438_n_0\
    );
\CurrentSprite[31]_i_439\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[12]_18\(16),
      I2 => \SOAMBuffer_reg[12]_18\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_439_n_0\
    );
\CurrentSprite[31]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(31),
      I1 => \SOAMBuffer_reg[16]_14\(31),
      I2 => \SOAMBuffer_reg[15]_15\(31),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[31]_i_44_n_0\
    );
\CurrentSprite[31]_i_440\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[12]_18\(14),
      I2 => \SOAMBuffer_reg[12]_18\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_440_n_0\
    );
\CurrentSprite[31]_i_441\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[12]_18\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[12]_18\(21),
      O => \CurrentSprite[31]_i_441_n_0\
    );
\CurrentSprite[31]_i_442\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[12]_18\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[12]_18\(19),
      O => \CurrentSprite[31]_i_442_n_0\
    );
\CurrentSprite[31]_i_443\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[12]_18\(16),
      I2 => \SOAMBuffer_reg[12]_18\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_443_n_0\
    );
\CurrentSprite[31]_i_444\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[12]_18\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[12]_18\(15),
      O => \CurrentSprite[31]_i_444_n_0\
    );
\CurrentSprite[31]_i_446\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[12]_18\(21),
      I2 => \SOAMBuffer_reg[12]_18\(20),
      I3 => \SOAMBuffer_reg[12]_18\(18),
      I4 => \SOAMBuffer_reg[12]_18\(17),
      I5 => \SOAMBuffer_reg[12]_18\(19),
      O => \CurrentSprite[31]_i_446_n_0\
    );
\CurrentSprite[31]_i_447\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[12]_18\(20),
      I2 => \SOAMBuffer_reg[12]_18\(19),
      I3 => \SOAMBuffer_reg[12]_18\(17),
      I4 => \SOAMBuffer_reg[12]_18\(18),
      O => \CurrentSprite[31]_i_447_n_0\
    );
\CurrentSprite[31]_i_448\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[12]_18\(19),
      I2 => \SOAMBuffer_reg[12]_18\(18),
      I3 => \SOAMBuffer_reg[12]_18\(17),
      O => \CurrentSprite[31]_i_448_n_0\
    );
\CurrentSprite[31]_i_449\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[12]_18\(18),
      I2 => \SOAMBuffer_reg[12]_18\(17),
      O => \CurrentSprite[31]_i_449_n_0\
    );
\CurrentSprite[31]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(31),
      I1 => \SOAMBuffer_reg[22]_8\(31),
      I2 => \SOAMBuffer_reg[21]_9\(31),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[31]_i_45_n_0\
    );
\CurrentSprite[31]_i_450\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[12]_18\(20),
      I1 => \SOAMBuffer_reg[12]_18\(18),
      I2 => \SOAMBuffer_reg[12]_18\(17),
      I3 => \SOAMBuffer_reg[12]_18\(19),
      O => \CurrentSprite[31]_i_450_n_0\
    );
\CurrentSprite[31]_i_451\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[15]_15\(20),
      I2 => \SOAMBuffer_reg[15]_15\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_451_n_0\
    );
\CurrentSprite[31]_i_452\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[15]_15\(18),
      I2 => \SOAMBuffer_reg[15]_15\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_452_n_0\
    );
\CurrentSprite[31]_i_453\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[15]_15\(16),
      I2 => \SOAMBuffer_reg[15]_15\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_453_n_0\
    );
\CurrentSprite[31]_i_454\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[15]_15\(14),
      I2 => \SOAMBuffer_reg[15]_15\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_454_n_0\
    );
\CurrentSprite[31]_i_455\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[15]_15\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[15]_15\(21),
      O => \CurrentSprite[31]_i_455_n_0\
    );
\CurrentSprite[31]_i_456\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[15]_15\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[15]_15\(19),
      O => \CurrentSprite[31]_i_456_n_0\
    );
\CurrentSprite[31]_i_457\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[15]_15\(16),
      I2 => \SOAMBuffer_reg[15]_15\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_457_n_0\
    );
\CurrentSprite[31]_i_458\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[15]_15\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[15]_15\(15),
      O => \CurrentSprite[31]_i_458_n_0\
    );
\CurrentSprite[31]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => CurrentSprite240_in,
      I1 => \CurrentSprite_reg[31]_i_151_n_2\,
      I2 => CurrentSprite237_in,
      I3 => \CurrentSprite_reg[31]_i_144_n_2\,
      I4 => \CurrentSprite_reg[31]_i_152_n_2\,
      I5 => CurrentSprite243_in,
      O => \CurrentSprite[31]_i_46_n_0\
    );
\CurrentSprite[31]_i_460\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[15]_15\(21),
      I2 => \SOAMBuffer_reg[15]_15\(20),
      I3 => \SOAMBuffer_reg[15]_15\(18),
      I4 => \SOAMBuffer_reg[15]_15\(17),
      I5 => \SOAMBuffer_reg[15]_15\(19),
      O => \CurrentSprite[31]_i_460_n_0\
    );
\CurrentSprite[31]_i_461\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[15]_15\(20),
      I2 => \SOAMBuffer_reg[15]_15\(19),
      I3 => \SOAMBuffer_reg[15]_15\(17),
      I4 => \SOAMBuffer_reg[15]_15\(18),
      O => \CurrentSprite[31]_i_461_n_0\
    );
\CurrentSprite[31]_i_462\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[15]_15\(19),
      I2 => \SOAMBuffer_reg[15]_15\(18),
      I3 => \SOAMBuffer_reg[15]_15\(17),
      O => \CurrentSprite[31]_i_462_n_0\
    );
\CurrentSprite[31]_i_463\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[15]_15\(18),
      I2 => \SOAMBuffer_reg[15]_15\(17),
      O => \CurrentSprite[31]_i_463_n_0\
    );
\CurrentSprite[31]_i_464\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[15]_15\(20),
      I1 => \SOAMBuffer_reg[15]_15\(18),
      I2 => \SOAMBuffer_reg[15]_15\(17),
      I3 => \SOAMBuffer_reg[15]_15\(19),
      O => \CurrentSprite[31]_i_464_n_0\
    );
\CurrentSprite[31]_i_465\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[14]_16\(20),
      I2 => \SOAMBuffer_reg[14]_16\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_465_n_0\
    );
\CurrentSprite[31]_i_466\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[14]_16\(18),
      I2 => \SOAMBuffer_reg[14]_16\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_466_n_0\
    );
\CurrentSprite[31]_i_467\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[14]_16\(16),
      I2 => \SOAMBuffer_reg[14]_16\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_467_n_0\
    );
\CurrentSprite[31]_i_468\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[14]_16\(14),
      I2 => \SOAMBuffer_reg[14]_16\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_468_n_0\
    );
\CurrentSprite[31]_i_469\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[14]_16\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[14]_16\(21),
      O => \CurrentSprite[31]_i_469_n_0\
    );
\CurrentSprite[31]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => CurrentSprite249_in,
      I1 => \CurrentSprite_reg[31]_i_74_n_2\,
      I2 => CurrentSprite246_in,
      I3 => \CurrentSprite_reg[31]_i_146_n_2\,
      I4 => \CurrentSprite_reg[31]_i_76_n_2\,
      I5 => CurrentSprite252_in,
      O => \CurrentSprite[31]_i_47_n_0\
    );
\CurrentSprite[31]_i_470\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[14]_16\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[14]_16\(19),
      O => \CurrentSprite[31]_i_470_n_0\
    );
\CurrentSprite[31]_i_471\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[14]_16\(16),
      I2 => \SOAMBuffer_reg[14]_16\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_471_n_0\
    );
\CurrentSprite[31]_i_472\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[14]_16\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[14]_16\(15),
      O => \CurrentSprite[31]_i_472_n_0\
    );
\CurrentSprite[31]_i_474\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[14]_16\(21),
      I2 => \SOAMBuffer_reg[14]_16\(20),
      I3 => \SOAMBuffer_reg[14]_16\(18),
      I4 => \SOAMBuffer_reg[14]_16\(17),
      I5 => \SOAMBuffer_reg[14]_16\(19),
      O => \CurrentSprite[31]_i_474_n_0\
    );
\CurrentSprite[31]_i_475\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[14]_16\(20),
      I2 => \SOAMBuffer_reg[14]_16\(19),
      I3 => \SOAMBuffer_reg[14]_16\(17),
      I4 => \SOAMBuffer_reg[14]_16\(18),
      O => \CurrentSprite[31]_i_475_n_0\
    );
\CurrentSprite[31]_i_476\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[14]_16\(19),
      I2 => \SOAMBuffer_reg[14]_16\(18),
      I3 => \SOAMBuffer_reg[14]_16\(17),
      O => \CurrentSprite[31]_i_476_n_0\
    );
\CurrentSprite[31]_i_477\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[14]_16\(18),
      I2 => \SOAMBuffer_reg[14]_16\(17),
      O => \CurrentSprite[31]_i_477_n_0\
    );
\CurrentSprite[31]_i_478\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(20),
      I1 => \SOAMBuffer_reg[14]_16\(18),
      I2 => \SOAMBuffer_reg[14]_16\(17),
      I3 => \SOAMBuffer_reg[14]_16\(19),
      O => \CurrentSprite[31]_i_478_n_0\
    );
\CurrentSprite[31]_i_479\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[10]_20\(20),
      I2 => \SOAMBuffer_reg[10]_20\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_479_n_0\
    );
\CurrentSprite[31]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(31),
      I1 => \SOAMBuffer_reg[19]_11\(31),
      I2 => \SOAMBuffer_reg[18]_12\(31),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[31]_i_48_n_0\
    );
\CurrentSprite[31]_i_480\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[10]_20\(18),
      I2 => \SOAMBuffer_reg[10]_20\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_480_n_0\
    );
\CurrentSprite[31]_i_481\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[10]_20\(16),
      I2 => \SOAMBuffer_reg[10]_20\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_481_n_0\
    );
\CurrentSprite[31]_i_482\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[10]_20\(14),
      I2 => \SOAMBuffer_reg[10]_20\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_482_n_0\
    );
\CurrentSprite[31]_i_483\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[10]_20\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[10]_20\(21),
      O => \CurrentSprite[31]_i_483_n_0\
    );
\CurrentSprite[31]_i_484\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[10]_20\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[10]_20\(19),
      O => \CurrentSprite[31]_i_484_n_0\
    );
\CurrentSprite[31]_i_485\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[10]_20\(16),
      I2 => \SOAMBuffer_reg[10]_20\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_485_n_0\
    );
\CurrentSprite[31]_i_486\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[10]_20\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[10]_20\(15),
      O => \CurrentSprite[31]_i_486_n_0\
    );
\CurrentSprite[31]_i_488\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[10]_20\(21),
      I2 => \SOAMBuffer_reg[10]_20\(20),
      I3 => \SOAMBuffer_reg[10]_20\(18),
      I4 => \SOAMBuffer_reg[10]_20\(17),
      I5 => \SOAMBuffer_reg[10]_20\(19),
      O => \CurrentSprite[31]_i_488_n_0\
    );
\CurrentSprite[31]_i_489\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[10]_20\(20),
      I2 => \SOAMBuffer_reg[10]_20\(19),
      I3 => \SOAMBuffer_reg[10]_20\(17),
      I4 => \SOAMBuffer_reg[10]_20\(18),
      O => \CurrentSprite[31]_i_489_n_0\
    );
\CurrentSprite[31]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_46_n_0\,
      I1 => \CurrentSprite[31]_i_38_n_0\,
      I2 => CurrentSprite228_in,
      I3 => \CurrentSprite_reg[31]_i_41_n_2\,
      I4 => \CurrentSprite[31]_i_39_n_0\,
      I5 => \CurrentSprite[31]_i_47_n_0\,
      O => \CurrentSprite[31]_i_49_n_0\
    );
\CurrentSprite[31]_i_490\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[10]_20\(19),
      I2 => \SOAMBuffer_reg[10]_20\(18),
      I3 => \SOAMBuffer_reg[10]_20\(17),
      O => \CurrentSprite[31]_i_490_n_0\
    );
\CurrentSprite[31]_i_491\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[10]_20\(18),
      I2 => \SOAMBuffer_reg[10]_20\(17),
      O => \CurrentSprite[31]_i_491_n_0\
    );
\CurrentSprite[31]_i_492\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[10]_20\(20),
      I1 => \SOAMBuffer_reg[10]_20\(18),
      I2 => \SOAMBuffer_reg[10]_20\(17),
      I3 => \SOAMBuffer_reg[10]_20\(19),
      O => \CurrentSprite[31]_i_492_n_0\
    );
\CurrentSprite[31]_i_493\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[9]_21\(20),
      I2 => \SOAMBuffer_reg[9]_21\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_493_n_0\
    );
\CurrentSprite[31]_i_494\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[9]_21\(18),
      I2 => \SOAMBuffer_reg[9]_21\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_494_n_0\
    );
\CurrentSprite[31]_i_495\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[9]_21\(16),
      I2 => \SOAMBuffer_reg[9]_21\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_495_n_0\
    );
\CurrentSprite[31]_i_496\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[9]_21\(14),
      I2 => \SOAMBuffer_reg[9]_21\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_496_n_0\
    );
\CurrentSprite[31]_i_497\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[9]_21\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[9]_21\(21),
      O => \CurrentSprite[31]_i_497_n_0\
    );
\CurrentSprite[31]_i_498\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[9]_21\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[9]_21\(19),
      O => \CurrentSprite[31]_i_498_n_0\
    );
\CurrentSprite[31]_i_499\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[9]_21\(16),
      I2 => \SOAMBuffer_reg[9]_21\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_499_n_0\
    );
\CurrentSprite[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEAEFFAE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_26_n_0\,
      I1 => CurrentSprite273_in,
      I2 => \CurrentSprite_reg[31]_i_28_n_2\,
      I3 => CurrentSprite282_in,
      I4 => \CurrentSprite_reg[31]_i_30_n_2\,
      I5 => \CurrentSprite[31]_i_31_n_0\,
      O => \CurrentSprite[31]_i_5_n_0\
    );
\CurrentSprite[31]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(31),
      I1 => \SOAMBuffer_reg[25]_5\(31),
      I2 => \SOAMBuffer_reg[24]_6\(31),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[31]_i_50_n_0\
    );
\CurrentSprite[31]_i_500\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[9]_21\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[9]_21\(15),
      O => \CurrentSprite[31]_i_500_n_0\
    );
\CurrentSprite[31]_i_502\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[9]_21\(21),
      I2 => \SOAMBuffer_reg[9]_21\(20),
      I3 => \SOAMBuffer_reg[9]_21\(18),
      I4 => \SOAMBuffer_reg[9]_21\(17),
      I5 => \SOAMBuffer_reg[9]_21\(19),
      O => \CurrentSprite[31]_i_502_n_0\
    );
\CurrentSprite[31]_i_503\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[9]_21\(20),
      I2 => \SOAMBuffer_reg[9]_21\(19),
      I3 => \SOAMBuffer_reg[9]_21\(17),
      I4 => \SOAMBuffer_reg[9]_21\(18),
      O => \CurrentSprite[31]_i_503_n_0\
    );
\CurrentSprite[31]_i_504\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[9]_21\(19),
      I2 => \SOAMBuffer_reg[9]_21\(18),
      I3 => \SOAMBuffer_reg[9]_21\(17),
      O => \CurrentSprite[31]_i_504_n_0\
    );
\CurrentSprite[31]_i_505\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[9]_21\(18),
      I2 => \SOAMBuffer_reg[9]_21\(17),
      O => \CurrentSprite[31]_i_505_n_0\
    );
\CurrentSprite[31]_i_506\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[9]_21\(20),
      I1 => \SOAMBuffer_reg[9]_21\(18),
      I2 => \SOAMBuffer_reg[9]_21\(17),
      I3 => \SOAMBuffer_reg[9]_21\(19),
      O => \CurrentSprite[31]_i_506_n_0\
    );
\CurrentSprite[31]_i_507\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[2]_28\(20),
      I2 => \SOAMBuffer_reg[2]_28\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_507_n_0\
    );
\CurrentSprite[31]_i_508\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[2]_28\(18),
      I2 => \SOAMBuffer_reg[2]_28\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_508_n_0\
    );
\CurrentSprite[31]_i_509\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[2]_28\(16),
      I2 => \SOAMBuffer_reg[2]_28\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_509_n_0\
    );
\CurrentSprite[31]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(31),
      I3 => \SOAMBuffer_reg_n_0_[31][31]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(31),
      O => \CurrentSprite[31]_i_51_n_0\
    );
\CurrentSprite[31]_i_510\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[2]_28\(14),
      I2 => \SOAMBuffer_reg[2]_28\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_510_n_0\
    );
\CurrentSprite[31]_i_511\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[2]_28\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[2]_28\(21),
      O => \CurrentSprite[31]_i_511_n_0\
    );
\CurrentSprite[31]_i_512\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[2]_28\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[2]_28\(19),
      O => \CurrentSprite[31]_i_512_n_0\
    );
\CurrentSprite[31]_i_513\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[2]_28\(16),
      I2 => \SOAMBuffer_reg[2]_28\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_513_n_0\
    );
\CurrentSprite[31]_i_514\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[2]_28\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[2]_28\(15),
      O => \CurrentSprite[31]_i_514_n_0\
    );
\CurrentSprite[31]_i_516\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[2]_28\(21),
      I2 => \SOAMBuffer_reg[2]_28\(20),
      I3 => \SOAMBuffer_reg[2]_28\(18),
      I4 => \SOAMBuffer_reg[2]_28\(17),
      I5 => \SOAMBuffer_reg[2]_28\(19),
      O => \CurrentSprite[31]_i_516_n_0\
    );
\CurrentSprite[31]_i_517\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[2]_28\(20),
      I2 => \SOAMBuffer_reg[2]_28\(19),
      I3 => \SOAMBuffer_reg[2]_28\(17),
      I4 => \SOAMBuffer_reg[2]_28\(18),
      O => \CurrentSprite[31]_i_517_n_0\
    );
\CurrentSprite[31]_i_518\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[2]_28\(19),
      I2 => \SOAMBuffer_reg[2]_28\(18),
      I3 => \SOAMBuffer_reg[2]_28\(17),
      O => \CurrentSprite[31]_i_518_n_0\
    );
\CurrentSprite[31]_i_519\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[2]_28\(18),
      I2 => \SOAMBuffer_reg[2]_28\(17),
      O => \CurrentSprite[31]_i_519_n_0\
    );
\CurrentSprite[31]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => CurrentSprite213_in,
      I1 => \CurrentSprite_reg[31]_i_126_n_2\,
      I2 => CurrentSprite210_in,
      I3 => \CurrentSprite_reg[31]_i_33_n_2\,
      I4 => \CurrentSprite_reg[31]_i_156_n_2\,
      I5 => CurrentSprite216_in,
      O => \CurrentSprite[31]_i_52_n_0\
    );
\CurrentSprite[31]_i_520\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(20),
      I1 => \SOAMBuffer_reg[2]_28\(18),
      I2 => \SOAMBuffer_reg[2]_28\(17),
      I3 => \SOAMBuffer_reg[2]_28\(19),
      O => \CurrentSprite[31]_i_520_n_0\
    );
\CurrentSprite[31]_i_521\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => L(17),
      O => \CurrentSprite[31]_i_521_n_0\
    );
\CurrentSprite[31]_i_522\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => L(16),
      O => \CurrentSprite[31]_i_522_n_0\
    );
\CurrentSprite[31]_i_523\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => L(15),
      O => \CurrentSprite[31]_i_523_n_0\
    );
\CurrentSprite[31]_i_524\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => L(14),
      O => \CurrentSprite[31]_i_524_n_0\
    );
\CurrentSprite[31]_i_525\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[1]_29\(17),
      O => \CurrentSprite[31]_i_525_n_0\
    );
\CurrentSprite[31]_i_526\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[1]_29\(16),
      O => \CurrentSprite[31]_i_526_n_0\
    );
\CurrentSprite[31]_i_527\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[1]_29\(15),
      O => \CurrentSprite[31]_i_527_n_0\
    );
\CurrentSprite[31]_i_528\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[1]_29\(14),
      O => \CurrentSprite[31]_i_528_n_0\
    );
\CurrentSprite[31]_i_529\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[6]_24\(20),
      I2 => \SOAMBuffer_reg[6]_24\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_529_n_0\
    );
\CurrentSprite[31]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => CurrentSprite222_in,
      I1 => \CurrentSprite_reg[31]_i_159_n_2\,
      I2 => CurrentSprite219_in,
      I3 => \CurrentSprite_reg[31]_i_129_n_2\,
      I4 => \CurrentSprite_reg[31]_i_135_n_2\,
      I5 => CurrentSprite225_in,
      O => \CurrentSprite[31]_i_53_n_0\
    );
\CurrentSprite[31]_i_530\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[6]_24\(18),
      I2 => \SOAMBuffer_reg[6]_24\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_530_n_0\
    );
\CurrentSprite[31]_i_531\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[6]_24\(16),
      I2 => \SOAMBuffer_reg[6]_24\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_531_n_0\
    );
\CurrentSprite[31]_i_532\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[6]_24\(14),
      I2 => \SOAMBuffer_reg[6]_24\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_532_n_0\
    );
\CurrentSprite[31]_i_533\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[6]_24\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[6]_24\(21),
      O => \CurrentSprite[31]_i_533_n_0\
    );
\CurrentSprite[31]_i_534\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[6]_24\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[6]_24\(19),
      O => \CurrentSprite[31]_i_534_n_0\
    );
\CurrentSprite[31]_i_535\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[6]_24\(16),
      I2 => \SOAMBuffer_reg[6]_24\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_535_n_0\
    );
\CurrentSprite[31]_i_536\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[6]_24\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[6]_24\(15),
      O => \CurrentSprite[31]_i_536_n_0\
    );
\CurrentSprite[31]_i_538\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[6]_24\(21),
      I2 => \SOAMBuffer_reg[6]_24\(20),
      I3 => \SOAMBuffer_reg[6]_24\(18),
      I4 => \SOAMBuffer_reg[6]_24\(17),
      I5 => \SOAMBuffer_reg[6]_24\(19),
      O => \CurrentSprite[31]_i_538_n_0\
    );
\CurrentSprite[31]_i_539\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[6]_24\(20),
      I2 => \SOAMBuffer_reg[6]_24\(19),
      I3 => \SOAMBuffer_reg[6]_24\(17),
      I4 => \SOAMBuffer_reg[6]_24\(18),
      O => \CurrentSprite[31]_i_539_n_0\
    );
\CurrentSprite[31]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(31),
      I1 => \SOAMBuffer_reg[28]_2\(31),
      I2 => \SOAMBuffer_reg[27]_3\(31),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[31]_i_54_n_0\
    );
\CurrentSprite[31]_i_540\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[6]_24\(19),
      I2 => \SOAMBuffer_reg[6]_24\(18),
      I3 => \SOAMBuffer_reg[6]_24\(17),
      O => \CurrentSprite[31]_i_540_n_0\
    );
\CurrentSprite[31]_i_541\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[6]_24\(18),
      I2 => \SOAMBuffer_reg[6]_24\(17),
      O => \CurrentSprite[31]_i_541_n_0\
    );
\CurrentSprite[31]_i_542\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[6]_24\(20),
      I1 => \SOAMBuffer_reg[6]_24\(18),
      I2 => \SOAMBuffer_reg[6]_24\(17),
      I3 => \SOAMBuffer_reg[6]_24\(19),
      O => \CurrentSprite[31]_i_542_n_0\
    );
\CurrentSprite[31]_i_543\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[7]_23\(17),
      O => \CurrentSprite[31]_i_543_n_0\
    );
\CurrentSprite[31]_i_544\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[7]_23\(16),
      O => \CurrentSprite[31]_i_544_n_0\
    );
\CurrentSprite[31]_i_545\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[7]_23\(15),
      O => \CurrentSprite[31]_i_545_n_0\
    );
\CurrentSprite[31]_i_546\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[7]_23\(14),
      O => \CurrentSprite[31]_i_546_n_0\
    );
\CurrentSprite[31]_i_547\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[4]_26\(17),
      O => \CurrentSprite[31]_i_547_n_0\
    );
\CurrentSprite[31]_i_548\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[4]_26\(16),
      O => \CurrentSprite[31]_i_548_n_0\
    );
\CurrentSprite[31]_i_549\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[4]_26\(15),
      O => \CurrentSprite[31]_i_549_n_0\
    );
\CurrentSprite[31]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => CurrentSprite267_in,
      I1 => \CurrentSprite_reg[31]_i_81_n_2\,
      I2 => CurrentSprite264_in,
      I3 => \CurrentSprite_reg[31]_i_78_n_2\,
      I4 => \CurrentSprite_reg[31]_i_162_n_2\,
      I5 => CurrentSprite270_in,
      O => \CurrentSprite[31]_i_55_n_0\
    );
\CurrentSprite[31]_i_550\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[4]_26\(14),
      O => \CurrentSprite[31]_i_550_n_0\
    );
\CurrentSprite[31]_i_551\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[5]_25\(20),
      I2 => \SOAMBuffer_reg[5]_25\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_551_n_0\
    );
\CurrentSprite[31]_i_552\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[5]_25\(18),
      I2 => \SOAMBuffer_reg[5]_25\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_552_n_0\
    );
\CurrentSprite[31]_i_553\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[5]_25\(16),
      I2 => \SOAMBuffer_reg[5]_25\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_553_n_0\
    );
\CurrentSprite[31]_i_554\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[5]_25\(14),
      I2 => \SOAMBuffer_reg[5]_25\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_554_n_0\
    );
\CurrentSprite[31]_i_555\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[5]_25\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[5]_25\(21),
      O => \CurrentSprite[31]_i_555_n_0\
    );
\CurrentSprite[31]_i_556\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[5]_25\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[5]_25\(19),
      O => \CurrentSprite[31]_i_556_n_0\
    );
\CurrentSprite[31]_i_557\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[5]_25\(16),
      I2 => \SOAMBuffer_reg[5]_25\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_557_n_0\
    );
\CurrentSprite[31]_i_558\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[5]_25\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[5]_25\(15),
      O => \CurrentSprite[31]_i_558_n_0\
    );
\CurrentSprite[31]_i_56\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite261_in,
      I1 => \CurrentSprite_reg[31]_i_165_n_2\,
      O => \CurrentSprite[31]_i_56_n_0\
    );
\CurrentSprite[31]_i_560\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[5]_25\(21),
      I2 => \SOAMBuffer_reg[5]_25\(20),
      I3 => \SOAMBuffer_reg[5]_25\(18),
      I4 => \SOAMBuffer_reg[5]_25\(17),
      I5 => \SOAMBuffer_reg[5]_25\(19),
      O => \CurrentSprite[31]_i_560_n_0\
    );
\CurrentSprite[31]_i_561\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[5]_25\(20),
      I2 => \SOAMBuffer_reg[5]_25\(19),
      I3 => \SOAMBuffer_reg[5]_25\(17),
      I4 => \SOAMBuffer_reg[5]_25\(18),
      O => \CurrentSprite[31]_i_561_n_0\
    );
\CurrentSprite[31]_i_562\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[5]_25\(19),
      I2 => \SOAMBuffer_reg[5]_25\(18),
      I3 => \SOAMBuffer_reg[5]_25\(17),
      O => \CurrentSprite[31]_i_562_n_0\
    );
\CurrentSprite[31]_i_563\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[5]_25\(18),
      I2 => \SOAMBuffer_reg[5]_25\(17),
      O => \CurrentSprite[31]_i_563_n_0\
    );
\CurrentSprite[31]_i_564\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(20),
      I1 => \SOAMBuffer_reg[5]_25\(18),
      I2 => \SOAMBuffer_reg[5]_25\(17),
      I3 => \SOAMBuffer_reg[5]_25\(19),
      O => \CurrentSprite[31]_i_564_n_0\
    );
\CurrentSprite[31]_i_565\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[29]_1\(20),
      I2 => \SOAMBuffer_reg[29]_1\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_565_n_0\
    );
\CurrentSprite[31]_i_566\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[29]_1\(18),
      I2 => \SOAMBuffer_reg[29]_1\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_566_n_0\
    );
\CurrentSprite[31]_i_567\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[29]_1\(16),
      I2 => \SOAMBuffer_reg[29]_1\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_567_n_0\
    );
\CurrentSprite[31]_i_568\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[29]_1\(14),
      I2 => \SOAMBuffer_reg[29]_1\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_568_n_0\
    );
\CurrentSprite[31]_i_569\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[29]_1\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[29]_1\(21),
      O => \CurrentSprite[31]_i_569_n_0\
    );
\CurrentSprite[31]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => CurrentSprite276_in,
      I1 => \CurrentSprite_reg[31]_i_97_n_2\,
      I2 => CurrentSprite273_in,
      I3 => \CurrentSprite_reg[31]_i_28_n_2\,
      I4 => \CurrentSprite_reg[31]_i_111_n_2\,
      I5 => CurrentSprite279_in,
      O => \CurrentSprite[31]_i_57_n_0\
    );
\CurrentSprite[31]_i_570\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[29]_1\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[29]_1\(19),
      O => \CurrentSprite[31]_i_570_n_0\
    );
\CurrentSprite[31]_i_571\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[29]_1\(16),
      I2 => \SOAMBuffer_reg[29]_1\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_571_n_0\
    );
\CurrentSprite[31]_i_572\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[29]_1\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[29]_1\(15),
      O => \CurrentSprite[31]_i_572_n_0\
    );
\CurrentSprite[31]_i_574\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[29]_1\(21),
      I2 => \SOAMBuffer_reg[29]_1\(20),
      I3 => \SOAMBuffer_reg[29]_1\(18),
      I4 => \SOAMBuffer_reg[29]_1\(17),
      I5 => \SOAMBuffer_reg[29]_1\(19),
      O => \CurrentSprite[31]_i_574_n_0\
    );
\CurrentSprite[31]_i_575\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[29]_1\(20),
      I2 => \SOAMBuffer_reg[29]_1\(19),
      I3 => \SOAMBuffer_reg[29]_1\(17),
      I4 => \SOAMBuffer_reg[29]_1\(18),
      O => \CurrentSprite[31]_i_575_n_0\
    );
\CurrentSprite[31]_i_576\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[29]_1\(19),
      I2 => \SOAMBuffer_reg[29]_1\(18),
      I3 => \SOAMBuffer_reg[29]_1\(17),
      O => \CurrentSprite[31]_i_576_n_0\
    );
\CurrentSprite[31]_i_577\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[29]_1\(18),
      I2 => \SOAMBuffer_reg[29]_1\(17),
      O => \CurrentSprite[31]_i_577_n_0\
    );
\CurrentSprite[31]_i_578\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[29]_1\(20),
      I1 => \SOAMBuffer_reg[29]_1\(18),
      I2 => \SOAMBuffer_reg[29]_1\(17),
      I3 => \SOAMBuffer_reg[29]_1\(19),
      O => \CurrentSprite[31]_i_578_n_0\
    );
\CurrentSprite[31]_i_579\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[28]_2\(17),
      O => \CurrentSprite[31]_i_579_n_0\
    );
\CurrentSprite[31]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(31),
      I1 => \SOAMBuffer_reg[10]_20\(31),
      I2 => \SOAMBuffer_reg[9]_21\(31),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[31]_i_58_n_0\
    );
\CurrentSprite[31]_i_580\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[28]_2\(16),
      O => \CurrentSprite[31]_i_580_n_0\
    );
\CurrentSprite[31]_i_581\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[28]_2\(15),
      O => \CurrentSprite[31]_i_581_n_0\
    );
\CurrentSprite[31]_i_582\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[28]_2\(14),
      O => \CurrentSprite[31]_i_582_n_0\
    );
\CurrentSprite[31]_i_583\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[30]_0\(20),
      I2 => \SOAMBuffer_reg[30]_0\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_583_n_0\
    );
\CurrentSprite[31]_i_584\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[30]_0\(18),
      I2 => \SOAMBuffer_reg[30]_0\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_584_n_0\
    );
\CurrentSprite[31]_i_585\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[30]_0\(16),
      I2 => \SOAMBuffer_reg[30]_0\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_585_n_0\
    );
\CurrentSprite[31]_i_586\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[30]_0\(14),
      I2 => \SOAMBuffer_reg[30]_0\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_586_n_0\
    );
\CurrentSprite[31]_i_587\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[30]_0\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[30]_0\(21),
      O => \CurrentSprite[31]_i_587_n_0\
    );
\CurrentSprite[31]_i_588\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[30]_0\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[30]_0\(19),
      O => \CurrentSprite[31]_i_588_n_0\
    );
\CurrentSprite[31]_i_589\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[30]_0\(16),
      I2 => \SOAMBuffer_reg[30]_0\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_589_n_0\
    );
\CurrentSprite[31]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(31),
      I1 => \SOAMBuffer_reg[13]_17\(31),
      I2 => \SOAMBuffer_reg[12]_18\(31),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[31]_i_59_n_0\
    );
\CurrentSprite[31]_i_590\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[30]_0\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[30]_0\(15),
      O => \CurrentSprite[31]_i_590_n_0\
    );
\CurrentSprite[31]_i_592\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[30]_0\(21),
      I2 => \SOAMBuffer_reg[30]_0\(20),
      I3 => \SOAMBuffer_reg[30]_0\(18),
      I4 => \SOAMBuffer_reg[30]_0\(17),
      I5 => \SOAMBuffer_reg[30]_0\(19),
      O => \CurrentSprite[31]_i_592_n_0\
    );
\CurrentSprite[31]_i_593\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[30]_0\(20),
      I2 => \SOAMBuffer_reg[30]_0\(19),
      I3 => \SOAMBuffer_reg[30]_0\(17),
      I4 => \SOAMBuffer_reg[30]_0\(18),
      O => \CurrentSprite[31]_i_593_n_0\
    );
\CurrentSprite[31]_i_594\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[30]_0\(19),
      I2 => \SOAMBuffer_reg[30]_0\(18),
      I3 => \SOAMBuffer_reg[30]_0\(17),
      O => \CurrentSprite[31]_i_594_n_0\
    );
\CurrentSprite[31]_i_595\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[30]_0\(18),
      I2 => \SOAMBuffer_reg[30]_0\(17),
      O => \CurrentSprite[31]_i_595_n_0\
    );
\CurrentSprite[31]_i_596\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[30]_0\(20),
      I1 => \SOAMBuffer_reg[30]_0\(18),
      I2 => \SOAMBuffer_reg[30]_0\(17),
      I3 => \SOAMBuffer_reg[30]_0\(19),
      O => \CurrentSprite[31]_i_596_n_0\
    );
\CurrentSprite[31]_i_597\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[0]_30\(20),
      I2 => \SOAMBuffer_reg[0]_30\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_597_n_0\
    );
\CurrentSprite[31]_i_598\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[0]_30\(18),
      I2 => \SOAMBuffer_reg[0]_30\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_598_n_0\
    );
\CurrentSprite[31]_i_599\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[0]_30\(16),
      I2 => \SOAMBuffer_reg[0]_30\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_599_n_0\
    );
\CurrentSprite[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBA"
    )
        port map (
      I0 => \CurrentSprite[31]_i_32_n_0\,
      I1 => \CurrentSprite_reg[31]_i_33_n_2\,
      I2 => CurrentSprite210_in,
      I3 => \CurrentSprite[31]_i_35_n_0\,
      I4 => \CurrentSprite[31]_i_36_n_0\,
      I5 => \CurrentSprite[31]_i_37_n_0\,
      O => \CurrentSprite[31]_i_6_n_0\
    );
\CurrentSprite[31]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(31),
      I1 => \SOAMBuffer_reg[7]_23\(31),
      I2 => \SOAMBuffer_reg[6]_24\(31),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[31]_i_60_n_0\
    );
\CurrentSprite[31]_i_600\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[0]_30\(14),
      I2 => \SOAMBuffer_reg[0]_30\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_600_n_0\
    );
\CurrentSprite[31]_i_601\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[0]_30\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[0]_30\(21),
      O => \CurrentSprite[31]_i_601_n_0\
    );
\CurrentSprite[31]_i_602\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[0]_30\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[0]_30\(19),
      O => \CurrentSprite[31]_i_602_n_0\
    );
\CurrentSprite[31]_i_603\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[0]_30\(16),
      I2 => \SOAMBuffer_reg[0]_30\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_603_n_0\
    );
\CurrentSprite[31]_i_604\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[0]_30\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[0]_30\(15),
      O => \CurrentSprite[31]_i_604_n_0\
    );
\CurrentSprite[31]_i_606\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[0]_30\(21),
      I2 => \SOAMBuffer_reg[0]_30\(20),
      I3 => \SOAMBuffer_reg[0]_30\(18),
      I4 => \SOAMBuffer_reg[0]_30\(17),
      I5 => \SOAMBuffer_reg[0]_30\(19),
      O => \CurrentSprite[31]_i_606_n_0\
    );
\CurrentSprite[31]_i_607\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[0]_30\(20),
      I2 => \SOAMBuffer_reg[0]_30\(19),
      I3 => \SOAMBuffer_reg[0]_30\(17),
      I4 => \SOAMBuffer_reg[0]_30\(18),
      O => \CurrentSprite[31]_i_607_n_0\
    );
\CurrentSprite[31]_i_608\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[0]_30\(19),
      I2 => \SOAMBuffer_reg[0]_30\(18),
      I3 => \SOAMBuffer_reg[0]_30\(17),
      O => \CurrentSprite[31]_i_608_n_0\
    );
\CurrentSprite[31]_i_609\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[0]_30\(18),
      I2 => \SOAMBuffer_reg[0]_30\(17),
      O => \CurrentSprite[31]_i_609_n_0\
    );
\CurrentSprite[31]_i_610\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[0]_30\(20),
      I1 => \SOAMBuffer_reg[0]_30\(18),
      I2 => \SOAMBuffer_reg[0]_30\(17),
      I3 => \SOAMBuffer_reg[0]_30\(19),
      O => \CurrentSprite[31]_i_610_n_0\
    );
\CurrentSprite[31]_i_611\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[27]_3\(20),
      I2 => \SOAMBuffer_reg[27]_3\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_611_n_0\
    );
\CurrentSprite[31]_i_612\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[27]_3\(18),
      I2 => \SOAMBuffer_reg[27]_3\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_612_n_0\
    );
\CurrentSprite[31]_i_613\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[27]_3\(16),
      I2 => \SOAMBuffer_reg[27]_3\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_613_n_0\
    );
\CurrentSprite[31]_i_614\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[27]_3\(14),
      I2 => \SOAMBuffer_reg[27]_3\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_614_n_0\
    );
\CurrentSprite[31]_i_615\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[27]_3\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[27]_3\(21),
      O => \CurrentSprite[31]_i_615_n_0\
    );
\CurrentSprite[31]_i_616\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[27]_3\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[27]_3\(19),
      O => \CurrentSprite[31]_i_616_n_0\
    );
\CurrentSprite[31]_i_617\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[27]_3\(16),
      I2 => \SOAMBuffer_reg[27]_3\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_617_n_0\
    );
\CurrentSprite[31]_i_618\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[27]_3\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[27]_3\(15),
      O => \CurrentSprite[31]_i_618_n_0\
    );
\CurrentSprite[31]_i_620\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[27]_3\(21),
      I2 => \SOAMBuffer_reg[27]_3\(20),
      I3 => \SOAMBuffer_reg[27]_3\(18),
      I4 => \SOAMBuffer_reg[27]_3\(17),
      I5 => \SOAMBuffer_reg[27]_3\(19),
      O => \CurrentSprite[31]_i_620_n_0\
    );
\CurrentSprite[31]_i_621\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[27]_3\(20),
      I2 => \SOAMBuffer_reg[27]_3\(19),
      I3 => \SOAMBuffer_reg[27]_3\(17),
      I4 => \SOAMBuffer_reg[27]_3\(18),
      O => \CurrentSprite[31]_i_621_n_0\
    );
\CurrentSprite[31]_i_622\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[27]_3\(19),
      I2 => \SOAMBuffer_reg[27]_3\(18),
      I3 => \SOAMBuffer_reg[27]_3\(17),
      O => \CurrentSprite[31]_i_622_n_0\
    );
\CurrentSprite[31]_i_623\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[27]_3\(18),
      I2 => \SOAMBuffer_reg[27]_3\(17),
      O => \CurrentSprite[31]_i_623_n_0\
    );
\CurrentSprite[31]_i_624\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[27]_3\(20),
      I1 => \SOAMBuffer_reg[27]_3\(18),
      I2 => \SOAMBuffer_reg[27]_3\(17),
      I3 => \SOAMBuffer_reg[27]_3\(19),
      O => \CurrentSprite[31]_i_624_n_0\
    );
\CurrentSprite[31]_i_625\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[25]_5\(20),
      I2 => \SOAMBuffer_reg[25]_5\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_625_n_0\
    );
\CurrentSprite[31]_i_626\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[25]_5\(18),
      I2 => \SOAMBuffer_reg[25]_5\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_626_n_0\
    );
\CurrentSprite[31]_i_627\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[25]_5\(16),
      I2 => \SOAMBuffer_reg[25]_5\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_627_n_0\
    );
\CurrentSprite[31]_i_628\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[25]_5\(14),
      I2 => \SOAMBuffer_reg[25]_5\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_628_n_0\
    );
\CurrentSprite[31]_i_629\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[25]_5\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[25]_5\(21),
      O => \CurrentSprite[31]_i_629_n_0\
    );
\CurrentSprite[31]_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \CurrentSprite_reg[31]_i_25_n_2\,
      I1 => CurrentSprite291_in,
      I2 => \CurrentSprite_reg[31]_i_123_n_2\,
      I3 => CurrentSprite294_in,
      O => \CurrentSprite[31]_i_63_n_0\
    );
\CurrentSprite[31]_i_630\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[25]_5\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[25]_5\(19),
      O => \CurrentSprite[31]_i_630_n_0\
    );
\CurrentSprite[31]_i_631\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[25]_5\(16),
      I2 => \SOAMBuffer_reg[25]_5\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_631_n_0\
    );
\CurrentSprite[31]_i_632\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[25]_5\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[25]_5\(15),
      O => \CurrentSprite[31]_i_632_n_0\
    );
\CurrentSprite[31]_i_634\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[25]_5\(21),
      I2 => \SOAMBuffer_reg[25]_5\(20),
      I3 => \SOAMBuffer_reg[25]_5\(18),
      I4 => \SOAMBuffer_reg[25]_5\(17),
      I5 => \SOAMBuffer_reg[25]_5\(19),
      O => \CurrentSprite[31]_i_634_n_0\
    );
\CurrentSprite[31]_i_635\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[25]_5\(20),
      I2 => \SOAMBuffer_reg[25]_5\(19),
      I3 => \SOAMBuffer_reg[25]_5\(17),
      I4 => \SOAMBuffer_reg[25]_5\(18),
      O => \CurrentSprite[31]_i_635_n_0\
    );
\CurrentSprite[31]_i_636\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[25]_5\(19),
      I2 => \SOAMBuffer_reg[25]_5\(18),
      I3 => \SOAMBuffer_reg[25]_5\(17),
      O => \CurrentSprite[31]_i_636_n_0\
    );
\CurrentSprite[31]_i_637\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[25]_5\(18),
      I2 => \SOAMBuffer_reg[25]_5\(17),
      O => \CurrentSprite[31]_i_637_n_0\
    );
\CurrentSprite[31]_i_638\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[25]_5\(20),
      I1 => \SOAMBuffer_reg[25]_5\(18),
      I2 => \SOAMBuffer_reg[25]_5\(17),
      I3 => \SOAMBuffer_reg[25]_5\(19),
      O => \CurrentSprite[31]_i_638_n_0\
    );
\CurrentSprite[31]_i_639\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[21]_9\(20),
      I2 => \SOAMBuffer_reg[21]_9\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_639_n_0\
    );
\CurrentSprite[31]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(31),
      I1 => \SOAMBuffer_reg[4]_26\(31),
      I2 => \SOAMBuffer_reg[3]_27\(31),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[31]_i_64_n_0\
    );
\CurrentSprite[31]_i_640\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[21]_9\(18),
      I2 => \SOAMBuffer_reg[21]_9\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_640_n_0\
    );
\CurrentSprite[31]_i_641\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[21]_9\(16),
      I2 => \SOAMBuffer_reg[21]_9\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_641_n_0\
    );
\CurrentSprite[31]_i_642\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[21]_9\(14),
      I2 => \SOAMBuffer_reg[21]_9\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_642_n_0\
    );
\CurrentSprite[31]_i_643\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[21]_9\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[21]_9\(21),
      O => \CurrentSprite[31]_i_643_n_0\
    );
\CurrentSprite[31]_i_644\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[21]_9\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[21]_9\(19),
      O => \CurrentSprite[31]_i_644_n_0\
    );
\CurrentSprite[31]_i_645\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[21]_9\(16),
      I2 => \SOAMBuffer_reg[21]_9\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_645_n_0\
    );
\CurrentSprite[31]_i_646\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[21]_9\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[21]_9\(15),
      O => \CurrentSprite[31]_i_646_n_0\
    );
\CurrentSprite[31]_i_648\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[21]_9\(21),
      I2 => \SOAMBuffer_reg[21]_9\(20),
      I3 => \SOAMBuffer_reg[21]_9\(18),
      I4 => \SOAMBuffer_reg[21]_9\(17),
      I5 => \SOAMBuffer_reg[21]_9\(19),
      O => \CurrentSprite[31]_i_648_n_0\
    );
\CurrentSprite[31]_i_649\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[21]_9\(20),
      I2 => \SOAMBuffer_reg[21]_9\(19),
      I3 => \SOAMBuffer_reg[21]_9\(17),
      I4 => \SOAMBuffer_reg[21]_9\(18),
      O => \CurrentSprite[31]_i_649_n_0\
    );
\CurrentSprite[31]_i_650\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[21]_9\(19),
      I2 => \SOAMBuffer_reg[21]_9\(18),
      I3 => \SOAMBuffer_reg[21]_9\(17),
      O => \CurrentSprite[31]_i_650_n_0\
    );
\CurrentSprite[31]_i_651\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[21]_9\(18),
      I2 => \SOAMBuffer_reg[21]_9\(17),
      O => \CurrentSprite[31]_i_651_n_0\
    );
\CurrentSprite[31]_i_652\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[21]_9\(20),
      I1 => \SOAMBuffer_reg[21]_9\(18),
      I2 => \SOAMBuffer_reg[21]_9\(17),
      I3 => \SOAMBuffer_reg[21]_9\(19),
      O => \CurrentSprite[31]_i_652_n_0\
    );
\CurrentSprite[31]_i_653\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[20]_10\(20),
      I2 => \SOAMBuffer_reg[20]_10\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_653_n_0\
    );
\CurrentSprite[31]_i_654\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[20]_10\(18),
      I2 => \SOAMBuffer_reg[20]_10\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_654_n_0\
    );
\CurrentSprite[31]_i_655\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[20]_10\(16),
      I2 => \SOAMBuffer_reg[20]_10\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_655_n_0\
    );
\CurrentSprite[31]_i_656\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[20]_10\(14),
      I2 => \SOAMBuffer_reg[20]_10\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_656_n_0\
    );
\CurrentSprite[31]_i_657\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[20]_10\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[20]_10\(21),
      O => \CurrentSprite[31]_i_657_n_0\
    );
\CurrentSprite[31]_i_658\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[20]_10\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[20]_10\(19),
      O => \CurrentSprite[31]_i_658_n_0\
    );
\CurrentSprite[31]_i_659\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[20]_10\(16),
      I2 => \SOAMBuffer_reg[20]_10\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_659_n_0\
    );
\CurrentSprite[31]_i_66\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_66_n_0\
    );
\CurrentSprite[31]_i_660\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[20]_10\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[20]_10\(15),
      O => \CurrentSprite[31]_i_660_n_0\
    );
\CurrentSprite[31]_i_662\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[20]_10\(21),
      I2 => \SOAMBuffer_reg[20]_10\(20),
      I3 => \SOAMBuffer_reg[20]_10\(18),
      I4 => \SOAMBuffer_reg[20]_10\(17),
      I5 => \SOAMBuffer_reg[20]_10\(19),
      O => \CurrentSprite[31]_i_662_n_0\
    );
\CurrentSprite[31]_i_663\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[20]_10\(20),
      I2 => \SOAMBuffer_reg[20]_10\(19),
      I3 => \SOAMBuffer_reg[20]_10\(17),
      I4 => \SOAMBuffer_reg[20]_10\(18),
      O => \CurrentSprite[31]_i_663_n_0\
    );
\CurrentSprite[31]_i_664\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[20]_10\(19),
      I2 => \SOAMBuffer_reg[20]_10\(18),
      I3 => \SOAMBuffer_reg[20]_10\(17),
      O => \CurrentSprite[31]_i_664_n_0\
    );
\CurrentSprite[31]_i_665\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[20]_10\(18),
      I2 => \SOAMBuffer_reg[20]_10\(17),
      O => \CurrentSprite[31]_i_665_n_0\
    );
\CurrentSprite[31]_i_666\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(20),
      I1 => \SOAMBuffer_reg[20]_10\(18),
      I2 => \SOAMBuffer_reg[20]_10\(17),
      I3 => \SOAMBuffer_reg[20]_10\(19),
      O => \CurrentSprite[31]_i_666_n_0\
    );
\CurrentSprite[31]_i_667\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[23]_7\(20),
      I2 => \SOAMBuffer_reg[23]_7\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_667_n_0\
    );
\CurrentSprite[31]_i_668\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[23]_7\(18),
      I2 => \SOAMBuffer_reg[23]_7\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_668_n_0\
    );
\CurrentSprite[31]_i_669\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[23]_7\(16),
      I2 => \SOAMBuffer_reg[23]_7\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_669_n_0\
    );
\CurrentSprite[31]_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[13]_17\(22),
      I2 => \SOAMBuffer_reg[13]_17\(21),
      I3 => \CurrentSprite[31]_i_182_n_0\,
      O => \CurrentSprite[31]_i_67_n_0\
    );
\CurrentSprite[31]_i_670\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[23]_7\(14),
      I2 => \SOAMBuffer_reg[23]_7\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_670_n_0\
    );
\CurrentSprite[31]_i_671\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[23]_7\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[23]_7\(21),
      O => \CurrentSprite[31]_i_671_n_0\
    );
\CurrentSprite[31]_i_672\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[23]_7\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[23]_7\(19),
      O => \CurrentSprite[31]_i_672_n_0\
    );
\CurrentSprite[31]_i_673\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[23]_7\(16),
      I2 => \SOAMBuffer_reg[23]_7\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_673_n_0\
    );
\CurrentSprite[31]_i_674\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[23]_7\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[23]_7\(15),
      O => \CurrentSprite[31]_i_674_n_0\
    );
\CurrentSprite[31]_i_676\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[23]_7\(21),
      I2 => \SOAMBuffer_reg[23]_7\(20),
      I3 => \SOAMBuffer_reg[23]_7\(18),
      I4 => \SOAMBuffer_reg[23]_7\(17),
      I5 => \SOAMBuffer_reg[23]_7\(19),
      O => \CurrentSprite[31]_i_676_n_0\
    );
\CurrentSprite[31]_i_677\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[23]_7\(20),
      I2 => \SOAMBuffer_reg[23]_7\(19),
      I3 => \SOAMBuffer_reg[23]_7\(17),
      I4 => \SOAMBuffer_reg[23]_7\(18),
      O => \CurrentSprite[31]_i_677_n_0\
    );
\CurrentSprite[31]_i_678\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[23]_7\(19),
      I2 => \SOAMBuffer_reg[23]_7\(18),
      I3 => \SOAMBuffer_reg[23]_7\(17),
      O => \CurrentSprite[31]_i_678_n_0\
    );
\CurrentSprite[31]_i_679\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[23]_7\(18),
      I2 => \SOAMBuffer_reg[23]_7\(17),
      O => \CurrentSprite[31]_i_679_n_0\
    );
\CurrentSprite[31]_i_680\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(20),
      I1 => \SOAMBuffer_reg[23]_7\(18),
      I2 => \SOAMBuffer_reg[23]_7\(17),
      I3 => \SOAMBuffer_reg[23]_7\(19),
      O => \CurrentSprite[31]_i_680_n_0\
    );
\CurrentSprite[31]_i_681\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[22]_8\(17),
      O => \CurrentSprite[31]_i_681_n_0\
    );
\CurrentSprite[31]_i_682\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[22]_8\(16),
      O => \CurrentSprite[31]_i_682_n_0\
    );
\CurrentSprite[31]_i_683\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[22]_8\(15),
      O => \CurrentSprite[31]_i_683_n_0\
    );
\CurrentSprite[31]_i_684\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[22]_8\(14),
      O => \CurrentSprite[31]_i_684_n_0\
    );
\CurrentSprite[31]_i_685\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[19]_11\(20),
      I2 => \SOAMBuffer_reg[19]_11\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_685_n_0\
    );
\CurrentSprite[31]_i_686\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[19]_11\(18),
      I2 => \SOAMBuffer_reg[19]_11\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_686_n_0\
    );
\CurrentSprite[31]_i_687\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[19]_11\(16),
      I2 => \SOAMBuffer_reg[19]_11\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_687_n_0\
    );
\CurrentSprite[31]_i_688\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[19]_11\(14),
      I2 => \SOAMBuffer_reg[19]_11\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_688_n_0\
    );
\CurrentSprite[31]_i_689\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[19]_11\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[19]_11\(21),
      O => \CurrentSprite[31]_i_689_n_0\
    );
\CurrentSprite[31]_i_69\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[13]_17\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_69_n_0\
    );
\CurrentSprite[31]_i_690\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[19]_11\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[19]_11\(19),
      O => \CurrentSprite[31]_i_690_n_0\
    );
\CurrentSprite[31]_i_691\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[19]_11\(16),
      I2 => \SOAMBuffer_reg[19]_11\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_691_n_0\
    );
\CurrentSprite[31]_i_692\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[19]_11\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[19]_11\(15),
      O => \CurrentSprite[31]_i_692_n_0\
    );
\CurrentSprite[31]_i_694\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[19]_11\(21),
      I2 => \SOAMBuffer_reg[19]_11\(20),
      I3 => \SOAMBuffer_reg[19]_11\(18),
      I4 => \SOAMBuffer_reg[19]_11\(17),
      I5 => \SOAMBuffer_reg[19]_11\(19),
      O => \CurrentSprite[31]_i_694_n_0\
    );
\CurrentSprite[31]_i_695\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[19]_11\(20),
      I2 => \SOAMBuffer_reg[19]_11\(19),
      I3 => \SOAMBuffer_reg[19]_11\(17),
      I4 => \SOAMBuffer_reg[19]_11\(18),
      O => \CurrentSprite[31]_i_695_n_0\
    );
\CurrentSprite[31]_i_696\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[19]_11\(19),
      I2 => \SOAMBuffer_reg[19]_11\(18),
      I3 => \SOAMBuffer_reg[19]_11\(17),
      O => \CurrentSprite[31]_i_696_n_0\
    );
\CurrentSprite[31]_i_697\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[19]_11\(18),
      I2 => \SOAMBuffer_reg[19]_11\(17),
      O => \CurrentSprite[31]_i_697_n_0\
    );
\CurrentSprite[31]_i_698\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[19]_11\(20),
      I1 => \SOAMBuffer_reg[19]_11\(18),
      I2 => \SOAMBuffer_reg[19]_11\(17),
      I3 => \SOAMBuffer_reg[19]_11\(19),
      O => \CurrentSprite[31]_i_698_n_0\
    );
\CurrentSprite[31]_i_699\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[16]_14\(20),
      I2 => \SOAMBuffer_reg[16]_14\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_699_n_0\
    );
\CurrentSprite[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEFE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_38_n_0\,
      I1 => \CurrentSprite[31]_i_39_n_0\,
      I2 => \CurrentSprite[31]_i_40_n_0\,
      I3 => \CurrentSprite_reg[31]_i_41_n_2\,
      I4 => CurrentSprite228_in,
      I5 => \CurrentSprite[31]_i_43_n_0\,
      O => \CurrentSprite[31]_i_7_n_0\
    );
\CurrentSprite[31]_i_70\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[13]_17\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_70_n_0\
    );
\CurrentSprite[31]_i_700\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[16]_14\(18),
      I2 => \SOAMBuffer_reg[16]_14\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_700_n_0\
    );
\CurrentSprite[31]_i_701\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[16]_14\(16),
      I2 => \SOAMBuffer_reg[16]_14\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_701_n_0\
    );
\CurrentSprite[31]_i_702\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[16]_14\(14),
      I2 => \SOAMBuffer_reg[16]_14\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_702_n_0\
    );
\CurrentSprite[31]_i_703\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[16]_14\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[16]_14\(21),
      O => \CurrentSprite[31]_i_703_n_0\
    );
\CurrentSprite[31]_i_704\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[16]_14\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[16]_14\(19),
      O => \CurrentSprite[31]_i_704_n_0\
    );
\CurrentSprite[31]_i_705\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[16]_14\(16),
      I2 => \SOAMBuffer_reg[16]_14\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_705_n_0\
    );
\CurrentSprite[31]_i_706\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[16]_14\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[16]_14\(15),
      O => \CurrentSprite[31]_i_706_n_0\
    );
\CurrentSprite[31]_i_708\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[16]_14\(21),
      I2 => \SOAMBuffer_reg[16]_14\(20),
      I3 => \SOAMBuffer_reg[16]_14\(18),
      I4 => \SOAMBuffer_reg[16]_14\(17),
      I5 => \SOAMBuffer_reg[16]_14\(19),
      O => \CurrentSprite[31]_i_708_n_0\
    );
\CurrentSprite[31]_i_709\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[16]_14\(20),
      I2 => \SOAMBuffer_reg[16]_14\(19),
      I3 => \SOAMBuffer_reg[16]_14\(17),
      I4 => \SOAMBuffer_reg[16]_14\(18),
      O => \CurrentSprite[31]_i_709_n_0\
    );
\CurrentSprite[31]_i_710\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[16]_14\(19),
      I2 => \SOAMBuffer_reg[16]_14\(18),
      I3 => \SOAMBuffer_reg[16]_14\(17),
      O => \CurrentSprite[31]_i_710_n_0\
    );
\CurrentSprite[31]_i_711\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[16]_14\(18),
      I2 => \SOAMBuffer_reg[16]_14\(17),
      O => \CurrentSprite[31]_i_711_n_0\
    );
\CurrentSprite[31]_i_712\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[16]_14\(20),
      I1 => \SOAMBuffer_reg[16]_14\(18),
      I2 => \SOAMBuffer_reg[16]_14\(17),
      I3 => \SOAMBuffer_reg[16]_14\(19),
      O => \CurrentSprite[31]_i_712_n_0\
    );
\CurrentSprite[31]_i_713\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[18]_12\(20),
      I2 => \SOAMBuffer_reg[18]_12\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_713_n_0\
    );
\CurrentSprite[31]_i_714\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[18]_12\(18),
      I2 => \SOAMBuffer_reg[18]_12\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_714_n_0\
    );
\CurrentSprite[31]_i_715\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[18]_12\(16),
      I2 => \SOAMBuffer_reg[18]_12\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_715_n_0\
    );
\CurrentSprite[31]_i_716\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[18]_12\(14),
      I2 => \SOAMBuffer_reg[18]_12\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_716_n_0\
    );
\CurrentSprite[31]_i_717\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[18]_12\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[18]_12\(21),
      O => \CurrentSprite[31]_i_717_n_0\
    );
\CurrentSprite[31]_i_718\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[18]_12\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[18]_12\(19),
      O => \CurrentSprite[31]_i_718_n_0\
    );
\CurrentSprite[31]_i_719\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[18]_12\(16),
      I2 => \SOAMBuffer_reg[18]_12\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_719_n_0\
    );
\CurrentSprite[31]_i_720\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[18]_12\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[18]_12\(15),
      O => \CurrentSprite[31]_i_720_n_0\
    );
\CurrentSprite[31]_i_722\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[18]_12\(21),
      I2 => \SOAMBuffer_reg[18]_12\(20),
      I3 => \SOAMBuffer_reg[18]_12\(18),
      I4 => \SOAMBuffer_reg[18]_12\(17),
      I5 => \SOAMBuffer_reg[18]_12\(19),
      O => \CurrentSprite[31]_i_722_n_0\
    );
\CurrentSprite[31]_i_723\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[18]_12\(20),
      I2 => \SOAMBuffer_reg[18]_12\(19),
      I3 => \SOAMBuffer_reg[18]_12\(17),
      I4 => \SOAMBuffer_reg[18]_12\(18),
      O => \CurrentSprite[31]_i_723_n_0\
    );
\CurrentSprite[31]_i_724\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[18]_12\(19),
      I2 => \SOAMBuffer_reg[18]_12\(18),
      I3 => \SOAMBuffer_reg[18]_12\(17),
      O => \CurrentSprite[31]_i_724_n_0\
    );
\CurrentSprite[31]_i_725\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[18]_12\(18),
      I2 => \SOAMBuffer_reg[18]_12\(17),
      O => \CurrentSprite[31]_i_725_n_0\
    );
\CurrentSprite[31]_i_726\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[18]_12\(20),
      I1 => \SOAMBuffer_reg[18]_12\(18),
      I2 => \SOAMBuffer_reg[18]_12\(17),
      I3 => \SOAMBuffer_reg[18]_12\(19),
      O => \CurrentSprite[31]_i_726_n_0\
    );
\CurrentSprite[31]_i_728\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[17]_13\(21),
      I2 => \SOAMBuffer_reg[17]_13\(20),
      I3 => \SOAMBuffer_reg[17]_13\(18),
      I4 => \SOAMBuffer_reg[17]_13\(17),
      I5 => \SOAMBuffer_reg[17]_13\(19),
      O => \CurrentSprite[31]_i_728_n_0\
    );
\CurrentSprite[31]_i_729\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[17]_13\(20),
      I2 => \SOAMBuffer_reg[17]_13\(19),
      I3 => \SOAMBuffer_reg[17]_13\(17),
      I4 => \SOAMBuffer_reg[17]_13\(18),
      O => \CurrentSprite[31]_i_729_n_0\
    );
\CurrentSprite[31]_i_730\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[17]_13\(19),
      I2 => \SOAMBuffer_reg[17]_13\(18),
      I3 => \SOAMBuffer_reg[17]_13\(17),
      O => \CurrentSprite[31]_i_730_n_0\
    );
\CurrentSprite[31]_i_731\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[17]_13\(18),
      I2 => \SOAMBuffer_reg[17]_13\(17),
      O => \CurrentSprite[31]_i_731_n_0\
    );
\CurrentSprite[31]_i_732\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(20),
      I1 => \SOAMBuffer_reg[17]_13\(18),
      I2 => \SOAMBuffer_reg[17]_13\(17),
      I3 => \SOAMBuffer_reg[17]_13\(19),
      O => \CurrentSprite[31]_i_732_n_0\
    );
\CurrentSprite[31]_i_733\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[17]_13\(20),
      I2 => \SOAMBuffer_reg[17]_13\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_733_n_0\
    );
\CurrentSprite[31]_i_734\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[17]_13\(18),
      I2 => \SOAMBuffer_reg[17]_13\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_734_n_0\
    );
\CurrentSprite[31]_i_735\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[17]_13\(16),
      I2 => \SOAMBuffer_reg[17]_13\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_735_n_0\
    );
\CurrentSprite[31]_i_736\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[17]_13\(14),
      I2 => \SOAMBuffer_reg[17]_13\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_736_n_0\
    );
\CurrentSprite[31]_i_737\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[17]_13\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[17]_13\(21),
      O => \CurrentSprite[31]_i_737_n_0\
    );
\CurrentSprite[31]_i_738\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[17]_13\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[17]_13\(19),
      O => \CurrentSprite[31]_i_738_n_0\
    );
\CurrentSprite[31]_i_739\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[17]_13\(16),
      I2 => \SOAMBuffer_reg[17]_13\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_739_n_0\
    );
\CurrentSprite[31]_i_740\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[17]_13\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[17]_13\(15),
      O => \CurrentSprite[31]_i_740_n_0\
    );
\CurrentSprite[31]_i_742\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[26]_4\(21),
      I2 => \SOAMBuffer_reg[26]_4\(20),
      I3 => \SOAMBuffer_reg[26]_4\(18),
      I4 => \SOAMBuffer_reg[26]_4\(17),
      I5 => \SOAMBuffer_reg[26]_4\(19),
      O => \CurrentSprite[31]_i_742_n_0\
    );
\CurrentSprite[31]_i_743\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[26]_4\(20),
      I2 => \SOAMBuffer_reg[26]_4\(19),
      I3 => \SOAMBuffer_reg[26]_4\(17),
      I4 => \SOAMBuffer_reg[26]_4\(18),
      O => \CurrentSprite[31]_i_743_n_0\
    );
\CurrentSprite[31]_i_744\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[26]_4\(19),
      I2 => \SOAMBuffer_reg[26]_4\(18),
      I3 => \SOAMBuffer_reg[26]_4\(17),
      O => \CurrentSprite[31]_i_744_n_0\
    );
\CurrentSprite[31]_i_745\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[26]_4\(18),
      I2 => \SOAMBuffer_reg[26]_4\(17),
      O => \CurrentSprite[31]_i_745_n_0\
    );
\CurrentSprite[31]_i_746\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(20),
      I1 => \SOAMBuffer_reg[26]_4\(18),
      I2 => \SOAMBuffer_reg[26]_4\(17),
      I3 => \SOAMBuffer_reg[26]_4\(19),
      O => \CurrentSprite[31]_i_746_n_0\
    );
\CurrentSprite[31]_i_747\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[26]_4\(20),
      I2 => \SOAMBuffer_reg[26]_4\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_747_n_0\
    );
\CurrentSprite[31]_i_748\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[26]_4\(18),
      I2 => \SOAMBuffer_reg[26]_4\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_748_n_0\
    );
\CurrentSprite[31]_i_749\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[26]_4\(16),
      I2 => \SOAMBuffer_reg[26]_4\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_749_n_0\
    );
\CurrentSprite[31]_i_750\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[26]_4\(14),
      I2 => \SOAMBuffer_reg[26]_4\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_750_n_0\
    );
\CurrentSprite[31]_i_751\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[26]_4\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[26]_4\(21),
      O => \CurrentSprite[31]_i_751_n_0\
    );
\CurrentSprite[31]_i_752\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[26]_4\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[26]_4\(19),
      O => \CurrentSprite[31]_i_752_n_0\
    );
\CurrentSprite[31]_i_753\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[26]_4\(16),
      I2 => \SOAMBuffer_reg[26]_4\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_753_n_0\
    );
\CurrentSprite[31]_i_754\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[26]_4\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[26]_4\(15),
      O => \CurrentSprite[31]_i_754_n_0\
    );
\CurrentSprite[31]_i_755\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[24]_6\(20),
      I2 => \SOAMBuffer_reg[24]_6\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_755_n_0\
    );
\CurrentSprite[31]_i_756\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[24]_6\(18),
      I2 => \SOAMBuffer_reg[24]_6\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_756_n_0\
    );
\CurrentSprite[31]_i_757\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[24]_6\(16),
      I2 => \SOAMBuffer_reg[24]_6\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_757_n_0\
    );
\CurrentSprite[31]_i_758\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[24]_6\(14),
      I2 => \SOAMBuffer_reg[24]_6\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_758_n_0\
    );
\CurrentSprite[31]_i_759\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[24]_6\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[24]_6\(21),
      O => \CurrentSprite[31]_i_759_n_0\
    );
\CurrentSprite[31]_i_760\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[24]_6\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[24]_6\(19),
      O => \CurrentSprite[31]_i_760_n_0\
    );
\CurrentSprite[31]_i_761\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[24]_6\(16),
      I2 => \SOAMBuffer_reg[24]_6\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_761_n_0\
    );
\CurrentSprite[31]_i_762\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[24]_6\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[24]_6\(15),
      O => \CurrentSprite[31]_i_762_n_0\
    );
\CurrentSprite[31]_i_764\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[24]_6\(21),
      I2 => \SOAMBuffer_reg[24]_6\(20),
      I3 => \SOAMBuffer_reg[24]_6\(18),
      I4 => \SOAMBuffer_reg[24]_6\(17),
      I5 => \SOAMBuffer_reg[24]_6\(19),
      O => \CurrentSprite[31]_i_764_n_0\
    );
\CurrentSprite[31]_i_765\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[24]_6\(20),
      I2 => \SOAMBuffer_reg[24]_6\(19),
      I3 => \SOAMBuffer_reg[24]_6\(17),
      I4 => \SOAMBuffer_reg[24]_6\(18),
      O => \CurrentSprite[31]_i_765_n_0\
    );
\CurrentSprite[31]_i_766\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[24]_6\(19),
      I2 => \SOAMBuffer_reg[24]_6\(18),
      I3 => \SOAMBuffer_reg[24]_6\(17),
      O => \CurrentSprite[31]_i_766_n_0\
    );
\CurrentSprite[31]_i_767\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[24]_6\(18),
      I2 => \SOAMBuffer_reg[24]_6\(17),
      O => \CurrentSprite[31]_i_767_n_0\
    );
\CurrentSprite[31]_i_768\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[24]_6\(20),
      I1 => \SOAMBuffer_reg[24]_6\(18),
      I2 => \SOAMBuffer_reg[24]_6\(17),
      I3 => \SOAMBuffer_reg[24]_6\(19),
      O => \CurrentSprite[31]_i_768_n_0\
    );
\CurrentSprite[31]_i_770\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[8]_22\(21),
      I2 => \SOAMBuffer_reg[8]_22\(20),
      I3 => \SOAMBuffer_reg[8]_22\(18),
      I4 => \SOAMBuffer_reg[8]_22\(17),
      I5 => \SOAMBuffer_reg[8]_22\(19),
      O => \CurrentSprite[31]_i_770_n_0\
    );
\CurrentSprite[31]_i_771\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[8]_22\(20),
      I2 => \SOAMBuffer_reg[8]_22\(19),
      I3 => \SOAMBuffer_reg[8]_22\(17),
      I4 => \SOAMBuffer_reg[8]_22\(18),
      O => \CurrentSprite[31]_i_771_n_0\
    );
\CurrentSprite[31]_i_772\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[8]_22\(19),
      I2 => \SOAMBuffer_reg[8]_22\(18),
      I3 => \SOAMBuffer_reg[8]_22\(17),
      O => \CurrentSprite[31]_i_772_n_0\
    );
\CurrentSprite[31]_i_773\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[8]_22\(18),
      I2 => \SOAMBuffer_reg[8]_22\(17),
      O => \CurrentSprite[31]_i_773_n_0\
    );
\CurrentSprite[31]_i_774\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(20),
      I1 => \SOAMBuffer_reg[8]_22\(18),
      I2 => \SOAMBuffer_reg[8]_22\(17),
      I3 => \SOAMBuffer_reg[8]_22\(19),
      O => \CurrentSprite[31]_i_774_n_0\
    );
\CurrentSprite[31]_i_775\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[8]_22\(20),
      I2 => \SOAMBuffer_reg[8]_22\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_775_n_0\
    );
\CurrentSprite[31]_i_776\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[8]_22\(18),
      I2 => \SOAMBuffer_reg[8]_22\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_776_n_0\
    );
\CurrentSprite[31]_i_777\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[8]_22\(16),
      I2 => \SOAMBuffer_reg[8]_22\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_777_n_0\
    );
\CurrentSprite[31]_i_778\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[8]_22\(14),
      I2 => \SOAMBuffer_reg[8]_22\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_778_n_0\
    );
\CurrentSprite[31]_i_779\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[8]_22\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[8]_22\(21),
      O => \CurrentSprite[31]_i_779_n_0\
    );
\CurrentSprite[31]_i_780\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[8]_22\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[8]_22\(19),
      O => \CurrentSprite[31]_i_780_n_0\
    );
\CurrentSprite[31]_i_781\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[8]_22\(16),
      I2 => \SOAMBuffer_reg[8]_22\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_781_n_0\
    );
\CurrentSprite[31]_i_782\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[8]_22\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[8]_22\(15),
      O => \CurrentSprite[31]_i_782_n_0\
    );
\CurrentSprite[31]_i_783\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[11]_19\(20),
      I2 => \SOAMBuffer_reg[11]_19\(21),
      I3 => \xCounter_reg_n_0_[7]\,
      O => \CurrentSprite[31]_i_783_n_0\
    );
\CurrentSprite[31]_i_784\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[11]_19\(18),
      I2 => \SOAMBuffer_reg[11]_19\(19),
      I3 => \xCounter_reg_n_0_[5]\,
      O => \CurrentSprite[31]_i_784_n_0\
    );
\CurrentSprite[31]_i_785\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[11]_19\(16),
      I2 => \SOAMBuffer_reg[11]_19\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_785_n_0\
    );
\CurrentSprite[31]_i_786\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[11]_19\(14),
      I2 => \SOAMBuffer_reg[11]_19\(15),
      I3 => \xCounter_reg_n_0_[1]\,
      O => \CurrentSprite[31]_i_786_n_0\
    );
\CurrentSprite[31]_i_787\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[11]_19\(20),
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \SOAMBuffer_reg[11]_19\(21),
      O => \CurrentSprite[31]_i_787_n_0\
    );
\CurrentSprite[31]_i_788\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[11]_19\(18),
      I2 => \xCounter_reg_n_0_[5]\,
      I3 => \SOAMBuffer_reg[11]_19\(19),
      O => \CurrentSprite[31]_i_788_n_0\
    );
\CurrentSprite[31]_i_789\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[11]_19\(16),
      I2 => \SOAMBuffer_reg[11]_19\(17),
      I3 => \xCounter_reg_n_0_[3]\,
      O => \CurrentSprite[31]_i_789_n_0\
    );
\CurrentSprite[31]_i_79\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CurrentSprite270_in,
      I1 => \CurrentSprite_reg[31]_i_162_n_2\,
      O => \CurrentSprite[31]_i_79_n_0\
    );
\CurrentSprite[31]_i_790\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[11]_19\(14),
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \SOAMBuffer_reg[11]_19\(15),
      O => \CurrentSprite[31]_i_790_n_0\
    );
\CurrentSprite[31]_i_792\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999999999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \SOAMBuffer_reg[11]_19\(21),
      I2 => \SOAMBuffer_reg[11]_19\(20),
      I3 => \SOAMBuffer_reg[11]_19\(18),
      I4 => \SOAMBuffer_reg[11]_19\(17),
      I5 => \SOAMBuffer_reg[11]_19\(19),
      O => \CurrentSprite[31]_i_792_n_0\
    );
\CurrentSprite[31]_i_793\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \SOAMBuffer_reg[11]_19\(20),
      I2 => \SOAMBuffer_reg[11]_19\(19),
      I3 => \SOAMBuffer_reg[11]_19\(17),
      I4 => \SOAMBuffer_reg[11]_19\(18),
      O => \CurrentSprite[31]_i_793_n_0\
    );
\CurrentSprite[31]_i_794\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \SOAMBuffer_reg[11]_19\(19),
      I2 => \SOAMBuffer_reg[11]_19\(18),
      I3 => \SOAMBuffer_reg[11]_19\(17),
      O => \CurrentSprite[31]_i_794_n_0\
    );
\CurrentSprite[31]_i_795\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \SOAMBuffer_reg[11]_19\(18),
      I2 => \SOAMBuffer_reg[11]_19\(17),
      O => \CurrentSprite[31]_i_795_n_0\
    );
\CurrentSprite[31]_i_796\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(20),
      I1 => \SOAMBuffer_reg[11]_19\(18),
      I2 => \SOAMBuffer_reg[11]_19\(17),
      I3 => \SOAMBuffer_reg[11]_19\(19),
      O => \CurrentSprite[31]_i_796_n_0\
    );
\CurrentSprite[31]_i_797\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[3]_27\(17),
      O => \CurrentSprite[31]_i_797_n_0\
    );
\CurrentSprite[31]_i_798\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[3]_27\(16),
      O => \CurrentSprite[31]_i_798_n_0\
    );
\CurrentSprite[31]_i_799\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[3]_27\(15),
      O => \CurrentSprite[31]_i_799_n_0\
    );
\CurrentSprite[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[31]_i_44_n_0\,
      I1 => \CurrentSprite[31]_i_45_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[31]_i_48_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[31]_i_8_n_0\
    );
\CurrentSprite[31]_i_800\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[3]_27\(14),
      O => \CurrentSprite[31]_i_800_n_0\
    );
\CurrentSprite[31]_i_801\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[12]_18\(17),
      O => \CurrentSprite[31]_i_801_n_0\
    );
\CurrentSprite[31]_i_802\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[12]_18\(16),
      O => \CurrentSprite[31]_i_802_n_0\
    );
\CurrentSprite[31]_i_803\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[12]_18\(15),
      O => \CurrentSprite[31]_i_803_n_0\
    );
\CurrentSprite[31]_i_804\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[12]_18\(14),
      O => \CurrentSprite[31]_i_804_n_0\
    );
\CurrentSprite[31]_i_805\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[15]_15\(17),
      O => \CurrentSprite[31]_i_805_n_0\
    );
\CurrentSprite[31]_i_806\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[15]_15\(16),
      O => \CurrentSprite[31]_i_806_n_0\
    );
\CurrentSprite[31]_i_807\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[15]_15\(15),
      O => \CurrentSprite[31]_i_807_n_0\
    );
\CurrentSprite[31]_i_808\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[15]_15\(14),
      O => \CurrentSprite[31]_i_808_n_0\
    );
\CurrentSprite[31]_i_809\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[14]_16\(17),
      O => \CurrentSprite[31]_i_809_n_0\
    );
\CurrentSprite[31]_i_810\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[14]_16\(16),
      O => \CurrentSprite[31]_i_810_n_0\
    );
\CurrentSprite[31]_i_811\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[14]_16\(15),
      O => \CurrentSprite[31]_i_811_n_0\
    );
\CurrentSprite[31]_i_812\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[14]_16\(14),
      O => \CurrentSprite[31]_i_812_n_0\
    );
\CurrentSprite[31]_i_813\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[10]_20\(17),
      O => \CurrentSprite[31]_i_813_n_0\
    );
\CurrentSprite[31]_i_814\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[10]_20\(16),
      O => \CurrentSprite[31]_i_814_n_0\
    );
\CurrentSprite[31]_i_815\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[10]_20\(15),
      O => \CurrentSprite[31]_i_815_n_0\
    );
\CurrentSprite[31]_i_816\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[10]_20\(14),
      O => \CurrentSprite[31]_i_816_n_0\
    );
\CurrentSprite[31]_i_817\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[9]_21\(17),
      O => \CurrentSprite[31]_i_817_n_0\
    );
\CurrentSprite[31]_i_818\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[9]_21\(16),
      O => \CurrentSprite[31]_i_818_n_0\
    );
\CurrentSprite[31]_i_819\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[9]_21\(15),
      O => \CurrentSprite[31]_i_819_n_0\
    );
\CurrentSprite[31]_i_820\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[9]_21\(14),
      O => \CurrentSprite[31]_i_820_n_0\
    );
\CurrentSprite[31]_i_821\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[2]_28\(17),
      O => \CurrentSprite[31]_i_821_n_0\
    );
\CurrentSprite[31]_i_822\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[2]_28\(16),
      O => \CurrentSprite[31]_i_822_n_0\
    );
\CurrentSprite[31]_i_823\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[2]_28\(15),
      O => \CurrentSprite[31]_i_823_n_0\
    );
\CurrentSprite[31]_i_824\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[2]_28\(14),
      O => \CurrentSprite[31]_i_824_n_0\
    );
\CurrentSprite[31]_i_825\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[6]_24\(17),
      O => \CurrentSprite[31]_i_825_n_0\
    );
\CurrentSprite[31]_i_826\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[6]_24\(16),
      O => \CurrentSprite[31]_i_826_n_0\
    );
\CurrentSprite[31]_i_827\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[6]_24\(15),
      O => \CurrentSprite[31]_i_827_n_0\
    );
\CurrentSprite[31]_i_828\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[6]_24\(14),
      O => \CurrentSprite[31]_i_828_n_0\
    );
\CurrentSprite[31]_i_829\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[5]_25\(17),
      O => \CurrentSprite[31]_i_829_n_0\
    );
\CurrentSprite[31]_i_830\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[5]_25\(16),
      O => \CurrentSprite[31]_i_830_n_0\
    );
\CurrentSprite[31]_i_831\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[5]_25\(15),
      O => \CurrentSprite[31]_i_831_n_0\
    );
\CurrentSprite[31]_i_832\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[5]_25\(14),
      O => \CurrentSprite[31]_i_832_n_0\
    );
\CurrentSprite[31]_i_833\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[29]_1\(17),
      O => \CurrentSprite[31]_i_833_n_0\
    );
\CurrentSprite[31]_i_834\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[29]_1\(16),
      O => \CurrentSprite[31]_i_834_n_0\
    );
\CurrentSprite[31]_i_835\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[29]_1\(15),
      O => \CurrentSprite[31]_i_835_n_0\
    );
\CurrentSprite[31]_i_836\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[29]_1\(14),
      O => \CurrentSprite[31]_i_836_n_0\
    );
\CurrentSprite[31]_i_837\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[30]_0\(17),
      O => \CurrentSprite[31]_i_837_n_0\
    );
\CurrentSprite[31]_i_838\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[30]_0\(16),
      O => \CurrentSprite[31]_i_838_n_0\
    );
\CurrentSprite[31]_i_839\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[30]_0\(15),
      O => \CurrentSprite[31]_i_839_n_0\
    );
\CurrentSprite[31]_i_840\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[30]_0\(14),
      O => \CurrentSprite[31]_i_840_n_0\
    );
\CurrentSprite[31]_i_841\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[0]_30\(17),
      O => \CurrentSprite[31]_i_841_n_0\
    );
\CurrentSprite[31]_i_842\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[0]_30\(16),
      O => \CurrentSprite[31]_i_842_n_0\
    );
\CurrentSprite[31]_i_843\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[0]_30\(15),
      O => \CurrentSprite[31]_i_843_n_0\
    );
\CurrentSprite[31]_i_844\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[0]_30\(14),
      O => \CurrentSprite[31]_i_844_n_0\
    );
\CurrentSprite[31]_i_845\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[27]_3\(17),
      O => \CurrentSprite[31]_i_845_n_0\
    );
\CurrentSprite[31]_i_846\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[27]_3\(16),
      O => \CurrentSprite[31]_i_846_n_0\
    );
\CurrentSprite[31]_i_847\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[27]_3\(15),
      O => \CurrentSprite[31]_i_847_n_0\
    );
\CurrentSprite[31]_i_848\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[27]_3\(14),
      O => \CurrentSprite[31]_i_848_n_0\
    );
\CurrentSprite[31]_i_849\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[25]_5\(17),
      O => \CurrentSprite[31]_i_849_n_0\
    );
\CurrentSprite[31]_i_85\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => L(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_85_n_0\
    );
\CurrentSprite[31]_i_850\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[25]_5\(16),
      O => \CurrentSprite[31]_i_850_n_0\
    );
\CurrentSprite[31]_i_851\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[25]_5\(15),
      O => \CurrentSprite[31]_i_851_n_0\
    );
\CurrentSprite[31]_i_852\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[25]_5\(14),
      O => \CurrentSprite[31]_i_852_n_0\
    );
\CurrentSprite[31]_i_853\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[21]_9\(17),
      O => \CurrentSprite[31]_i_853_n_0\
    );
\CurrentSprite[31]_i_854\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[21]_9\(16),
      O => \CurrentSprite[31]_i_854_n_0\
    );
\CurrentSprite[31]_i_855\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[21]_9\(15),
      O => \CurrentSprite[31]_i_855_n_0\
    );
\CurrentSprite[31]_i_856\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[21]_9\(14),
      O => \CurrentSprite[31]_i_856_n_0\
    );
\CurrentSprite[31]_i_857\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[20]_10\(17),
      O => \CurrentSprite[31]_i_857_n_0\
    );
\CurrentSprite[31]_i_858\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[20]_10\(16),
      O => \CurrentSprite[31]_i_858_n_0\
    );
\CurrentSprite[31]_i_859\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[20]_10\(15),
      O => \CurrentSprite[31]_i_859_n_0\
    );
\CurrentSprite[31]_i_86\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => L(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_86_n_0\
    );
\CurrentSprite[31]_i_860\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[20]_10\(14),
      O => \CurrentSprite[31]_i_860_n_0\
    );
\CurrentSprite[31]_i_861\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[23]_7\(17),
      O => \CurrentSprite[31]_i_861_n_0\
    );
\CurrentSprite[31]_i_862\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[23]_7\(16),
      O => \CurrentSprite[31]_i_862_n_0\
    );
\CurrentSprite[31]_i_863\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[23]_7\(15),
      O => \CurrentSprite[31]_i_863_n_0\
    );
\CurrentSprite[31]_i_864\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[23]_7\(14),
      O => \CurrentSprite[31]_i_864_n_0\
    );
\CurrentSprite[31]_i_865\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[19]_11\(17),
      O => \CurrentSprite[31]_i_865_n_0\
    );
\CurrentSprite[31]_i_866\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[19]_11\(16),
      O => \CurrentSprite[31]_i_866_n_0\
    );
\CurrentSprite[31]_i_867\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[19]_11\(15),
      O => \CurrentSprite[31]_i_867_n_0\
    );
\CurrentSprite[31]_i_868\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[19]_11\(14),
      O => \CurrentSprite[31]_i_868_n_0\
    );
\CurrentSprite[31]_i_869\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[16]_14\(17),
      O => \CurrentSprite[31]_i_869_n_0\
    );
\CurrentSprite[31]_i_870\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[16]_14\(16),
      O => \CurrentSprite[31]_i_870_n_0\
    );
\CurrentSprite[31]_i_871\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[16]_14\(15),
      O => \CurrentSprite[31]_i_871_n_0\
    );
\CurrentSprite[31]_i_872\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[16]_14\(14),
      O => \CurrentSprite[31]_i_872_n_0\
    );
\CurrentSprite[31]_i_873\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[18]_12\(17),
      O => \CurrentSprite[31]_i_873_n_0\
    );
\CurrentSprite[31]_i_874\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[18]_12\(16),
      O => \CurrentSprite[31]_i_874_n_0\
    );
\CurrentSprite[31]_i_875\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[18]_12\(15),
      O => \CurrentSprite[31]_i_875_n_0\
    );
\CurrentSprite[31]_i_876\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[18]_12\(14),
      O => \CurrentSprite[31]_i_876_n_0\
    );
\CurrentSprite[31]_i_877\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[17]_13\(17),
      O => \CurrentSprite[31]_i_877_n_0\
    );
\CurrentSprite[31]_i_878\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[17]_13\(16),
      O => \CurrentSprite[31]_i_878_n_0\
    );
\CurrentSprite[31]_i_879\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[17]_13\(15),
      O => \CurrentSprite[31]_i_879_n_0\
    );
\CurrentSprite[31]_i_88\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_88_n_0\
    );
\CurrentSprite[31]_i_880\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[17]_13\(14),
      O => \CurrentSprite[31]_i_880_n_0\
    );
\CurrentSprite[31]_i_881\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[26]_4\(17),
      O => \CurrentSprite[31]_i_881_n_0\
    );
\CurrentSprite[31]_i_882\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[26]_4\(16),
      O => \CurrentSprite[31]_i_882_n_0\
    );
\CurrentSprite[31]_i_883\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[26]_4\(15),
      O => \CurrentSprite[31]_i_883_n_0\
    );
\CurrentSprite[31]_i_884\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[26]_4\(14),
      O => \CurrentSprite[31]_i_884_n_0\
    );
\CurrentSprite[31]_i_885\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[24]_6\(17),
      O => \CurrentSprite[31]_i_885_n_0\
    );
\CurrentSprite[31]_i_886\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[24]_6\(16),
      O => \CurrentSprite[31]_i_886_n_0\
    );
\CurrentSprite[31]_i_887\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[24]_6\(15),
      O => \CurrentSprite[31]_i_887_n_0\
    );
\CurrentSprite[31]_i_888\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[24]_6\(14),
      O => \CurrentSprite[31]_i_888_n_0\
    );
\CurrentSprite[31]_i_889\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[8]_22\(17),
      O => \CurrentSprite[31]_i_889_n_0\
    );
\CurrentSprite[31]_i_89\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => L(22),
      I2 => L(21),
      I3 => \CurrentSprite[31]_i_240_n_0\,
      O => \CurrentSprite[31]_i_89_n_0\
    );
\CurrentSprite[31]_i_890\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[8]_22\(16),
      O => \CurrentSprite[31]_i_890_n_0\
    );
\CurrentSprite[31]_i_891\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[8]_22\(15),
      O => \CurrentSprite[31]_i_891_n_0\
    );
\CurrentSprite[31]_i_892\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[8]_22\(14),
      O => \CurrentSprite[31]_i_892_n_0\
    );
\CurrentSprite[31]_i_893\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \SOAMBuffer_reg[11]_19\(17),
      O => \CurrentSprite[31]_i_893_n_0\
    );
\CurrentSprite[31]_i_894\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \SOAMBuffer_reg[11]_19\(16),
      O => \CurrentSprite[31]_i_894_n_0\
    );
\CurrentSprite[31]_i_895\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \SOAMBuffer_reg[11]_19\(15),
      O => \CurrentSprite[31]_i_895_n_0\
    );
\CurrentSprite[31]_i_896\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \SOAMBuffer_reg[11]_19\(14),
      O => \CurrentSprite[31]_i_896_n_0\
    );
\CurrentSprite[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[31]_i_50_n_0\,
      I1 => \CurrentSprite[31]_i_51_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[31]_i_54_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[31]_i_9_n_0\
    );
\CurrentSprite[31]_i_91\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[1]_29\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_91_n_0\
    );
\CurrentSprite[31]_i_92\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[1]_29\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_92_n_0\
    );
\CurrentSprite[31]_i_94\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_94_n_0\
    );
\CurrentSprite[31]_i_95\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[1]_29\(22),
      I2 => \SOAMBuffer_reg[1]_29\(21),
      I3 => \CurrentSprite[31]_i_254_n_0\,
      O => \CurrentSprite[31]_i_95_n_0\
    );
\CurrentSprite[31]_i_99\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \SOAMBuffer_reg[7]_23\(22),
      I2 => \xCounter_reg_n_0_[9]\,
      O => \CurrentSprite[31]_i_99_n_0\
    );
\CurrentSprite[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[3]_i_2_n_0\,
      I1 => \CurrentSprite[3]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[3]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[3]_i_5_n_0\,
      O => \CurrentSprite[3]_i_1_n_0\
    );
\CurrentSprite[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(3),
      I3 => \SOAMBuffer_reg_n_0_[31][3]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(3),
      O => \CurrentSprite[3]_i_10_n_0\
    );
\CurrentSprite[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(3),
      I1 => \SOAMBuffer_reg[28]_2\(3),
      I2 => \SOAMBuffer_reg[27]_3\(3),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[3]_i_11_n_0\
    );
\CurrentSprite[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(3),
      I1 => \SOAMBuffer_reg[10]_20\(3),
      I2 => \SOAMBuffer_reg[9]_21\(3),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[3]_i_12_n_0\
    );
\CurrentSprite[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(3),
      I1 => \SOAMBuffer_reg[13]_17\(3),
      I2 => \SOAMBuffer_reg[12]_18\(3),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[3]_i_13_n_0\
    );
\CurrentSprite[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(3),
      I1 => \SOAMBuffer_reg[7]_23\(3),
      I2 => \SOAMBuffer_reg[6]_24\(3),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[3]_i_14_n_0\
    );
\CurrentSprite[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(3),
      I1 => \SOAMBuffer_reg[4]_26\(3),
      I2 => \SOAMBuffer_reg[3]_27\(3),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[3]_i_15_n_0\
    );
\CurrentSprite[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[3]_i_6_n_0\,
      I1 => \CurrentSprite[3]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[3]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[3]_i_2_n_0\
    );
\CurrentSprite[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[3]_i_9_n_0\,
      I1 => \CurrentSprite[3]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[3]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[3]_i_3_n_0\
    );
\CurrentSprite[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[3]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[3]_i_13_n_0\,
      I4 => \CurrentSprite[3]_i_14_n_0\,
      O => \CurrentSprite[3]_i_4_n_0\
    );
\CurrentSprite[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[3]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(3),
      I5 => \SOAMBuffer_reg[0]_30\(3),
      O => \CurrentSprite[3]_i_5_n_0\
    );
\CurrentSprite[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(3),
      I1 => \SOAMBuffer_reg[16]_14\(3),
      I2 => \SOAMBuffer_reg[15]_15\(3),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[3]_i_6_n_0\
    );
\CurrentSprite[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(3),
      I1 => \SOAMBuffer_reg[22]_8\(3),
      I2 => \SOAMBuffer_reg[21]_9\(3),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[3]_i_7_n_0\
    );
\CurrentSprite[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(3),
      I1 => \SOAMBuffer_reg[19]_11\(3),
      I2 => \SOAMBuffer_reg[18]_12\(3),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[3]_i_8_n_0\
    );
\CurrentSprite[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(3),
      I1 => \SOAMBuffer_reg[25]_5\(3),
      I2 => \SOAMBuffer_reg[24]_6\(3),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[3]_i_9_n_0\
    );
\CurrentSprite[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[4]_i_2_n_0\,
      I1 => \CurrentSprite[4]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[4]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[4]_i_5_n_0\,
      O => \CurrentSprite[4]_i_1_n_0\
    );
\CurrentSprite[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(4),
      I3 => \SOAMBuffer_reg_n_0_[31][4]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(4),
      O => \CurrentSprite[4]_i_10_n_0\
    );
\CurrentSprite[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(4),
      I1 => \SOAMBuffer_reg[28]_2\(4),
      I2 => \SOAMBuffer_reg[27]_3\(4),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[4]_i_11_n_0\
    );
\CurrentSprite[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(4),
      I1 => \SOAMBuffer_reg[10]_20\(4),
      I2 => \SOAMBuffer_reg[9]_21\(4),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[4]_i_12_n_0\
    );
\CurrentSprite[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(4),
      I1 => \SOAMBuffer_reg[13]_17\(4),
      I2 => \SOAMBuffer_reg[12]_18\(4),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[4]_i_13_n_0\
    );
\CurrentSprite[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(4),
      I1 => \SOAMBuffer_reg[7]_23\(4),
      I2 => \SOAMBuffer_reg[6]_24\(4),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[4]_i_14_n_0\
    );
\CurrentSprite[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(4),
      I1 => \SOAMBuffer_reg[4]_26\(4),
      I2 => \SOAMBuffer_reg[3]_27\(4),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[4]_i_15_n_0\
    );
\CurrentSprite[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[4]_i_6_n_0\,
      I1 => \CurrentSprite[4]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[4]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[4]_i_2_n_0\
    );
\CurrentSprite[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[4]_i_9_n_0\,
      I1 => \CurrentSprite[4]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[4]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[4]_i_3_n_0\
    );
\CurrentSprite[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[4]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[4]_i_13_n_0\,
      I4 => \CurrentSprite[4]_i_14_n_0\,
      O => \CurrentSprite[4]_i_4_n_0\
    );
\CurrentSprite[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[4]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(4),
      I5 => \SOAMBuffer_reg[0]_30\(4),
      O => \CurrentSprite[4]_i_5_n_0\
    );
\CurrentSprite[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(4),
      I1 => \SOAMBuffer_reg[16]_14\(4),
      I2 => \SOAMBuffer_reg[15]_15\(4),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[4]_i_6_n_0\
    );
\CurrentSprite[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(4),
      I1 => \SOAMBuffer_reg[22]_8\(4),
      I2 => \SOAMBuffer_reg[21]_9\(4),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[4]_i_7_n_0\
    );
\CurrentSprite[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(4),
      I1 => \SOAMBuffer_reg[19]_11\(4),
      I2 => \SOAMBuffer_reg[18]_12\(4),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[4]_i_8_n_0\
    );
\CurrentSprite[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(4),
      I1 => \SOAMBuffer_reg[25]_5\(4),
      I2 => \SOAMBuffer_reg[24]_6\(4),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[4]_i_9_n_0\
    );
\CurrentSprite[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[5]_i_2_n_0\,
      I1 => \CurrentSprite[5]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[5]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[5]_i_5_n_0\,
      O => \CurrentSprite[5]_i_1_n_0\
    );
\CurrentSprite[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(5),
      I3 => \SOAMBuffer_reg_n_0_[31][5]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(5),
      O => \CurrentSprite[5]_i_10_n_0\
    );
\CurrentSprite[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(5),
      I1 => \SOAMBuffer_reg[28]_2\(5),
      I2 => \SOAMBuffer_reg[27]_3\(5),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[5]_i_11_n_0\
    );
\CurrentSprite[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(5),
      I1 => \SOAMBuffer_reg[10]_20\(5),
      I2 => \SOAMBuffer_reg[9]_21\(5),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[5]_i_12_n_0\
    );
\CurrentSprite[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(5),
      I1 => \SOAMBuffer_reg[13]_17\(5),
      I2 => \SOAMBuffer_reg[12]_18\(5),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[5]_i_13_n_0\
    );
\CurrentSprite[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(5),
      I1 => \SOAMBuffer_reg[7]_23\(5),
      I2 => \SOAMBuffer_reg[6]_24\(5),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[5]_i_14_n_0\
    );
\CurrentSprite[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(5),
      I1 => \SOAMBuffer_reg[4]_26\(5),
      I2 => \SOAMBuffer_reg[3]_27\(5),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[5]_i_15_n_0\
    );
\CurrentSprite[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[5]_i_6_n_0\,
      I1 => \CurrentSprite[5]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[5]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[5]_i_2_n_0\
    );
\CurrentSprite[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[5]_i_9_n_0\,
      I1 => \CurrentSprite[5]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[5]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[5]_i_3_n_0\
    );
\CurrentSprite[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[5]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[5]_i_13_n_0\,
      I4 => \CurrentSprite[5]_i_14_n_0\,
      O => \CurrentSprite[5]_i_4_n_0\
    );
\CurrentSprite[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[5]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(5),
      I5 => \SOAMBuffer_reg[0]_30\(5),
      O => \CurrentSprite[5]_i_5_n_0\
    );
\CurrentSprite[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(5),
      I1 => \SOAMBuffer_reg[16]_14\(5),
      I2 => \SOAMBuffer_reg[15]_15\(5),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[5]_i_6_n_0\
    );
\CurrentSprite[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(5),
      I1 => \SOAMBuffer_reg[22]_8\(5),
      I2 => \SOAMBuffer_reg[21]_9\(5),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[5]_i_7_n_0\
    );
\CurrentSprite[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(5),
      I1 => \SOAMBuffer_reg[19]_11\(5),
      I2 => \SOAMBuffer_reg[18]_12\(5),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[5]_i_8_n_0\
    );
\CurrentSprite[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(5),
      I1 => \SOAMBuffer_reg[25]_5\(5),
      I2 => \SOAMBuffer_reg[24]_6\(5),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[5]_i_9_n_0\
    );
\CurrentSprite[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[6]_i_2_n_0\,
      I1 => \CurrentSprite[6]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[6]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[6]_i_5_n_0\,
      O => \CurrentSprite[6]_i_1_n_0\
    );
\CurrentSprite[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(6),
      I3 => \SOAMBuffer_reg_n_0_[31][6]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(6),
      O => \CurrentSprite[6]_i_10_n_0\
    );
\CurrentSprite[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(6),
      I1 => \SOAMBuffer_reg[28]_2\(6),
      I2 => \SOAMBuffer_reg[27]_3\(6),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[6]_i_11_n_0\
    );
\CurrentSprite[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(6),
      I1 => \SOAMBuffer_reg[10]_20\(6),
      I2 => \SOAMBuffer_reg[9]_21\(6),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[6]_i_12_n_0\
    );
\CurrentSprite[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(6),
      I1 => \SOAMBuffer_reg[13]_17\(6),
      I2 => \SOAMBuffer_reg[12]_18\(6),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[6]_i_13_n_0\
    );
\CurrentSprite[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(6),
      I1 => \SOAMBuffer_reg[7]_23\(6),
      I2 => \SOAMBuffer_reg[6]_24\(6),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[6]_i_14_n_0\
    );
\CurrentSprite[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(6),
      I1 => \SOAMBuffer_reg[4]_26\(6),
      I2 => \SOAMBuffer_reg[3]_27\(6),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[6]_i_15_n_0\
    );
\CurrentSprite[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[6]_i_6_n_0\,
      I1 => \CurrentSprite[6]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[6]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[6]_i_2_n_0\
    );
\CurrentSprite[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[6]_i_9_n_0\,
      I1 => \CurrentSprite[6]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[6]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[6]_i_3_n_0\
    );
\CurrentSprite[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[6]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[6]_i_13_n_0\,
      I4 => \CurrentSprite[6]_i_14_n_0\,
      O => \CurrentSprite[6]_i_4_n_0\
    );
\CurrentSprite[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[6]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(6),
      I5 => \SOAMBuffer_reg[0]_30\(6),
      O => \CurrentSprite[6]_i_5_n_0\
    );
\CurrentSprite[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(6),
      I1 => \SOAMBuffer_reg[16]_14\(6),
      I2 => \SOAMBuffer_reg[15]_15\(6),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[6]_i_6_n_0\
    );
\CurrentSprite[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(6),
      I1 => \SOAMBuffer_reg[22]_8\(6),
      I2 => \SOAMBuffer_reg[21]_9\(6),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[6]_i_7_n_0\
    );
\CurrentSprite[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(6),
      I1 => \SOAMBuffer_reg[19]_11\(6),
      I2 => \SOAMBuffer_reg[18]_12\(6),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[6]_i_8_n_0\
    );
\CurrentSprite[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(6),
      I1 => \SOAMBuffer_reg[25]_5\(6),
      I2 => \SOAMBuffer_reg[24]_6\(6),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[6]_i_9_n_0\
    );
\CurrentSprite[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[7]_i_2_n_0\,
      I1 => \CurrentSprite[7]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[7]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[7]_i_5_n_0\,
      O => \CurrentSprite[7]_i_1_n_0\
    );
\CurrentSprite[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(7),
      I3 => \SOAMBuffer_reg_n_0_[31][7]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(7),
      O => \CurrentSprite[7]_i_10_n_0\
    );
\CurrentSprite[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(7),
      I1 => \SOAMBuffer_reg[28]_2\(7),
      I2 => \SOAMBuffer_reg[27]_3\(7),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[7]_i_11_n_0\
    );
\CurrentSprite[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(7),
      I1 => \SOAMBuffer_reg[10]_20\(7),
      I2 => \SOAMBuffer_reg[9]_21\(7),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[7]_i_12_n_0\
    );
\CurrentSprite[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(7),
      I1 => \SOAMBuffer_reg[13]_17\(7),
      I2 => \SOAMBuffer_reg[12]_18\(7),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[7]_i_13_n_0\
    );
\CurrentSprite[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(7),
      I1 => \SOAMBuffer_reg[7]_23\(7),
      I2 => \SOAMBuffer_reg[6]_24\(7),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[7]_i_14_n_0\
    );
\CurrentSprite[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(7),
      I1 => \SOAMBuffer_reg[4]_26\(7),
      I2 => \SOAMBuffer_reg[3]_27\(7),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[7]_i_15_n_0\
    );
\CurrentSprite[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[7]_i_6_n_0\,
      I1 => \CurrentSprite[7]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[7]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[7]_i_2_n_0\
    );
\CurrentSprite[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[7]_i_9_n_0\,
      I1 => \CurrentSprite[7]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[7]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[7]_i_3_n_0\
    );
\CurrentSprite[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[7]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[7]_i_13_n_0\,
      I4 => \CurrentSprite[7]_i_14_n_0\,
      O => \CurrentSprite[7]_i_4_n_0\
    );
\CurrentSprite[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[7]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(7),
      I5 => \SOAMBuffer_reg[0]_30\(7),
      O => \CurrentSprite[7]_i_5_n_0\
    );
\CurrentSprite[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(7),
      I1 => \SOAMBuffer_reg[16]_14\(7),
      I2 => \SOAMBuffer_reg[15]_15\(7),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[7]_i_6_n_0\
    );
\CurrentSprite[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(7),
      I1 => \SOAMBuffer_reg[22]_8\(7),
      I2 => \SOAMBuffer_reg[21]_9\(7),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[7]_i_7_n_0\
    );
\CurrentSprite[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(7),
      I1 => \SOAMBuffer_reg[19]_11\(7),
      I2 => \SOAMBuffer_reg[18]_12\(7),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[7]_i_8_n_0\
    );
\CurrentSprite[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(7),
      I1 => \SOAMBuffer_reg[25]_5\(7),
      I2 => \SOAMBuffer_reg[24]_6\(7),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[7]_i_9_n_0\
    );
\CurrentSprite[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[8]_i_2_n_0\,
      I1 => \CurrentSprite[8]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[8]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[8]_i_5_n_0\,
      O => \CurrentSprite[8]_i_1_n_0\
    );
\CurrentSprite[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(8),
      I3 => \SOAMBuffer_reg_n_0_[31][8]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(8),
      O => \CurrentSprite[8]_i_10_n_0\
    );
\CurrentSprite[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(8),
      I1 => \SOAMBuffer_reg[28]_2\(8),
      I2 => \SOAMBuffer_reg[27]_3\(8),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[8]_i_11_n_0\
    );
\CurrentSprite[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(8),
      I1 => \SOAMBuffer_reg[10]_20\(8),
      I2 => \SOAMBuffer_reg[9]_21\(8),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[8]_i_12_n_0\
    );
\CurrentSprite[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(8),
      I1 => \SOAMBuffer_reg[13]_17\(8),
      I2 => \SOAMBuffer_reg[12]_18\(8),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[8]_i_13_n_0\
    );
\CurrentSprite[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(8),
      I1 => \SOAMBuffer_reg[7]_23\(8),
      I2 => \SOAMBuffer_reg[6]_24\(8),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[8]_i_14_n_0\
    );
\CurrentSprite[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(8),
      I1 => \SOAMBuffer_reg[4]_26\(8),
      I2 => \SOAMBuffer_reg[3]_27\(8),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[8]_i_15_n_0\
    );
\CurrentSprite[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[8]_i_6_n_0\,
      I1 => \CurrentSprite[8]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[8]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[8]_i_2_n_0\
    );
\CurrentSprite[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[8]_i_9_n_0\,
      I1 => \CurrentSprite[8]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[8]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[8]_i_3_n_0\
    );
\CurrentSprite[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[8]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[8]_i_13_n_0\,
      I4 => \CurrentSprite[8]_i_14_n_0\,
      O => \CurrentSprite[8]_i_4_n_0\
    );
\CurrentSprite[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[8]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(8),
      I5 => \SOAMBuffer_reg[0]_30\(8),
      O => \CurrentSprite[8]_i_5_n_0\
    );
\CurrentSprite[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(8),
      I1 => \SOAMBuffer_reg[16]_14\(8),
      I2 => \SOAMBuffer_reg[15]_15\(8),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[8]_i_6_n_0\
    );
\CurrentSprite[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(8),
      I1 => \SOAMBuffer_reg[22]_8\(8),
      I2 => \SOAMBuffer_reg[21]_9\(8),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[8]_i_7_n_0\
    );
\CurrentSprite[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(8),
      I1 => \SOAMBuffer_reg[19]_11\(8),
      I2 => \SOAMBuffer_reg[18]_12\(8),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[8]_i_8_n_0\
    );
\CurrentSprite[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(8),
      I1 => \SOAMBuffer_reg[25]_5\(8),
      I2 => \SOAMBuffer_reg[24]_6\(8),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[8]_i_9_n_0\
    );
\CurrentSprite[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE0E0000FE0E"
    )
        port map (
      I0 => \CurrentSprite[9]_i_2_n_0\,
      I1 => \CurrentSprite[9]_i_3_n_0\,
      I2 => \CurrentSprite[31]_i_10_n_0\,
      I3 => \CurrentSprite[9]_i_4_n_0\,
      I4 => \CurrentSprite[31]_i_12_n_0\,
      I5 => \CurrentSprite[9]_i_5_n_0\,
      O => \CurrentSprite[9]_i_1_n_0\
    );
\CurrentSprite[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD200000FD20"
    )
        port map (
      I0 => CurrentSprite24_in,
      I1 => \CurrentSprite_reg[31]_i_121_n_2\,
      I2 => \SOAMBuffer_reg[30]_0\(9),
      I3 => \SOAMBuffer_reg_n_0_[31][9]\,
      I4 => \CurrentSprite[31]_i_32_n_0\,
      I5 => \SOAMBuffer_reg[29]_1\(9),
      O => \CurrentSprite[9]_i_10_n_0\
    );
\CurrentSprite[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[26]_4\(9),
      I1 => \SOAMBuffer_reg[28]_2\(9),
      I2 => \SOAMBuffer_reg[27]_3\(9),
      I3 => \CurrentSprite[31]_i_124_n_0\,
      I4 => \CurrentSprite[31]_i_160_n_0\,
      I5 => \CurrentSprite[31]_i_161_n_0\,
      O => \CurrentSprite[9]_i_11_n_0\
    );
\CurrentSprite[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[8]_22\(9),
      I1 => \SOAMBuffer_reg[10]_20\(9),
      I2 => \SOAMBuffer_reg[9]_21\(9),
      I3 => \CurrentSprite[31]_i_79_n_0\,
      I4 => \CurrentSprite[31]_i_166_n_0\,
      I5 => \CurrentSprite[31]_i_167_n_0\,
      O => \CurrentSprite[9]_i_12_n_0\
    );
\CurrentSprite[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[11]_19\(9),
      I1 => \SOAMBuffer_reg[13]_17\(9),
      I2 => \SOAMBuffer_reg[12]_18\(9),
      I3 => \CurrentSprite[31]_i_56_n_0\,
      I4 => \CurrentSprite[31]_i_168_n_0\,
      I5 => \CurrentSprite[31]_i_16_n_0\,
      O => \CurrentSprite[9]_i_13_n_0\
    );
\CurrentSprite[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[5]_25\(9),
      I1 => \SOAMBuffer_reg[7]_23\(9),
      I2 => \SOAMBuffer_reg[6]_24\(9),
      I3 => \CurrentSprite[31]_i_31_n_0\,
      I4 => \CurrentSprite[31]_i_169_n_0\,
      I5 => \CurrentSprite[31]_i_26_n_0\,
      O => \CurrentSprite[9]_i_14_n_0\
    );
\CurrentSprite[9]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[2]_28\(9),
      I1 => \SOAMBuffer_reg[4]_26\(9),
      I2 => \SOAMBuffer_reg[3]_27\(9),
      I3 => \CurrentSprite[31]_i_20_n_0\,
      I4 => \CurrentSprite[31]_i_176_n_0\,
      I5 => \CurrentSprite[31]_i_21_n_0\,
      O => \CurrentSprite[9]_i_15_n_0\
    );
\CurrentSprite[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAAE00000000"
    )
        port map (
      I0 => \CurrentSprite[9]_i_6_n_0\,
      I1 => \CurrentSprite[9]_i_7_n_0\,
      I2 => \CurrentSprite[31]_i_46_n_0\,
      I3 => \CurrentSprite[31]_i_47_n_0\,
      I4 => \CurrentSprite[9]_i_8_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[9]_i_2_n_0\
    );
\CurrentSprite[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAFFAAAE"
    )
        port map (
      I0 => \CurrentSprite[9]_i_9_n_0\,
      I1 => \CurrentSprite[9]_i_10_n_0\,
      I2 => \CurrentSprite[31]_i_52_n_0\,
      I3 => \CurrentSprite[31]_i_53_n_0\,
      I4 => \CurrentSprite[9]_i_11_n_0\,
      I5 => \CurrentSprite[31]_i_49_n_0\,
      O => \CurrentSprite[9]_i_3_n_0\
    );
\CurrentSprite[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2322"
    )
        port map (
      I0 => \CurrentSprite[9]_i_12_n_0\,
      I1 => \CurrentSprite[31]_i_57_n_0\,
      I2 => \CurrentSprite[31]_i_55_n_0\,
      I3 => \CurrentSprite[9]_i_13_n_0\,
      I4 => \CurrentSprite[9]_i_14_n_0\,
      O => \CurrentSprite[9]_i_4_n_0\
    );
\CurrentSprite[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFF8A00BA008A"
    )
        port map (
      I0 => \CurrentSprite[9]_i_15_n_0\,
      I1 => \CurrentSprite_reg[31]_i_25_n_2\,
      I2 => CurrentSprite291_in,
      I3 => \CurrentSprite[31]_i_36_n_0\,
      I4 => \SOAMBuffer_reg[1]_29\(9),
      I5 => \SOAMBuffer_reg[0]_30\(9),
      O => \CurrentSprite[9]_i_5_n_0\
    );
\CurrentSprite[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[14]_16\(9),
      I1 => \SOAMBuffer_reg[16]_14\(9),
      I2 => \SOAMBuffer_reg[15]_15\(9),
      I3 => \CurrentSprite[31]_i_18_n_0\,
      I4 => \CurrentSprite[31]_i_148_n_0\,
      I5 => \CurrentSprite[31]_i_17_n_0\,
      O => \CurrentSprite[9]_i_6_n_0\
    );
\CurrentSprite[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[20]_10\(9),
      I1 => \SOAMBuffer_reg[22]_8\(9),
      I2 => \SOAMBuffer_reg[21]_9\(9),
      I3 => \CurrentSprite[31]_i_39_n_0\,
      I4 => \CurrentSprite[31]_i_149_n_0\,
      I5 => \CurrentSprite[31]_i_38_n_0\,
      O => \CurrentSprite[9]_i_7_n_0\
    );
\CurrentSprite[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[17]_13\(9),
      I1 => \SOAMBuffer_reg[19]_11\(9),
      I2 => \SOAMBuffer_reg[18]_12\(9),
      I3 => \CurrentSprite[31]_i_147_n_0\,
      I4 => \CurrentSprite[31]_i_154_n_0\,
      I5 => \CurrentSprite[31]_i_142_n_0\,
      O => \CurrentSprite[9]_i_8_n_0\
    );
\CurrentSprite[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AACCAA00"
    )
        port map (
      I0 => \SOAMBuffer_reg[23]_7\(9),
      I1 => \SOAMBuffer_reg[25]_5\(9),
      I2 => \SOAMBuffer_reg[24]_6\(9),
      I3 => \CurrentSprite[31]_i_40_n_0\,
      I4 => \CurrentSprite[31]_i_155_n_0\,
      I5 => \CurrentSprite[31]_i_127_n_0\,
      O => \CurrentSprite[9]_i_9_n_0\
    );
\CurrentSprite_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[0]_i_1_n_0\,
      Q => SpriteOffset0(6),
      S => CurrentSprite
    );
\CurrentSprite_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[10]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[10]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[11]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[11]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[12]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[12]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[13]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[13]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[14]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[14]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[15]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[15]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[16]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[16]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[17]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[17]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[18]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[18]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[19]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[19]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[1]_i_1_n_0\,
      Q => SpriteOffset0(7),
      S => CurrentSprite
    );
\CurrentSprite_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[20]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[20]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[21]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[21]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[22]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[22]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[23]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[23]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[24]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[24]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[25]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[25]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[26]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[26]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[27]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[27]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[28]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[28]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[29]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[29]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[2]_i_1_n_0\,
      Q => SpriteOffset0(8),
      S => CurrentSprite
    );
\CurrentSprite_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[30]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[30]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[31]_i_2_n_0\,
      Q => \CurrentSprite_reg_n_0_[31]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[31]_i_101\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_269_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_101_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_101_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_101_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_101_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_101_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_270_n_0\,
      S(2) => \CurrentSprite[31]_i_271_n_0\,
      S(1) => \CurrentSprite[31]_i_272_n_0\,
      S(0) => \CurrentSprite[31]_i_273_n_0\
    );
\CurrentSprite_reg[31]_i_104\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_104_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_104_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_104_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_104_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_275_n_0\,
      DI(2) => \CurrentSprite[31]_i_276_n_0\,
      DI(1) => \CurrentSprite[31]_i_277_n_0\,
      DI(0) => \CurrentSprite[31]_i_278_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_104_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_279_n_0\,
      S(2) => \CurrentSprite[31]_i_280_n_0\,
      S(1) => \CurrentSprite[31]_i_281_n_0\,
      S(0) => \CurrentSprite[31]_i_282_n_0\
    );
\CurrentSprite_reg[31]_i_107\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_283_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_107_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_107_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_107_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_107_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_107_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_284_n_0\,
      S(2) => \CurrentSprite[31]_i_285_n_0\,
      S(1) => \CurrentSprite[31]_i_286_n_0\,
      S(0) => \CurrentSprite[31]_i_287_n_0\
    );
\CurrentSprite_reg[31]_i_110\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_289_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_110_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite279_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_290_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_110_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_291_n_0\
    );
\CurrentSprite_reg[31]_i_111\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_292_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_111_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_111_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_111_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_111_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_293_n_0\,
      S(0) => \CurrentSprite[31]_i_294_n_0\
    );
\CurrentSprite_reg[31]_i_112\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_295_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_112_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite27_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_296_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_112_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_297_n_0\
    );
\CurrentSprite_reg[31]_i_113\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_298_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_113_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_113_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_113_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_113_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_299_n_0\,
      S(0) => \CurrentSprite[31]_i_300_n_0\
    );
\CurrentSprite_reg[31]_i_114\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_301_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_114_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_114_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_114_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_114_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_114_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_302_n_0\,
      S(2) => \CurrentSprite[31]_i_303_n_0\,
      S(1) => \CurrentSprite[31]_i_304_n_0\,
      S(0) => \CurrentSprite[31]_i_305_n_0\
    );
\CurrentSprite_reg[31]_i_117\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_117_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_117_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_117_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_117_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_307_n_0\,
      DI(2) => \CurrentSprite[31]_i_308_n_0\,
      DI(1) => \CurrentSprite[31]_i_309_n_0\,
      DI(0) => \CurrentSprite[31]_i_310_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_117_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_311_n_0\,
      S(2) => \CurrentSprite[31]_i_312_n_0\,
      S(1) => \CurrentSprite[31]_i_313_n_0\,
      S(0) => \CurrentSprite[31]_i_314_n_0\
    );
\CurrentSprite_reg[31]_i_120\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_315_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_120_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite24_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_316_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_120_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_317_n_0\
    );
\CurrentSprite_reg[31]_i_121\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_318_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_121_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_121_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_121_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_121_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_319_n_0\,
      S(0) => \CurrentSprite[31]_i_320_n_0\
    );
\CurrentSprite_reg[31]_i_122\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_321_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_122_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite294_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_322_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_122_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_323_n_0\
    );
\CurrentSprite_reg[31]_i_123\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_324_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_123_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_123_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_123_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_123_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_325_n_0\,
      S(0) => \CurrentSprite[31]_i_326_n_0\
    );
\CurrentSprite_reg[31]_i_125\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_327_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_125_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite213_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_328_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_125_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_329_n_0\
    );
\CurrentSprite_reg[31]_i_126\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_330_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_126_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_126_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_126_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_126_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_331_n_0\,
      S(0) => \CurrentSprite[31]_i_332_n_0\
    );
\CurrentSprite_reg[31]_i_128\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_333_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_128_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite219_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_334_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_128_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_335_n_0\
    );
\CurrentSprite_reg[31]_i_129\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_336_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_129_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_129_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_129_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_129_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_337_n_0\,
      S(0) => \CurrentSprite[31]_i_338_n_0\
    );
\CurrentSprite_reg[31]_i_130\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_339_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_130_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite231_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_340_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_130_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_341_n_0\
    );
\CurrentSprite_reg[31]_i_131\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_342_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_131_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_131_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_131_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_131_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_343_n_0\,
      S(0) => \CurrentSprite[31]_i_344_n_0\
    );
\CurrentSprite_reg[31]_i_132\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_345_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_132_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite234_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_346_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_132_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_347_n_0\
    );
\CurrentSprite_reg[31]_i_133\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_348_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_133_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_133_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_133_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_133_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_349_n_0\,
      S(0) => \CurrentSprite[31]_i_350_n_0\
    );
\CurrentSprite_reg[31]_i_134\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_351_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_134_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite225_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_352_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_134_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_353_n_0\
    );
\CurrentSprite_reg[31]_i_135\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_354_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_135_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_135_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_135_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_135_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_355_n_0\,
      S(0) => \CurrentSprite[31]_i_356_n_0\
    );
\CurrentSprite_reg[31]_i_136\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_357_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_136_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_136_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_136_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_136_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_136_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_358_n_0\,
      S(2) => \CurrentSprite[31]_i_359_n_0\,
      S(1) => \CurrentSprite[31]_i_360_n_0\,
      S(0) => \CurrentSprite[31]_i_361_n_0\
    );
\CurrentSprite_reg[31]_i_139\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_139_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_139_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_139_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_139_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_363_n_0\,
      DI(2) => \CurrentSprite[31]_i_364_n_0\,
      DI(1) => \CurrentSprite[31]_i_365_n_0\,
      DI(0) => \CurrentSprite[31]_i_366_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_139_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_367_n_0\,
      S(2) => \CurrentSprite[31]_i_368_n_0\,
      S(1) => \CurrentSprite[31]_i_369_n_0\,
      S(0) => \CurrentSprite[31]_i_370_n_0\
    );
\CurrentSprite_reg[31]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_65_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_14_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_14_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_66_n_0\,
      S(0) => \CurrentSprite[31]_i_67_n_0\
    );
\CurrentSprite_reg[31]_i_143\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_371_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_143_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite237_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_372_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_143_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_373_n_0\
    );
\CurrentSprite_reg[31]_i_144\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_374_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_144_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_144_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_144_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_144_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_375_n_0\,
      S(0) => \CurrentSprite[31]_i_376_n_0\
    );
\CurrentSprite_reg[31]_i_145\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_377_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_145_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite246_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_378_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_145_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_379_n_0\
    );
\CurrentSprite_reg[31]_i_146\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_380_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_146_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_146_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_146_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_146_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_381_n_0\,
      S(0) => \CurrentSprite[31]_i_382_n_0\
    );
\CurrentSprite_reg[31]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_68_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_15_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite255_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_69_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_15_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_70_n_0\
    );
\CurrentSprite_reg[31]_i_150\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_383_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_150_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite240_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_384_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_150_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_385_n_0\
    );
\CurrentSprite_reg[31]_i_151\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_386_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_151_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_151_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_151_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_151_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_387_n_0\,
      S(0) => \CurrentSprite[31]_i_388_n_0\
    );
\CurrentSprite_reg[31]_i_152\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_389_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_152_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_152_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_152_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_152_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_390_n_0\,
      S(0) => \CurrentSprite[31]_i_391_n_0\
    );
\CurrentSprite_reg[31]_i_153\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_392_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_153_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite243_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_393_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_153_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_394_n_0\
    );
\CurrentSprite_reg[31]_i_156\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_395_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_156_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_156_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_156_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_156_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_396_n_0\,
      S(0) => \CurrentSprite[31]_i_397_n_0\
    );
\CurrentSprite_reg[31]_i_157\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_398_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_157_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite216_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_399_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_157_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_400_n_0\
    );
\CurrentSprite_reg[31]_i_158\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_401_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_158_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite222_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_402_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_158_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_403_n_0\
    );
\CurrentSprite_reg[31]_i_159\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_404_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_159_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_159_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_159_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_159_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_405_n_0\,
      S(0) => \CurrentSprite[31]_i_406_n_0\
    );
\CurrentSprite_reg[31]_i_162\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_407_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_162_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_162_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_162_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_162_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_408_n_0\,
      S(0) => \CurrentSprite[31]_i_409_n_0\
    );
\CurrentSprite_reg[31]_i_163\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_410_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_163_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite270_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_411_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_163_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_412_n_0\
    );
\CurrentSprite_reg[31]_i_164\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_413_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_164_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite261_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_414_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_164_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_415_n_0\
    );
\CurrentSprite_reg[31]_i_165\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_416_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_165_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_165_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_165_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_165_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_417_n_0\,
      S(0) => \CurrentSprite[31]_i_418_n_0\
    );
\CurrentSprite_reg[31]_i_170\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_419_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_170_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_170_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_170_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_170_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_170_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_420_n_0\,
      S(2) => \CurrentSprite[31]_i_421_n_0\,
      S(1) => \CurrentSprite[31]_i_422_n_0\,
      S(0) => \CurrentSprite[31]_i_423_n_0\
    );
\CurrentSprite_reg[31]_i_173\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_173_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_173_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_173_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_173_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_425_n_0\,
      DI(2) => \CurrentSprite[31]_i_426_n_0\,
      DI(1) => \CurrentSprite[31]_i_427_n_0\,
      DI(0) => \CurrentSprite[31]_i_428_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_173_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_429_n_0\,
      S(2) => \CurrentSprite[31]_i_430_n_0\,
      S(1) => \CurrentSprite[31]_i_431_n_0\,
      S(0) => \CurrentSprite[31]_i_432_n_0\
    );
\CurrentSprite_reg[31]_i_177\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_177_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_177_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_177_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_177_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_177_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_433_n_0\,
      S(2) => \CurrentSprite[31]_i_434_n_0\,
      S(1) => \CurrentSprite[31]_i_435_n_0\,
      S(0) => \CurrentSprite[31]_i_436_n_0\
    );
\CurrentSprite_reg[31]_i_191\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_191_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_191_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_191_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_191_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_437_n_0\,
      DI(2) => \CurrentSprite[31]_i_438_n_0\,
      DI(1) => \CurrentSprite[31]_i_439_n_0\,
      DI(0) => \CurrentSprite[31]_i_440_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_191_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_441_n_0\,
      S(2) => \CurrentSprite[31]_i_442_n_0\,
      S(1) => \CurrentSprite[31]_i_443_n_0\,
      S(0) => \CurrentSprite[31]_i_444_n_0\
    );
\CurrentSprite_reg[31]_i_194\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_445_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_194_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_194_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_194_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_194_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_194_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_446_n_0\,
      S(2) => \CurrentSprite[31]_i_447_n_0\,
      S(1) => \CurrentSprite[31]_i_448_n_0\,
      S(0) => \CurrentSprite[31]_i_449_n_0\
    );
\CurrentSprite_reg[31]_i_197\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_197_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_197_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_197_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_197_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_451_n_0\,
      DI(2) => \CurrentSprite[31]_i_452_n_0\,
      DI(1) => \CurrentSprite[31]_i_453_n_0\,
      DI(0) => \CurrentSprite[31]_i_454_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_197_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_455_n_0\,
      S(2) => \CurrentSprite[31]_i_456_n_0\,
      S(1) => \CurrentSprite[31]_i_457_n_0\,
      S(0) => \CurrentSprite[31]_i_458_n_0\
    );
\CurrentSprite_reg[31]_i_200\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_459_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_200_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_200_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_200_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_200_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_200_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_460_n_0\,
      S(2) => \CurrentSprite[31]_i_461_n_0\,
      S(1) => \CurrentSprite[31]_i_462_n_0\,
      S(0) => \CurrentSprite[31]_i_463_n_0\
    );
\CurrentSprite_reg[31]_i_203\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_203_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_203_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_203_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_203_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_465_n_0\,
      DI(2) => \CurrentSprite[31]_i_466_n_0\,
      DI(1) => \CurrentSprite[31]_i_467_n_0\,
      DI(0) => \CurrentSprite[31]_i_468_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_203_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_469_n_0\,
      S(2) => \CurrentSprite[31]_i_470_n_0\,
      S(1) => \CurrentSprite[31]_i_471_n_0\,
      S(0) => \CurrentSprite[31]_i_472_n_0\
    );
\CurrentSprite_reg[31]_i_206\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_473_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_206_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_206_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_206_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_206_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_206_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_474_n_0\,
      S(2) => \CurrentSprite[31]_i_475_n_0\,
      S(1) => \CurrentSprite[31]_i_476_n_0\,
      S(0) => \CurrentSprite[31]_i_477_n_0\
    );
\CurrentSprite_reg[31]_i_209\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_209_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_209_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_209_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_209_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_479_n_0\,
      DI(2) => \CurrentSprite[31]_i_480_n_0\,
      DI(1) => \CurrentSprite[31]_i_481_n_0\,
      DI(0) => \CurrentSprite[31]_i_482_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_209_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_483_n_0\,
      S(2) => \CurrentSprite[31]_i_484_n_0\,
      S(1) => \CurrentSprite[31]_i_485_n_0\,
      S(0) => \CurrentSprite[31]_i_486_n_0\
    );
\CurrentSprite_reg[31]_i_212\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_487_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_212_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_212_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_212_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_212_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_212_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_488_n_0\,
      S(2) => \CurrentSprite[31]_i_489_n_0\,
      S(1) => \CurrentSprite[31]_i_490_n_0\,
      S(0) => \CurrentSprite[31]_i_491_n_0\
    );
\CurrentSprite_reg[31]_i_215\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_215_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_215_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_215_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_215_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_493_n_0\,
      DI(2) => \CurrentSprite[31]_i_494_n_0\,
      DI(1) => \CurrentSprite[31]_i_495_n_0\,
      DI(0) => \CurrentSprite[31]_i_496_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_215_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_497_n_0\,
      S(2) => \CurrentSprite[31]_i_498_n_0\,
      S(1) => \CurrentSprite[31]_i_499_n_0\,
      S(0) => \CurrentSprite[31]_i_500_n_0\
    );
\CurrentSprite_reg[31]_i_218\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_501_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_218_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_218_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_218_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_218_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_218_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_502_n_0\,
      S(2) => \CurrentSprite[31]_i_503_n_0\,
      S(1) => \CurrentSprite[31]_i_504_n_0\,
      S(0) => \CurrentSprite[31]_i_505_n_0\
    );
\CurrentSprite_reg[31]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_84_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_22_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite22_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_85_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_22_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_86_n_0\
    );
\CurrentSprite_reg[31]_i_221\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_221_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_221_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_221_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_221_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_507_n_0\,
      DI(2) => \CurrentSprite[31]_i_508_n_0\,
      DI(1) => \CurrentSprite[31]_i_509_n_0\,
      DI(0) => \CurrentSprite[31]_i_510_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_221_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_511_n_0\,
      S(2) => \CurrentSprite[31]_i_512_n_0\,
      S(1) => \CurrentSprite[31]_i_513_n_0\,
      S(0) => \CurrentSprite[31]_i_514_n_0\
    );
\CurrentSprite_reg[31]_i_224\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_515_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_224_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_224_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_224_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_224_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_224_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_516_n_0\,
      S(2) => \CurrentSprite[31]_i_517_n_0\,
      S(1) => \CurrentSprite[31]_i_518_n_0\,
      S(0) => \CurrentSprite[31]_i_519_n_0\
    );
\CurrentSprite_reg[31]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_87_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_23_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_23_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_88_n_0\,
      S(0) => \CurrentSprite[31]_i_89_n_0\
    );
\CurrentSprite_reg[31]_i_235\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_235_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_235_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_235_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_235_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_235_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_521_n_0\,
      S(2) => \CurrentSprite[31]_i_522_n_0\,
      S(1) => \CurrentSprite[31]_i_523_n_0\,
      S(0) => \CurrentSprite[31]_i_524_n_0\
    );
\CurrentSprite_reg[31]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_90_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_24_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite291_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_91_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_92_n_0\
    );
\CurrentSprite_reg[31]_i_249\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_249_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_249_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_249_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_249_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_249_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_525_n_0\,
      S(2) => \CurrentSprite[31]_i_526_n_0\,
      S(1) => \CurrentSprite[31]_i_527_n_0\,
      S(0) => \CurrentSprite[31]_i_528_n_0\
    );
\CurrentSprite_reg[31]_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_93_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_25_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_25_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_25_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_25_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_94_n_0\,
      S(0) => \CurrentSprite[31]_i_95_n_0\
    );
\CurrentSprite_reg[31]_i_255\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_255_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_255_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_255_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_255_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_529_n_0\,
      DI(2) => \CurrentSprite[31]_i_530_n_0\,
      DI(1) => \CurrentSprite[31]_i_531_n_0\,
      DI(0) => \CurrentSprite[31]_i_532_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_255_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_533_n_0\,
      S(2) => \CurrentSprite[31]_i_534_n_0\,
      S(1) => \CurrentSprite[31]_i_535_n_0\,
      S(0) => \CurrentSprite[31]_i_536_n_0\
    );
\CurrentSprite_reg[31]_i_258\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_537_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_258_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_258_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_258_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_258_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_258_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_538_n_0\,
      S(2) => \CurrentSprite[31]_i_539_n_0\,
      S(1) => \CurrentSprite[31]_i_540_n_0\,
      S(0) => \CurrentSprite[31]_i_541_n_0\
    );
\CurrentSprite_reg[31]_i_269\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_269_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_269_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_269_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_269_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_269_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_543_n_0\,
      S(2) => \CurrentSprite[31]_i_544_n_0\,
      S(1) => \CurrentSprite[31]_i_545_n_0\,
      S(0) => \CurrentSprite[31]_i_546_n_0\
    );
\CurrentSprite_reg[31]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_98_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_27_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite273_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_99_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_27_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_100_n_0\
    );
\CurrentSprite_reg[31]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_101_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_28_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_28_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_28_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_28_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_102_n_0\,
      S(0) => \CurrentSprite[31]_i_103_n_0\
    );
\CurrentSprite_reg[31]_i_283\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_283_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_283_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_283_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_283_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_283_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_547_n_0\,
      S(2) => \CurrentSprite[31]_i_548_n_0\,
      S(1) => \CurrentSprite[31]_i_549_n_0\,
      S(0) => \CurrentSprite[31]_i_550_n_0\
    );
\CurrentSprite_reg[31]_i_289\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_289_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_289_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_289_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_289_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_551_n_0\,
      DI(2) => \CurrentSprite[31]_i_552_n_0\,
      DI(1) => \CurrentSprite[31]_i_553_n_0\,
      DI(0) => \CurrentSprite[31]_i_554_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_289_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_555_n_0\,
      S(2) => \CurrentSprite[31]_i_556_n_0\,
      S(1) => \CurrentSprite[31]_i_557_n_0\,
      S(0) => \CurrentSprite[31]_i_558_n_0\
    );
\CurrentSprite_reg[31]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_104_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_29_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite282_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_105_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_29_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_106_n_0\
    );
\CurrentSprite_reg[31]_i_292\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_559_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_292_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_292_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_292_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_292_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_292_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_560_n_0\,
      S(2) => \CurrentSprite[31]_i_561_n_0\,
      S(1) => \CurrentSprite[31]_i_562_n_0\,
      S(0) => \CurrentSprite[31]_i_563_n_0\
    );
\CurrentSprite_reg[31]_i_295\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_295_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_295_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_295_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_295_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_565_n_0\,
      DI(2) => \CurrentSprite[31]_i_566_n_0\,
      DI(1) => \CurrentSprite[31]_i_567_n_0\,
      DI(0) => \CurrentSprite[31]_i_568_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_295_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_569_n_0\,
      S(2) => \CurrentSprite[31]_i_570_n_0\,
      S(1) => \CurrentSprite[31]_i_571_n_0\,
      S(0) => \CurrentSprite[31]_i_572_n_0\
    );
\CurrentSprite_reg[31]_i_298\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_573_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_298_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_298_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_298_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_298_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_298_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_574_n_0\,
      S(2) => \CurrentSprite[31]_i_575_n_0\,
      S(1) => \CurrentSprite[31]_i_576_n_0\,
      S(0) => \CurrentSprite[31]_i_577_n_0\
    );
\CurrentSprite_reg[31]_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_107_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_30_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_30_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_30_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_30_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_108_n_0\,
      S(0) => \CurrentSprite[31]_i_109_n_0\
    );
\CurrentSprite_reg[31]_i_301\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_301_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_301_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_301_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_301_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_301_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_579_n_0\,
      S(2) => \CurrentSprite[31]_i_580_n_0\,
      S(1) => \CurrentSprite[31]_i_581_n_0\,
      S(0) => \CurrentSprite[31]_i_582_n_0\
    );
\CurrentSprite_reg[31]_i_315\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_315_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_315_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_315_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_315_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_583_n_0\,
      DI(2) => \CurrentSprite[31]_i_584_n_0\,
      DI(1) => \CurrentSprite[31]_i_585_n_0\,
      DI(0) => \CurrentSprite[31]_i_586_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_315_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_587_n_0\,
      S(2) => \CurrentSprite[31]_i_588_n_0\,
      S(1) => \CurrentSprite[31]_i_589_n_0\,
      S(0) => \CurrentSprite[31]_i_590_n_0\
    );
\CurrentSprite_reg[31]_i_318\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_591_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_318_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_318_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_318_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_318_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_318_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_592_n_0\,
      S(2) => \CurrentSprite[31]_i_593_n_0\,
      S(1) => \CurrentSprite[31]_i_594_n_0\,
      S(0) => \CurrentSprite[31]_i_595_n_0\
    );
\CurrentSprite_reg[31]_i_321\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_321_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_321_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_321_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_321_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_597_n_0\,
      DI(2) => \CurrentSprite[31]_i_598_n_0\,
      DI(1) => \CurrentSprite[31]_i_599_n_0\,
      DI(0) => \CurrentSprite[31]_i_600_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_321_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_601_n_0\,
      S(2) => \CurrentSprite[31]_i_602_n_0\,
      S(1) => \CurrentSprite[31]_i_603_n_0\,
      S(0) => \CurrentSprite[31]_i_604_n_0\
    );
\CurrentSprite_reg[31]_i_324\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_605_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_324_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_324_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_324_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_324_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_324_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_606_n_0\,
      S(2) => \CurrentSprite[31]_i_607_n_0\,
      S(1) => \CurrentSprite[31]_i_608_n_0\,
      S(0) => \CurrentSprite[31]_i_609_n_0\
    );
\CurrentSprite_reg[31]_i_327\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_327_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_327_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_327_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_327_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_611_n_0\,
      DI(2) => \CurrentSprite[31]_i_612_n_0\,
      DI(1) => \CurrentSprite[31]_i_613_n_0\,
      DI(0) => \CurrentSprite[31]_i_614_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_327_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_615_n_0\,
      S(2) => \CurrentSprite[31]_i_616_n_0\,
      S(1) => \CurrentSprite[31]_i_617_n_0\,
      S(0) => \CurrentSprite[31]_i_618_n_0\
    );
\CurrentSprite_reg[31]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_114_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_33_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_33_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_33_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_33_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_115_n_0\,
      S(0) => \CurrentSprite[31]_i_116_n_0\
    );
\CurrentSprite_reg[31]_i_330\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_619_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_330_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_330_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_330_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_330_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_330_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_620_n_0\,
      S(2) => \CurrentSprite[31]_i_621_n_0\,
      S(1) => \CurrentSprite[31]_i_622_n_0\,
      S(0) => \CurrentSprite[31]_i_623_n_0\
    );
\CurrentSprite_reg[31]_i_333\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_333_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_333_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_333_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_333_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_625_n_0\,
      DI(2) => \CurrentSprite[31]_i_626_n_0\,
      DI(1) => \CurrentSprite[31]_i_627_n_0\,
      DI(0) => \CurrentSprite[31]_i_628_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_333_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_629_n_0\,
      S(2) => \CurrentSprite[31]_i_630_n_0\,
      S(1) => \CurrentSprite[31]_i_631_n_0\,
      S(0) => \CurrentSprite[31]_i_632_n_0\
    );
\CurrentSprite_reg[31]_i_336\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_633_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_336_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_336_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_336_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_336_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_336_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_634_n_0\,
      S(2) => \CurrentSprite[31]_i_635_n_0\,
      S(1) => \CurrentSprite[31]_i_636_n_0\,
      S(0) => \CurrentSprite[31]_i_637_n_0\
    );
\CurrentSprite_reg[31]_i_339\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_339_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_339_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_339_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_339_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_639_n_0\,
      DI(2) => \CurrentSprite[31]_i_640_n_0\,
      DI(1) => \CurrentSprite[31]_i_641_n_0\,
      DI(0) => \CurrentSprite[31]_i_642_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_339_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_643_n_0\,
      S(2) => \CurrentSprite[31]_i_644_n_0\,
      S(1) => \CurrentSprite[31]_i_645_n_0\,
      S(0) => \CurrentSprite[31]_i_646_n_0\
    );
\CurrentSprite_reg[31]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_117_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_34_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite210_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_118_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_34_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_119_n_0\
    );
\CurrentSprite_reg[31]_i_342\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_647_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_342_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_342_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_342_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_342_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_342_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_648_n_0\,
      S(2) => \CurrentSprite[31]_i_649_n_0\,
      S(1) => \CurrentSprite[31]_i_650_n_0\,
      S(0) => \CurrentSprite[31]_i_651_n_0\
    );
\CurrentSprite_reg[31]_i_345\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_345_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_345_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_345_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_345_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_653_n_0\,
      DI(2) => \CurrentSprite[31]_i_654_n_0\,
      DI(1) => \CurrentSprite[31]_i_655_n_0\,
      DI(0) => \CurrentSprite[31]_i_656_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_345_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_657_n_0\,
      S(2) => \CurrentSprite[31]_i_658_n_0\,
      S(1) => \CurrentSprite[31]_i_659_n_0\,
      S(0) => \CurrentSprite[31]_i_660_n_0\
    );
\CurrentSprite_reg[31]_i_348\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_661_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_348_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_348_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_348_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_348_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_348_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_662_n_0\,
      S(2) => \CurrentSprite[31]_i_663_n_0\,
      S(1) => \CurrentSprite[31]_i_664_n_0\,
      S(0) => \CurrentSprite[31]_i_665_n_0\
    );
\CurrentSprite_reg[31]_i_351\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_351_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_351_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_351_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_351_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_667_n_0\,
      DI(2) => \CurrentSprite[31]_i_668_n_0\,
      DI(1) => \CurrentSprite[31]_i_669_n_0\,
      DI(0) => \CurrentSprite[31]_i_670_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_351_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_671_n_0\,
      S(2) => \CurrentSprite[31]_i_672_n_0\,
      S(1) => \CurrentSprite[31]_i_673_n_0\,
      S(0) => \CurrentSprite[31]_i_674_n_0\
    );
\CurrentSprite_reg[31]_i_354\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_675_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_354_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_354_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_354_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_354_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_354_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_676_n_0\,
      S(2) => \CurrentSprite[31]_i_677_n_0\,
      S(1) => \CurrentSprite[31]_i_678_n_0\,
      S(0) => \CurrentSprite[31]_i_679_n_0\
    );
\CurrentSprite_reg[31]_i_357\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_357_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_357_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_357_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_357_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_357_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_681_n_0\,
      S(2) => \CurrentSprite[31]_i_682_n_0\,
      S(1) => \CurrentSprite[31]_i_683_n_0\,
      S(0) => \CurrentSprite[31]_i_684_n_0\
    );
\CurrentSprite_reg[31]_i_371\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_371_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_371_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_371_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_371_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_685_n_0\,
      DI(2) => \CurrentSprite[31]_i_686_n_0\,
      DI(1) => \CurrentSprite[31]_i_687_n_0\,
      DI(0) => \CurrentSprite[31]_i_688_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_371_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_689_n_0\,
      S(2) => \CurrentSprite[31]_i_690_n_0\,
      S(1) => \CurrentSprite[31]_i_691_n_0\,
      S(0) => \CurrentSprite[31]_i_692_n_0\
    );
\CurrentSprite_reg[31]_i_374\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_693_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_374_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_374_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_374_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_374_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_374_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_694_n_0\,
      S(2) => \CurrentSprite[31]_i_695_n_0\,
      S(1) => \CurrentSprite[31]_i_696_n_0\,
      S(0) => \CurrentSprite[31]_i_697_n_0\
    );
\CurrentSprite_reg[31]_i_377\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_377_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_377_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_377_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_377_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_699_n_0\,
      DI(2) => \CurrentSprite[31]_i_700_n_0\,
      DI(1) => \CurrentSprite[31]_i_701_n_0\,
      DI(0) => \CurrentSprite[31]_i_702_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_377_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_703_n_0\,
      S(2) => \CurrentSprite[31]_i_704_n_0\,
      S(1) => \CurrentSprite[31]_i_705_n_0\,
      S(0) => \CurrentSprite[31]_i_706_n_0\
    );
\CurrentSprite_reg[31]_i_380\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_707_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_380_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_380_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_380_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_380_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_380_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_708_n_0\,
      S(2) => \CurrentSprite[31]_i_709_n_0\,
      S(1) => \CurrentSprite[31]_i_710_n_0\,
      S(0) => \CurrentSprite[31]_i_711_n_0\
    );
\CurrentSprite_reg[31]_i_383\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_383_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_383_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_383_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_383_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_713_n_0\,
      DI(2) => \CurrentSprite[31]_i_714_n_0\,
      DI(1) => \CurrentSprite[31]_i_715_n_0\,
      DI(0) => \CurrentSprite[31]_i_716_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_383_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_717_n_0\,
      S(2) => \CurrentSprite[31]_i_718_n_0\,
      S(1) => \CurrentSprite[31]_i_719_n_0\,
      S(0) => \CurrentSprite[31]_i_720_n_0\
    );
\CurrentSprite_reg[31]_i_386\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_721_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_386_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_386_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_386_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_386_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_386_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_722_n_0\,
      S(2) => \CurrentSprite[31]_i_723_n_0\,
      S(1) => \CurrentSprite[31]_i_724_n_0\,
      S(0) => \CurrentSprite[31]_i_725_n_0\
    );
\CurrentSprite_reg[31]_i_389\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_727_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_389_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_389_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_389_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_389_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_389_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_728_n_0\,
      S(2) => \CurrentSprite[31]_i_729_n_0\,
      S(1) => \CurrentSprite[31]_i_730_n_0\,
      S(0) => \CurrentSprite[31]_i_731_n_0\
    );
\CurrentSprite_reg[31]_i_392\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_392_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_392_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_392_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_392_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_733_n_0\,
      DI(2) => \CurrentSprite[31]_i_734_n_0\,
      DI(1) => \CurrentSprite[31]_i_735_n_0\,
      DI(0) => \CurrentSprite[31]_i_736_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_392_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_737_n_0\,
      S(2) => \CurrentSprite[31]_i_738_n_0\,
      S(1) => \CurrentSprite[31]_i_739_n_0\,
      S(0) => \CurrentSprite[31]_i_740_n_0\
    );
\CurrentSprite_reg[31]_i_395\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_741_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_395_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_395_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_395_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_395_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_395_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_742_n_0\,
      S(2) => \CurrentSprite[31]_i_743_n_0\,
      S(1) => \CurrentSprite[31]_i_744_n_0\,
      S(0) => \CurrentSprite[31]_i_745_n_0\
    );
\CurrentSprite_reg[31]_i_398\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_398_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_398_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_398_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_398_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_747_n_0\,
      DI(2) => \CurrentSprite[31]_i_748_n_0\,
      DI(1) => \CurrentSprite[31]_i_749_n_0\,
      DI(0) => \CurrentSprite[31]_i_750_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_398_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_751_n_0\,
      S(2) => \CurrentSprite[31]_i_752_n_0\,
      S(1) => \CurrentSprite[31]_i_753_n_0\,
      S(0) => \CurrentSprite[31]_i_754_n_0\
    );
\CurrentSprite_reg[31]_i_401\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_401_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_401_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_401_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_401_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_755_n_0\,
      DI(2) => \CurrentSprite[31]_i_756_n_0\,
      DI(1) => \CurrentSprite[31]_i_757_n_0\,
      DI(0) => \CurrentSprite[31]_i_758_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_401_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_759_n_0\,
      S(2) => \CurrentSprite[31]_i_760_n_0\,
      S(1) => \CurrentSprite[31]_i_761_n_0\,
      S(0) => \CurrentSprite[31]_i_762_n_0\
    );
\CurrentSprite_reg[31]_i_404\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_763_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_404_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_404_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_404_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_404_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_404_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_764_n_0\,
      S(2) => \CurrentSprite[31]_i_765_n_0\,
      S(1) => \CurrentSprite[31]_i_766_n_0\,
      S(0) => \CurrentSprite[31]_i_767_n_0\
    );
\CurrentSprite_reg[31]_i_407\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_769_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_407_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_407_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_407_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_407_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_407_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_770_n_0\,
      S(2) => \CurrentSprite[31]_i_771_n_0\,
      S(1) => \CurrentSprite[31]_i_772_n_0\,
      S(0) => \CurrentSprite[31]_i_773_n_0\
    );
\CurrentSprite_reg[31]_i_41\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_136_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_41_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_41_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_41_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_41_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_137_n_0\,
      S(0) => \CurrentSprite[31]_i_138_n_0\
    );
\CurrentSprite_reg[31]_i_410\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_410_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_410_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_410_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_410_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_775_n_0\,
      DI(2) => \CurrentSprite[31]_i_776_n_0\,
      DI(1) => \CurrentSprite[31]_i_777_n_0\,
      DI(0) => \CurrentSprite[31]_i_778_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_410_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_779_n_0\,
      S(2) => \CurrentSprite[31]_i_780_n_0\,
      S(1) => \CurrentSprite[31]_i_781_n_0\,
      S(0) => \CurrentSprite[31]_i_782_n_0\
    );
\CurrentSprite_reg[31]_i_413\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_413_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_413_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_413_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_413_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_783_n_0\,
      DI(2) => \CurrentSprite[31]_i_784_n_0\,
      DI(1) => \CurrentSprite[31]_i_785_n_0\,
      DI(0) => \CurrentSprite[31]_i_786_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_413_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_787_n_0\,
      S(2) => \CurrentSprite[31]_i_788_n_0\,
      S(1) => \CurrentSprite[31]_i_789_n_0\,
      S(0) => \CurrentSprite[31]_i_790_n_0\
    );
\CurrentSprite_reg[31]_i_416\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_791_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_416_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_416_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_416_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_416_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_416_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_792_n_0\,
      S(2) => \CurrentSprite[31]_i_793_n_0\,
      S(1) => \CurrentSprite[31]_i_794_n_0\,
      S(0) => \CurrentSprite[31]_i_795_n_0\
    );
\CurrentSprite_reg[31]_i_419\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_419_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_419_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_419_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_419_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_419_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_797_n_0\,
      S(2) => \CurrentSprite[31]_i_798_n_0\,
      S(1) => \CurrentSprite[31]_i_799_n_0\,
      S(0) => \CurrentSprite[31]_i_800_n_0\
    );
\CurrentSprite_reg[31]_i_42\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_139_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_42_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite228_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_140_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_42_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_141_n_0\
    );
\CurrentSprite_reg[31]_i_445\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_445_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_445_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_445_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_445_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_445_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_801_n_0\,
      S(2) => \CurrentSprite[31]_i_802_n_0\,
      S(1) => \CurrentSprite[31]_i_803_n_0\,
      S(0) => \CurrentSprite[31]_i_804_n_0\
    );
\CurrentSprite_reg[31]_i_459\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_459_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_459_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_459_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_459_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_459_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_805_n_0\,
      S(2) => \CurrentSprite[31]_i_806_n_0\,
      S(1) => \CurrentSprite[31]_i_807_n_0\,
      S(0) => \CurrentSprite[31]_i_808_n_0\
    );
\CurrentSprite_reg[31]_i_473\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_473_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_473_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_473_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_473_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_473_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_809_n_0\,
      S(2) => \CurrentSprite[31]_i_810_n_0\,
      S(1) => \CurrentSprite[31]_i_811_n_0\,
      S(0) => \CurrentSprite[31]_i_812_n_0\
    );
\CurrentSprite_reg[31]_i_487\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_487_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_487_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_487_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_487_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_487_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_813_n_0\,
      S(2) => \CurrentSprite[31]_i_814_n_0\,
      S(1) => \CurrentSprite[31]_i_815_n_0\,
      S(0) => \CurrentSprite[31]_i_816_n_0\
    );
\CurrentSprite_reg[31]_i_501\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_501_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_501_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_501_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_501_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_501_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_817_n_0\,
      S(2) => \CurrentSprite[31]_i_818_n_0\,
      S(1) => \CurrentSprite[31]_i_819_n_0\,
      S(0) => \CurrentSprite[31]_i_820_n_0\
    );
\CurrentSprite_reg[31]_i_515\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_515_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_515_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_515_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_515_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_515_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_821_n_0\,
      S(2) => \CurrentSprite[31]_i_822_n_0\,
      S(1) => \CurrentSprite[31]_i_823_n_0\,
      S(0) => \CurrentSprite[31]_i_824_n_0\
    );
\CurrentSprite_reg[31]_i_537\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_537_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_537_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_537_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_537_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_537_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_825_n_0\,
      S(2) => \CurrentSprite[31]_i_826_n_0\,
      S(1) => \CurrentSprite[31]_i_827_n_0\,
      S(0) => \CurrentSprite[31]_i_828_n_0\
    );
\CurrentSprite_reg[31]_i_559\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_559_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_559_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_559_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_559_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_559_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_829_n_0\,
      S(2) => \CurrentSprite[31]_i_830_n_0\,
      S(1) => \CurrentSprite[31]_i_831_n_0\,
      S(0) => \CurrentSprite[31]_i_832_n_0\
    );
\CurrentSprite_reg[31]_i_573\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_573_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_573_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_573_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_573_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_573_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_833_n_0\,
      S(2) => \CurrentSprite[31]_i_834_n_0\,
      S(1) => \CurrentSprite[31]_i_835_n_0\,
      S(0) => \CurrentSprite[31]_i_836_n_0\
    );
\CurrentSprite_reg[31]_i_591\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_591_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_591_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_591_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_591_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_591_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_837_n_0\,
      S(2) => \CurrentSprite[31]_i_838_n_0\,
      S(1) => \CurrentSprite[31]_i_839_n_0\,
      S(0) => \CurrentSprite[31]_i_840_n_0\
    );
\CurrentSprite_reg[31]_i_605\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_605_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_605_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_605_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_605_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_605_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_841_n_0\,
      S(2) => \CurrentSprite[31]_i_842_n_0\,
      S(1) => \CurrentSprite[31]_i_843_n_0\,
      S(0) => \CurrentSprite[31]_i_844_n_0\
    );
\CurrentSprite_reg[31]_i_61\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_170_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_61_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_61_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_61_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_61_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_171_n_0\,
      S(0) => \CurrentSprite[31]_i_172_n_0\
    );
\CurrentSprite_reg[31]_i_619\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_619_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_619_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_619_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_619_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_619_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_845_n_0\,
      S(2) => \CurrentSprite[31]_i_846_n_0\,
      S(1) => \CurrentSprite[31]_i_847_n_0\,
      S(0) => \CurrentSprite[31]_i_848_n_0\
    );
\CurrentSprite_reg[31]_i_62\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_173_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_62_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite285_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_174_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_62_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_175_n_0\
    );
\CurrentSprite_reg[31]_i_633\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_633_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_633_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_633_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_633_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_633_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_849_n_0\,
      S(2) => \CurrentSprite[31]_i_850_n_0\,
      S(1) => \CurrentSprite[31]_i_851_n_0\,
      S(0) => \CurrentSprite[31]_i_852_n_0\
    );
\CurrentSprite_reg[31]_i_647\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_647_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_647_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_647_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_647_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_647_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_853_n_0\,
      S(2) => \CurrentSprite[31]_i_854_n_0\,
      S(1) => \CurrentSprite[31]_i_855_n_0\,
      S(0) => \CurrentSprite[31]_i_856_n_0\
    );
\CurrentSprite_reg[31]_i_65\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_177_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_65_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_65_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_65_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_65_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_65_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_178_n_0\,
      S(2) => \CurrentSprite[31]_i_179_n_0\,
      S(1) => \CurrentSprite[31]_i_180_n_0\,
      S(0) => \CurrentSprite[31]_i_181_n_0\
    );
\CurrentSprite_reg[31]_i_661\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_661_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_661_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_661_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_661_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_661_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_857_n_0\,
      S(2) => \CurrentSprite[31]_i_858_n_0\,
      S(1) => \CurrentSprite[31]_i_859_n_0\,
      S(0) => \CurrentSprite[31]_i_860_n_0\
    );
\CurrentSprite_reg[31]_i_675\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_675_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_675_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_675_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_675_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_675_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_861_n_0\,
      S(2) => \CurrentSprite[31]_i_862_n_0\,
      S(1) => \CurrentSprite[31]_i_863_n_0\,
      S(0) => \CurrentSprite[31]_i_864_n_0\
    );
\CurrentSprite_reg[31]_i_68\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_68_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_68_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_68_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_68_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_183_n_0\,
      DI(2) => \CurrentSprite[31]_i_184_n_0\,
      DI(1) => \CurrentSprite[31]_i_185_n_0\,
      DI(0) => \CurrentSprite[31]_i_186_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_68_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_187_n_0\,
      S(2) => \CurrentSprite[31]_i_188_n_0\,
      S(1) => \CurrentSprite[31]_i_189_n_0\,
      S(0) => \CurrentSprite[31]_i_190_n_0\
    );
\CurrentSprite_reg[31]_i_693\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_693_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_693_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_693_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_693_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_693_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_865_n_0\,
      S(2) => \CurrentSprite[31]_i_866_n_0\,
      S(1) => \CurrentSprite[31]_i_867_n_0\,
      S(0) => \CurrentSprite[31]_i_868_n_0\
    );
\CurrentSprite_reg[31]_i_707\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_707_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_707_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_707_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_707_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_707_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_869_n_0\,
      S(2) => \CurrentSprite[31]_i_870_n_0\,
      S(1) => \CurrentSprite[31]_i_871_n_0\,
      S(0) => \CurrentSprite[31]_i_872_n_0\
    );
\CurrentSprite_reg[31]_i_71\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_191_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_71_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite258_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_192_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_71_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_193_n_0\
    );
\CurrentSprite_reg[31]_i_72\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_194_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_72_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_72_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_72_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_72_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_195_n_0\,
      S(0) => \CurrentSprite[31]_i_196_n_0\
    );
\CurrentSprite_reg[31]_i_721\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_721_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_721_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_721_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_721_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_721_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_873_n_0\,
      S(2) => \CurrentSprite[31]_i_874_n_0\,
      S(1) => \CurrentSprite[31]_i_875_n_0\,
      S(0) => \CurrentSprite[31]_i_876_n_0\
    );
\CurrentSprite_reg[31]_i_727\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_727_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_727_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_727_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_727_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_727_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_877_n_0\,
      S(2) => \CurrentSprite[31]_i_878_n_0\,
      S(1) => \CurrentSprite[31]_i_879_n_0\,
      S(0) => \CurrentSprite[31]_i_880_n_0\
    );
\CurrentSprite_reg[31]_i_73\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_197_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_73_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite249_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_198_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_73_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_199_n_0\
    );
\CurrentSprite_reg[31]_i_74\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_200_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_74_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_74_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_74_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_74_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_201_n_0\,
      S(0) => \CurrentSprite[31]_i_202_n_0\
    );
\CurrentSprite_reg[31]_i_741\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_741_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_741_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_741_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_741_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_741_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_881_n_0\,
      S(2) => \CurrentSprite[31]_i_882_n_0\,
      S(1) => \CurrentSprite[31]_i_883_n_0\,
      S(0) => \CurrentSprite[31]_i_884_n_0\
    );
\CurrentSprite_reg[31]_i_75\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_203_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_75_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite252_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_204_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_75_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_205_n_0\
    );
\CurrentSprite_reg[31]_i_76\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_206_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_76_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_76_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_76_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_76_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_207_n_0\,
      S(0) => \CurrentSprite[31]_i_208_n_0\
    );
\CurrentSprite_reg[31]_i_763\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_763_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_763_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_763_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_763_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_763_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_885_n_0\,
      S(2) => \CurrentSprite[31]_i_886_n_0\,
      S(1) => \CurrentSprite[31]_i_887_n_0\,
      S(0) => \CurrentSprite[31]_i_888_n_0\
    );
\CurrentSprite_reg[31]_i_769\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_769_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_769_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_769_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_769_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_769_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_889_n_0\,
      S(2) => \CurrentSprite[31]_i_890_n_0\,
      S(1) => \CurrentSprite[31]_i_891_n_0\,
      S(0) => \CurrentSprite[31]_i_892_n_0\
    );
\CurrentSprite_reg[31]_i_77\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_209_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_77_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite264_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_210_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_77_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_211_n_0\
    );
\CurrentSprite_reg[31]_i_78\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_212_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_78_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_78_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_78_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_78_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_213_n_0\,
      S(0) => \CurrentSprite[31]_i_214_n_0\
    );
\CurrentSprite_reg[31]_i_791\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_791_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_791_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_791_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_791_n_3\,
      CYINIT => '1',
      DI(3) => \xCounter_reg_n_0_[3]\,
      DI(2) => \xCounter_reg_n_0_[2]\,
      DI(1) => \xCounter_reg_n_0_[1]\,
      DI(0) => \xCounter_reg_n_0_[0]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_791_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_893_n_0\,
      S(2) => \CurrentSprite[31]_i_894_n_0\,
      S(1) => \CurrentSprite[31]_i_895_n_0\,
      S(0) => \CurrentSprite[31]_i_896_n_0\
    );
\CurrentSprite_reg[31]_i_80\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_215_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_80_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite267_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_216_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_80_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_217_n_0\
    );
\CurrentSprite_reg[31]_i_81\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_218_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_81_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_81_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_81_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_81_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_219_n_0\,
      S(0) => \CurrentSprite[31]_i_220_n_0\
    );
\CurrentSprite_reg[31]_i_82\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_221_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_82_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite288_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_222_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_82_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_223_n_0\
    );
\CurrentSprite_reg[31]_i_83\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_224_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_83_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_83_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_83_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_83_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_225_n_0\,
      S(0) => \CurrentSprite[31]_i_226_n_0\
    );
\CurrentSprite_reg[31]_i_84\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_84_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_84_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_84_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_84_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_227_n_0\,
      DI(2) => \CurrentSprite[31]_i_228_n_0\,
      DI(1) => \CurrentSprite[31]_i_229_n_0\,
      DI(0) => \CurrentSprite[31]_i_230_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_84_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_231_n_0\,
      S(2) => \CurrentSprite[31]_i_232_n_0\,
      S(1) => \CurrentSprite[31]_i_233_n_0\,
      S(0) => \CurrentSprite[31]_i_234_n_0\
    );
\CurrentSprite_reg[31]_i_87\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_235_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_87_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_87_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_87_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_87_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_87_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_236_n_0\,
      S(2) => \CurrentSprite[31]_i_237_n_0\,
      S(1) => \CurrentSprite[31]_i_238_n_0\,
      S(0) => \CurrentSprite[31]_i_239_n_0\
    );
\CurrentSprite_reg[31]_i_90\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_90_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_90_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_90_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_90_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_241_n_0\,
      DI(2) => \CurrentSprite[31]_i_242_n_0\,
      DI(1) => \CurrentSprite[31]_i_243_n_0\,
      DI(0) => \CurrentSprite[31]_i_244_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_90_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_245_n_0\,
      S(2) => \CurrentSprite[31]_i_246_n_0\,
      S(1) => \CurrentSprite[31]_i_247_n_0\,
      S(0) => \CurrentSprite[31]_i_248_n_0\
    );
\CurrentSprite_reg[31]_i_93\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_249_n_0\,
      CO(3) => \CurrentSprite_reg[31]_i_93_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_93_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_93_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_93_n_3\,
      CYINIT => '0',
      DI(3) => \xCounter_reg_n_0_[7]\,
      DI(2) => \xCounter_reg_n_0_[6]\,
      DI(1) => \xCounter_reg_n_0_[5]\,
      DI(0) => \xCounter_reg_n_0_[4]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_93_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_250_n_0\,
      S(2) => \CurrentSprite[31]_i_251_n_0\,
      S(1) => \CurrentSprite[31]_i_252_n_0\,
      S(0) => \CurrentSprite[31]_i_253_n_0\
    );
\CurrentSprite_reg[31]_i_96\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_255_n_0\,
      CO(3 downto 1) => \NLW_CurrentSprite_reg[31]_i_96_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CurrentSprite276_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CurrentSprite[31]_i_256_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_96_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \CurrentSprite[31]_i_257_n_0\
    );
\CurrentSprite_reg[31]_i_97\: unisim.vcomponents.CARRY4
     port map (
      CI => \CurrentSprite_reg[31]_i_258_n_0\,
      CO(3 downto 2) => \NLW_CurrentSprite_reg[31]_i_97_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CurrentSprite_reg[31]_i_97_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_97_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \xCounter_reg_n_0_[9]\,
      DI(0) => \xCounter_reg_n_0_[8]\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_97_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CurrentSprite[31]_i_259_n_0\,
      S(0) => \CurrentSprite[31]_i_260_n_0\
    );
\CurrentSprite_reg[31]_i_98\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CurrentSprite_reg[31]_i_98_n_0\,
      CO(2) => \CurrentSprite_reg[31]_i_98_n_1\,
      CO(1) => \CurrentSprite_reg[31]_i_98_n_2\,
      CO(0) => \CurrentSprite_reg[31]_i_98_n_3\,
      CYINIT => '1',
      DI(3) => \CurrentSprite[31]_i_261_n_0\,
      DI(2) => \CurrentSprite[31]_i_262_n_0\,
      DI(1) => \CurrentSprite[31]_i_263_n_0\,
      DI(0) => \CurrentSprite[31]_i_264_n_0\,
      O(3 downto 0) => \NLW_CurrentSprite_reg[31]_i_98_O_UNCONNECTED\(3 downto 0),
      S(3) => \CurrentSprite[31]_i_265_n_0\,
      S(2) => \CurrentSprite[31]_i_266_n_0\,
      S(1) => \CurrentSprite[31]_i_267_n_0\,
      S(0) => \CurrentSprite[31]_i_268_n_0\
    );
\CurrentSprite_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[3]_i_1_n_0\,
      Q => SpriteOffset0(9),
      S => CurrentSprite
    );
\CurrentSprite_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[4]_i_1_n_0\,
      Q => SpriteOffset0(10),
      S => CurrentSprite
    );
\CurrentSprite_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[5]_i_1_n_0\,
      Q => SpriteOffset0(11),
      S => CurrentSprite
    );
\CurrentSprite_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[6]_i_1_n_0\,
      Q => SpriteOffset0(12),
      S => CurrentSprite
    );
\CurrentSprite_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[7]_i_1_n_0\,
      Q => SpriteOffset0(13),
      S => CurrentSprite
    );
\CurrentSprite_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[8]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[8]\,
      S => CurrentSprite
    );
\CurrentSprite_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => isBufferReady,
      D => \CurrentSprite[9]_i_1_n_0\,
      Q => \CurrentSprite_reg_n_0_[9]\,
      S => CurrentSprite
    );
\NextScanline[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[0]\,
      O => \NextScanline[0]_i_1_n_0\
    );
\NextScanline[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[0]\,
      I1 => \ScanLineCounter_reg_n_0_[1]\,
      O => \NextScanline[1]_i_1_n_0\
    );
\NextScanline[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[0]\,
      I1 => \ScanLineCounter_reg_n_0_[1]\,
      I2 => \ScanLineCounter_reg_n_0_[2]\,
      O => \NextScanline[2]_i_1_n_0\
    );
\NextScanline[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[1]\,
      I1 => \ScanLineCounter_reg_n_0_[0]\,
      I2 => \ScanLineCounter_reg_n_0_[2]\,
      I3 => \ScanLineCounter_reg_n_0_[3]\,
      O => \NextScanline[3]_i_1_n_0\
    );
\NextScanline[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[2]\,
      I1 => \ScanLineCounter_reg_n_0_[0]\,
      I2 => \ScanLineCounter_reg_n_0_[1]\,
      I3 => \ScanLineCounter_reg_n_0_[3]\,
      I4 => \ScanLineCounter_reg_n_0_[4]\,
      O => \NextScanline[4]_i_1_n_0\
    );
\NextScanline[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[3]\,
      I1 => \ScanLineCounter_reg_n_0_[1]\,
      I2 => \ScanLineCounter_reg_n_0_[0]\,
      I3 => \ScanLineCounter_reg_n_0_[2]\,
      I4 => \ScanLineCounter_reg_n_0_[4]\,
      I5 => \ScanLineCounter_reg_n_0_[5]\,
      O => \NextScanline[5]_i_1_n_0\
    );
\NextScanline[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \NextScanline[8]_i_4_n_0\,
      I1 => \ScanLineCounter_reg_n_0_[6]\,
      O => \NextScanline[6]_i_1_n_0\
    );
\NextScanline[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \NextScanline[8]_i_4_n_0\,
      I1 => \ScanLineCounter_reg_n_0_[6]\,
      I2 => \ScanLineCounter_reg_n_0_[7]\,
      O => \NextScanline[7]_i_1_n_0\
    );
\NextScanline[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[0]\,
      I1 => \ScanLineCounter_reg_n_0_[5]\,
      I2 => \ScanLineCounter_reg_n_0_[7]\,
      I3 => \ScanLineCounter_reg_n_0_[8]\,
      I4 => \NextScanline[8]_i_3_n_0\,
      I5 => \ScanLineCounter_reg_n_0_[6]\,
      O => \NextScanline[8]_i_1_n_0\
    );
\NextScanline[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[6]\,
      I1 => \NextScanline[8]_i_4_n_0\,
      I2 => \ScanLineCounter_reg_n_0_[7]\,
      I3 => \ScanLineCounter_reg_n_0_[8]\,
      O => \NextScanline[8]_i_2_n_0\
    );
\NextScanline[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[3]\,
      I1 => \ScanLineCounter_reg_n_0_[4]\,
      I2 => \ScanLineCounter_reg_n_0_[1]\,
      I3 => \ScanLineCounter_reg_n_0_[2]\,
      O => \NextScanline[8]_i_3_n_0\
    );
\NextScanline[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[5]\,
      I1 => \ScanLineCounter_reg_n_0_[3]\,
      I2 => \ScanLineCounter_reg_n_0_[1]\,
      I3 => \ScanLineCounter_reg_n_0_[0]\,
      I4 => \ScanLineCounter_reg_n_0_[2]\,
      I5 => \ScanLineCounter_reg_n_0_[4]\,
      O => \NextScanline[8]_i_4_n_0\
    );
\NextScanline_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[0]_i_1_n_0\,
      Q => NextScanline(0),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[1]_i_1_n_0\,
      Q => NextScanline(1),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[2]_i_1_n_0\,
      Q => NextScanline(2),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[3]_i_1_n_0\,
      Q => NextScanline(3),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[4]_i_1_n_0\,
      Q => NextScanline(4),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[5]_i_1_n_0\,
      Q => NextScanline(5),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[6]_i_1_n_0\,
      Q => NextScanline(6),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[7]_i_1_n_0\,
      Q => NextScanline(7),
      R => \NextScanline[8]_i_1_n_0\
    );
\NextScanline_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \NextScanline[8]_i_2_n_0\,
      Q => NextScanline(8),
      R => \NextScanline[8]_i_1_n_0\
    );
\SOAMAddressCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^soamaddress[0]\,
      O => \SOAMAddressCounter[0]_i_1_n_0\
    );
\SOAMAddressCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^soamaddress[1]\,
      I1 => \^soamaddress[0]\,
      O => \SOAMAddressCounter[1]_i_1_n_0\
    );
\SOAMAddressCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^soamaddress[2]\,
      I1 => \^soamaddress[0]\,
      I2 => \^soamaddress[1]\,
      O => \SOAMAddressCounter[2]_i_1_n_0\
    );
\SOAMAddressCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[2]\,
      I2 => \^soamaddress[1]\,
      I3 => \^soamaddress[0]\,
      O => \SOAMAddressCounter[3]_i_1_n_0\
    );
\SOAMAddressCounter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => isBufferReady,
      I1 => endLineBit,
      O => \SOAMAddressCounter[4]_i_1_n_0\
    );
\SOAMAddressCounter[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => isBufferReady,
      I1 => \SOAMAddressCounter[4]_i_4_n_0\,
      I2 => endLineBit,
      O => \SOAMAddressCounter[4]_i_2_n_0\
    );
\SOAMAddressCounter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[2]\,
      O => \SOAMAddressCounter[4]_i_3_n_0\
    );
\SOAMAddressCounter[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[4]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[2]\,
      O => \SOAMAddressCounter[4]_i_4_n_0\
    );
\SOAMAddressCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \SOAMAddressCounter[4]_i_2_n_0\,
      D => \SOAMAddressCounter[0]_i_1_n_0\,
      Q => \^soamaddress[0]\,
      R => \SOAMAddressCounter[4]_i_1_n_0\
    );
\SOAMAddressCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \SOAMAddressCounter[4]_i_2_n_0\,
      D => \SOAMAddressCounter[1]_i_1_n_0\,
      Q => \^soamaddress[1]\,
      R => \SOAMAddressCounter[4]_i_1_n_0\
    );
\SOAMAddressCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \SOAMAddressCounter[4]_i_2_n_0\,
      D => \SOAMAddressCounter[2]_i_1_n_0\,
      Q => \^soamaddress[2]\,
      R => \SOAMAddressCounter[4]_i_1_n_0\
    );
\SOAMAddressCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \SOAMAddressCounter[4]_i_2_n_0\,
      D => \SOAMAddressCounter[3]_i_1_n_0\,
      Q => \^soamaddress[3]\,
      R => \SOAMAddressCounter[4]_i_1_n_0\
    );
\SOAMAddressCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \SOAMAddressCounter[4]_i_2_n_0\,
      D => \SOAMAddressCounter[4]_i_3_n_0\,
      Q => \^soamaddress[4]\,
      R => \SOAMAddressCounter[4]_i_1_n_0\
    );
\SOAMBuffer[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^soamaddress[2]\,
      I1 => \^soamaddress[4]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[3]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[0][31]_i_1_n_0\
    );
\SOAMBuffer[10][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[0]\,
      I2 => \^soamaddress[3]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[10][31]_i_1_n_0\
    );
\SOAMBuffer[11][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[4]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[2]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[11][31]_i_1_n_0\
    );
\SOAMBuffer[12][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[1]\,
      I2 => \^soamaddress[3]\,
      I3 => \^soamaddress[0]\,
      I4 => \^soamaddress[2]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[12][31]_i_1_n_0\
    );
\SOAMBuffer[13][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[4]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[13][31]_i_1_n_0\
    );
\SOAMBuffer[14][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[4]\,
      I2 => \^soamaddress[2]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[0]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[14][31]_i_1_n_0\
    );
\SOAMBuffer[15][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^soamaddress[2]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[4]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[15][31]_i_1_n_0\
    );
\SOAMBuffer[16][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^soamaddress[0]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[1]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[4]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[16][31]_i_1_n_0\
    );
\SOAMBuffer[17][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[1]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[4]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[0]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[17][31]_i_1_n_0\
    );
\SOAMBuffer[18][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[0]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[4]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[18][31]_i_1_n_0\
    );
\SOAMBuffer[19][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[2]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[3]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[19][31]_i_1_n_0\
    );
\SOAMBuffer[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[1]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[0]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[1][31]_i_1_n_0\
    );
\SOAMBuffer[20][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[1]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[4]\,
      I3 => \^soamaddress[0]\,
      I4 => \^soamaddress[2]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[20][31]_i_1_n_0\
    );
\SOAMBuffer[21][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[1]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[3]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[21][31]_i_1_n_0\
    );
\SOAMBuffer[22][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[0]\,
      I2 => \^soamaddress[2]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[3]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[22][31]_i_1_n_0\
    );
\SOAMBuffer[23][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[2]\,
      I2 => \^soamaddress[4]\,
      I3 => \^soamaddress[0]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[23][31]_i_1_n_0\
    );
\SOAMBuffer[24][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[0]\,
      I1 => \^soamaddress[1]\,
      I2 => \^soamaddress[3]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[4]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[24][31]_i_1_n_0\
    );
\SOAMBuffer[25][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[1]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[4]\,
      I4 => \^soamaddress[2]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[25][31]_i_1_n_0\
    );
\SOAMBuffer[26][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[0]\,
      I2 => \^soamaddress[4]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[2]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[26][31]_i_1_n_0\
    );
\SOAMBuffer[27][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[2]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[27][31]_i_1_n_0\
    );
\SOAMBuffer[28][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[3]\,
      I1 => \^soamaddress[0]\,
      I2 => \^soamaddress[4]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[28][31]_i_1_n_0\
    );
\SOAMBuffer[29][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^soamaddress[2]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[4]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[29][31]_i_1_n_0\
    );
\SOAMBuffer[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[2][31]_i_1_n_0\
    );
\SOAMBuffer[30][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \^soamaddress[2]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[4]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[0]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[30][31]_i_1_n_0\
    );
\SOAMBuffer[31][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^soamaddress[2]\,
      I1 => \^soamaddress[4]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[3]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[31][31]_i_1_n_0\
    );
\SOAMBuffer[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[1]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[0]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[3][31]_i_1_n_0\
    );
\SOAMBuffer[4][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[1]\,
      I3 => \^soamaddress[0]\,
      I4 => \^soamaddress[2]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[4][31]_i_1_n_0\
    );
\SOAMBuffer[5][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[2]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[0]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[5][31]_i_1_n_0\
    );
\SOAMBuffer[6][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[3]\,
      I2 => \^soamaddress[2]\,
      I3 => \^soamaddress[0]\,
      I4 => \^soamaddress[1]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[6][31]_i_1_n_0\
    );
\SOAMBuffer[7][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^soamaddress[2]\,
      I1 => \^soamaddress[4]\,
      I2 => \^soamaddress[0]\,
      I3 => \^soamaddress[1]\,
      I4 => \^soamaddress[3]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[7][31]_i_1_n_0\
    );
\SOAMBuffer[8][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[0]\,
      I2 => \^soamaddress[1]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[3]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[8][31]_i_1_n_0\
    );
\SOAMBuffer[9][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \^soamaddress[4]\,
      I1 => \^soamaddress[1]\,
      I2 => \^soamaddress[3]\,
      I3 => \^soamaddress[2]\,
      I4 => \^soamaddress[0]\,
      I5 => isBufferReady,
      O => \SOAMBuffer[9][31]_i_1_n_0\
    );
\SOAMBuffer_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[0]_30\(0),
      R => '0'
    );
\SOAMBuffer_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[0]_30\(10),
      R => '0'
    );
\SOAMBuffer_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[0]_30\(11),
      R => '0'
    );
\SOAMBuffer_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[0]_30\(12),
      R => '0'
    );
\SOAMBuffer_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[0]_30\(13),
      R => '0'
    );
\SOAMBuffer_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[0]_30\(14),
      R => '0'
    );
\SOAMBuffer_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[0]_30\(15),
      R => '0'
    );
\SOAMBuffer_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[0]_30\(16),
      R => '0'
    );
\SOAMBuffer_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[0]_30\(17),
      R => '0'
    );
\SOAMBuffer_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[0]_30\(18),
      R => '0'
    );
\SOAMBuffer_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[0]_30\(19),
      R => '0'
    );
\SOAMBuffer_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[0]_30\(1),
      R => '0'
    );
\SOAMBuffer_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[0]_30\(20),
      R => '0'
    );
\SOAMBuffer_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[0]_30\(21),
      R => '0'
    );
\SOAMBuffer_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[0]_30\(22),
      R => '0'
    );
\SOAMBuffer_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[0]_30\(23),
      R => '0'
    );
\SOAMBuffer_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[0]_30\(24),
      R => '0'
    );
\SOAMBuffer_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[0]_30\(25),
      R => '0'
    );
\SOAMBuffer_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[0]_30\(26),
      R => '0'
    );
\SOAMBuffer_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[0]_30\(27),
      R => '0'
    );
\SOAMBuffer_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[0]_30\(28),
      R => '0'
    );
\SOAMBuffer_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[0]_30\(29),
      R => '0'
    );
\SOAMBuffer_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[0]_30\(2),
      R => '0'
    );
\SOAMBuffer_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[0]_30\(30),
      R => '0'
    );
\SOAMBuffer_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[0]_30\(31),
      R => '0'
    );
\SOAMBuffer_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[0]_30\(3),
      R => '0'
    );
\SOAMBuffer_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[0]_30\(4),
      R => '0'
    );
\SOAMBuffer_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[0]_30\(5),
      R => '0'
    );
\SOAMBuffer_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[0]_30\(6),
      R => '0'
    );
\SOAMBuffer_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[0]_30\(7),
      R => '0'
    );
\SOAMBuffer_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[0]_30\(8),
      R => '0'
    );
\SOAMBuffer_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[0][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[0]_30\(9),
      R => '0'
    );
\SOAMBuffer_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[10]_20\(0),
      R => '0'
    );
\SOAMBuffer_reg[10][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[10]_20\(10),
      R => '0'
    );
\SOAMBuffer_reg[10][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[10]_20\(11),
      R => '0'
    );
\SOAMBuffer_reg[10][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[10]_20\(12),
      R => '0'
    );
\SOAMBuffer_reg[10][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[10]_20\(13),
      R => '0'
    );
\SOAMBuffer_reg[10][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[10]_20\(14),
      R => '0'
    );
\SOAMBuffer_reg[10][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[10]_20\(15),
      R => '0'
    );
\SOAMBuffer_reg[10][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[10]_20\(16),
      R => '0'
    );
\SOAMBuffer_reg[10][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[10]_20\(17),
      R => '0'
    );
\SOAMBuffer_reg[10][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[10]_20\(18),
      R => '0'
    );
\SOAMBuffer_reg[10][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[10]_20\(19),
      R => '0'
    );
\SOAMBuffer_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[10]_20\(1),
      R => '0'
    );
\SOAMBuffer_reg[10][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[10]_20\(20),
      R => '0'
    );
\SOAMBuffer_reg[10][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[10]_20\(21),
      R => '0'
    );
\SOAMBuffer_reg[10][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[10]_20\(22),
      R => '0'
    );
\SOAMBuffer_reg[10][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[10]_20\(23),
      R => '0'
    );
\SOAMBuffer_reg[10][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[10]_20\(24),
      R => '0'
    );
\SOAMBuffer_reg[10][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[10]_20\(25),
      R => '0'
    );
\SOAMBuffer_reg[10][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[10]_20\(26),
      R => '0'
    );
\SOAMBuffer_reg[10][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[10]_20\(27),
      R => '0'
    );
\SOAMBuffer_reg[10][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[10]_20\(28),
      R => '0'
    );
\SOAMBuffer_reg[10][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[10]_20\(29),
      R => '0'
    );
\SOAMBuffer_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[10]_20\(2),
      R => '0'
    );
\SOAMBuffer_reg[10][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[10]_20\(30),
      R => '0'
    );
\SOAMBuffer_reg[10][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[10]_20\(31),
      R => '0'
    );
\SOAMBuffer_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[10]_20\(3),
      R => '0'
    );
\SOAMBuffer_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[10]_20\(4),
      R => '0'
    );
\SOAMBuffer_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[10]_20\(5),
      R => '0'
    );
\SOAMBuffer_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[10]_20\(6),
      R => '0'
    );
\SOAMBuffer_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[10]_20\(7),
      R => '0'
    );
\SOAMBuffer_reg[10][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[10]_20\(8),
      R => '0'
    );
\SOAMBuffer_reg[10][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[10][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[10]_20\(9),
      R => '0'
    );
\SOAMBuffer_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[11]_19\(0),
      R => '0'
    );
\SOAMBuffer_reg[11][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[11]_19\(10),
      R => '0'
    );
\SOAMBuffer_reg[11][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[11]_19\(11),
      R => '0'
    );
\SOAMBuffer_reg[11][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[11]_19\(12),
      R => '0'
    );
\SOAMBuffer_reg[11][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[11]_19\(13),
      R => '0'
    );
\SOAMBuffer_reg[11][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[11]_19\(14),
      R => '0'
    );
\SOAMBuffer_reg[11][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[11]_19\(15),
      R => '0'
    );
\SOAMBuffer_reg[11][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[11]_19\(16),
      R => '0'
    );
\SOAMBuffer_reg[11][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[11]_19\(17),
      R => '0'
    );
\SOAMBuffer_reg[11][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[11]_19\(18),
      R => '0'
    );
\SOAMBuffer_reg[11][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[11]_19\(19),
      R => '0'
    );
\SOAMBuffer_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[11]_19\(1),
      R => '0'
    );
\SOAMBuffer_reg[11][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[11]_19\(20),
      R => '0'
    );
\SOAMBuffer_reg[11][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[11]_19\(21),
      R => '0'
    );
\SOAMBuffer_reg[11][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[11]_19\(22),
      R => '0'
    );
\SOAMBuffer_reg[11][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[11]_19\(23),
      R => '0'
    );
\SOAMBuffer_reg[11][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[11]_19\(24),
      R => '0'
    );
\SOAMBuffer_reg[11][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[11]_19\(25),
      R => '0'
    );
\SOAMBuffer_reg[11][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[11]_19\(26),
      R => '0'
    );
\SOAMBuffer_reg[11][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[11]_19\(27),
      R => '0'
    );
\SOAMBuffer_reg[11][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[11]_19\(28),
      R => '0'
    );
\SOAMBuffer_reg[11][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[11]_19\(29),
      R => '0'
    );
\SOAMBuffer_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[11]_19\(2),
      R => '0'
    );
\SOAMBuffer_reg[11][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[11]_19\(30),
      R => '0'
    );
\SOAMBuffer_reg[11][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[11]_19\(31),
      R => '0'
    );
\SOAMBuffer_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[11]_19\(3),
      R => '0'
    );
\SOAMBuffer_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[11]_19\(4),
      R => '0'
    );
\SOAMBuffer_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[11]_19\(5),
      R => '0'
    );
\SOAMBuffer_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[11]_19\(6),
      R => '0'
    );
\SOAMBuffer_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[11]_19\(7),
      R => '0'
    );
\SOAMBuffer_reg[11][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[11]_19\(8),
      R => '0'
    );
\SOAMBuffer_reg[11][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[11][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[11]_19\(9),
      R => '0'
    );
\SOAMBuffer_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[12]_18\(0),
      R => '0'
    );
\SOAMBuffer_reg[12][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[12]_18\(10),
      R => '0'
    );
\SOAMBuffer_reg[12][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[12]_18\(11),
      R => '0'
    );
\SOAMBuffer_reg[12][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[12]_18\(12),
      R => '0'
    );
\SOAMBuffer_reg[12][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[12]_18\(13),
      R => '0'
    );
\SOAMBuffer_reg[12][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[12]_18\(14),
      R => '0'
    );
\SOAMBuffer_reg[12][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[12]_18\(15),
      R => '0'
    );
\SOAMBuffer_reg[12][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[12]_18\(16),
      R => '0'
    );
\SOAMBuffer_reg[12][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[12]_18\(17),
      R => '0'
    );
\SOAMBuffer_reg[12][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[12]_18\(18),
      R => '0'
    );
\SOAMBuffer_reg[12][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[12]_18\(19),
      R => '0'
    );
\SOAMBuffer_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[12]_18\(1),
      R => '0'
    );
\SOAMBuffer_reg[12][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[12]_18\(20),
      R => '0'
    );
\SOAMBuffer_reg[12][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[12]_18\(21),
      R => '0'
    );
\SOAMBuffer_reg[12][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[12]_18\(22),
      R => '0'
    );
\SOAMBuffer_reg[12][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[12]_18\(23),
      R => '0'
    );
\SOAMBuffer_reg[12][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[12]_18\(24),
      R => '0'
    );
\SOAMBuffer_reg[12][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[12]_18\(25),
      R => '0'
    );
\SOAMBuffer_reg[12][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[12]_18\(26),
      R => '0'
    );
\SOAMBuffer_reg[12][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[12]_18\(27),
      R => '0'
    );
\SOAMBuffer_reg[12][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[12]_18\(28),
      R => '0'
    );
\SOAMBuffer_reg[12][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[12]_18\(29),
      R => '0'
    );
\SOAMBuffer_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[12]_18\(2),
      R => '0'
    );
\SOAMBuffer_reg[12][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[12]_18\(30),
      R => '0'
    );
\SOAMBuffer_reg[12][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[12]_18\(31),
      R => '0'
    );
\SOAMBuffer_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[12]_18\(3),
      R => '0'
    );
\SOAMBuffer_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[12]_18\(4),
      R => '0'
    );
\SOAMBuffer_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[12]_18\(5),
      R => '0'
    );
\SOAMBuffer_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[12]_18\(6),
      R => '0'
    );
\SOAMBuffer_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[12]_18\(7),
      R => '0'
    );
\SOAMBuffer_reg[12][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[12]_18\(8),
      R => '0'
    );
\SOAMBuffer_reg[12][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[12][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[12]_18\(9),
      R => '0'
    );
\SOAMBuffer_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[13]_17\(0),
      R => '0'
    );
\SOAMBuffer_reg[13][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[13]_17\(10),
      R => '0'
    );
\SOAMBuffer_reg[13][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[13]_17\(11),
      R => '0'
    );
\SOAMBuffer_reg[13][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[13]_17\(12),
      R => '0'
    );
\SOAMBuffer_reg[13][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[13]_17\(13),
      R => '0'
    );
\SOAMBuffer_reg[13][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[13]_17\(14),
      R => '0'
    );
\SOAMBuffer_reg[13][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[13]_17\(15),
      R => '0'
    );
\SOAMBuffer_reg[13][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[13]_17\(16),
      R => '0'
    );
\SOAMBuffer_reg[13][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[13]_17\(17),
      R => '0'
    );
\SOAMBuffer_reg[13][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[13]_17\(18),
      R => '0'
    );
\SOAMBuffer_reg[13][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[13]_17\(19),
      R => '0'
    );
\SOAMBuffer_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[13]_17\(1),
      R => '0'
    );
\SOAMBuffer_reg[13][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[13]_17\(20),
      R => '0'
    );
\SOAMBuffer_reg[13][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[13]_17\(21),
      R => '0'
    );
\SOAMBuffer_reg[13][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[13]_17\(22),
      R => '0'
    );
\SOAMBuffer_reg[13][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[13]_17\(23),
      R => '0'
    );
\SOAMBuffer_reg[13][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[13]_17\(24),
      R => '0'
    );
\SOAMBuffer_reg[13][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[13]_17\(25),
      R => '0'
    );
\SOAMBuffer_reg[13][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[13]_17\(26),
      R => '0'
    );
\SOAMBuffer_reg[13][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[13]_17\(27),
      R => '0'
    );
\SOAMBuffer_reg[13][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[13]_17\(28),
      R => '0'
    );
\SOAMBuffer_reg[13][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[13]_17\(29),
      R => '0'
    );
\SOAMBuffer_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[13]_17\(2),
      R => '0'
    );
\SOAMBuffer_reg[13][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[13]_17\(30),
      R => '0'
    );
\SOAMBuffer_reg[13][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[13]_17\(31),
      R => '0'
    );
\SOAMBuffer_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[13]_17\(3),
      R => '0'
    );
\SOAMBuffer_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[13]_17\(4),
      R => '0'
    );
\SOAMBuffer_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[13]_17\(5),
      R => '0'
    );
\SOAMBuffer_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[13]_17\(6),
      R => '0'
    );
\SOAMBuffer_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[13]_17\(7),
      R => '0'
    );
\SOAMBuffer_reg[13][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[13]_17\(8),
      R => '0'
    );
\SOAMBuffer_reg[13][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[13][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[13]_17\(9),
      R => '0'
    );
\SOAMBuffer_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[14]_16\(0),
      R => '0'
    );
\SOAMBuffer_reg[14][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[14]_16\(10),
      R => '0'
    );
\SOAMBuffer_reg[14][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[14]_16\(11),
      R => '0'
    );
\SOAMBuffer_reg[14][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[14]_16\(12),
      R => '0'
    );
\SOAMBuffer_reg[14][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[14]_16\(13),
      R => '0'
    );
\SOAMBuffer_reg[14][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[14]_16\(14),
      R => '0'
    );
\SOAMBuffer_reg[14][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[14]_16\(15),
      R => '0'
    );
\SOAMBuffer_reg[14][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[14]_16\(16),
      R => '0'
    );
\SOAMBuffer_reg[14][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[14]_16\(17),
      R => '0'
    );
\SOAMBuffer_reg[14][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[14]_16\(18),
      R => '0'
    );
\SOAMBuffer_reg[14][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[14]_16\(19),
      R => '0'
    );
\SOAMBuffer_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[14]_16\(1),
      R => '0'
    );
\SOAMBuffer_reg[14][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[14]_16\(20),
      R => '0'
    );
\SOAMBuffer_reg[14][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[14]_16\(21),
      R => '0'
    );
\SOAMBuffer_reg[14][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[14]_16\(22),
      R => '0'
    );
\SOAMBuffer_reg[14][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[14]_16\(23),
      R => '0'
    );
\SOAMBuffer_reg[14][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[14]_16\(24),
      R => '0'
    );
\SOAMBuffer_reg[14][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[14]_16\(25),
      R => '0'
    );
\SOAMBuffer_reg[14][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[14]_16\(26),
      R => '0'
    );
\SOAMBuffer_reg[14][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[14]_16\(27),
      R => '0'
    );
\SOAMBuffer_reg[14][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[14]_16\(28),
      R => '0'
    );
\SOAMBuffer_reg[14][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[14]_16\(29),
      R => '0'
    );
\SOAMBuffer_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[14]_16\(2),
      R => '0'
    );
\SOAMBuffer_reg[14][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[14]_16\(30),
      R => '0'
    );
\SOAMBuffer_reg[14][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[14]_16\(31),
      R => '0'
    );
\SOAMBuffer_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[14]_16\(3),
      R => '0'
    );
\SOAMBuffer_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[14]_16\(4),
      R => '0'
    );
\SOAMBuffer_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[14]_16\(5),
      R => '0'
    );
\SOAMBuffer_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[14]_16\(6),
      R => '0'
    );
\SOAMBuffer_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[14]_16\(7),
      R => '0'
    );
\SOAMBuffer_reg[14][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[14]_16\(8),
      R => '0'
    );
\SOAMBuffer_reg[14][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[14][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[14]_16\(9),
      R => '0'
    );
\SOAMBuffer_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[15]_15\(0),
      R => '0'
    );
\SOAMBuffer_reg[15][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[15]_15\(10),
      R => '0'
    );
\SOAMBuffer_reg[15][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[15]_15\(11),
      R => '0'
    );
\SOAMBuffer_reg[15][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[15]_15\(12),
      R => '0'
    );
\SOAMBuffer_reg[15][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[15]_15\(13),
      R => '0'
    );
\SOAMBuffer_reg[15][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[15]_15\(14),
      R => '0'
    );
\SOAMBuffer_reg[15][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[15]_15\(15),
      R => '0'
    );
\SOAMBuffer_reg[15][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[15]_15\(16),
      R => '0'
    );
\SOAMBuffer_reg[15][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[15]_15\(17),
      R => '0'
    );
\SOAMBuffer_reg[15][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[15]_15\(18),
      R => '0'
    );
\SOAMBuffer_reg[15][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[15]_15\(19),
      R => '0'
    );
\SOAMBuffer_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[15]_15\(1),
      R => '0'
    );
\SOAMBuffer_reg[15][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[15]_15\(20),
      R => '0'
    );
\SOAMBuffer_reg[15][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[15]_15\(21),
      R => '0'
    );
\SOAMBuffer_reg[15][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[15]_15\(22),
      R => '0'
    );
\SOAMBuffer_reg[15][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[15]_15\(23),
      R => '0'
    );
\SOAMBuffer_reg[15][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[15]_15\(24),
      R => '0'
    );
\SOAMBuffer_reg[15][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[15]_15\(25),
      R => '0'
    );
\SOAMBuffer_reg[15][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[15]_15\(26),
      R => '0'
    );
\SOAMBuffer_reg[15][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[15]_15\(27),
      R => '0'
    );
\SOAMBuffer_reg[15][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[15]_15\(28),
      R => '0'
    );
\SOAMBuffer_reg[15][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[15]_15\(29),
      R => '0'
    );
\SOAMBuffer_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[15]_15\(2),
      R => '0'
    );
\SOAMBuffer_reg[15][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[15]_15\(30),
      R => '0'
    );
\SOAMBuffer_reg[15][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[15]_15\(31),
      R => '0'
    );
\SOAMBuffer_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[15]_15\(3),
      R => '0'
    );
\SOAMBuffer_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[15]_15\(4),
      R => '0'
    );
\SOAMBuffer_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[15]_15\(5),
      R => '0'
    );
\SOAMBuffer_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[15]_15\(6),
      R => '0'
    );
\SOAMBuffer_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[15]_15\(7),
      R => '0'
    );
\SOAMBuffer_reg[15][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[15]_15\(8),
      R => '0'
    );
\SOAMBuffer_reg[15][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[15][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[15]_15\(9),
      R => '0'
    );
\SOAMBuffer_reg[16][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[16]_14\(0),
      R => '0'
    );
\SOAMBuffer_reg[16][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[16]_14\(10),
      R => '0'
    );
\SOAMBuffer_reg[16][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[16]_14\(11),
      R => '0'
    );
\SOAMBuffer_reg[16][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[16]_14\(12),
      R => '0'
    );
\SOAMBuffer_reg[16][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[16]_14\(13),
      R => '0'
    );
\SOAMBuffer_reg[16][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[16]_14\(14),
      R => '0'
    );
\SOAMBuffer_reg[16][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[16]_14\(15),
      R => '0'
    );
\SOAMBuffer_reg[16][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[16]_14\(16),
      R => '0'
    );
\SOAMBuffer_reg[16][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[16]_14\(17),
      R => '0'
    );
\SOAMBuffer_reg[16][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[16]_14\(18),
      R => '0'
    );
\SOAMBuffer_reg[16][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[16]_14\(19),
      R => '0'
    );
\SOAMBuffer_reg[16][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[16]_14\(1),
      R => '0'
    );
\SOAMBuffer_reg[16][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[16]_14\(20),
      R => '0'
    );
\SOAMBuffer_reg[16][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[16]_14\(21),
      R => '0'
    );
\SOAMBuffer_reg[16][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[16]_14\(22),
      R => '0'
    );
\SOAMBuffer_reg[16][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[16]_14\(23),
      R => '0'
    );
\SOAMBuffer_reg[16][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[16]_14\(24),
      R => '0'
    );
\SOAMBuffer_reg[16][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[16]_14\(25),
      R => '0'
    );
\SOAMBuffer_reg[16][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[16]_14\(26),
      R => '0'
    );
\SOAMBuffer_reg[16][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[16]_14\(27),
      R => '0'
    );
\SOAMBuffer_reg[16][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[16]_14\(28),
      R => '0'
    );
\SOAMBuffer_reg[16][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[16]_14\(29),
      R => '0'
    );
\SOAMBuffer_reg[16][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[16]_14\(2),
      R => '0'
    );
\SOAMBuffer_reg[16][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[16]_14\(30),
      R => '0'
    );
\SOAMBuffer_reg[16][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[16]_14\(31),
      R => '0'
    );
\SOAMBuffer_reg[16][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[16]_14\(3),
      R => '0'
    );
\SOAMBuffer_reg[16][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[16]_14\(4),
      R => '0'
    );
\SOAMBuffer_reg[16][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[16]_14\(5),
      R => '0'
    );
\SOAMBuffer_reg[16][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[16]_14\(6),
      R => '0'
    );
\SOAMBuffer_reg[16][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[16]_14\(7),
      R => '0'
    );
\SOAMBuffer_reg[16][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[16]_14\(8),
      R => '0'
    );
\SOAMBuffer_reg[16][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[16][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[16]_14\(9),
      R => '0'
    );
\SOAMBuffer_reg[17][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[17]_13\(0),
      R => '0'
    );
\SOAMBuffer_reg[17][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[17]_13\(10),
      R => '0'
    );
\SOAMBuffer_reg[17][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[17]_13\(11),
      R => '0'
    );
\SOAMBuffer_reg[17][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[17]_13\(12),
      R => '0'
    );
\SOAMBuffer_reg[17][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[17]_13\(13),
      R => '0'
    );
\SOAMBuffer_reg[17][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[17]_13\(14),
      R => '0'
    );
\SOAMBuffer_reg[17][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[17]_13\(15),
      R => '0'
    );
\SOAMBuffer_reg[17][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[17]_13\(16),
      R => '0'
    );
\SOAMBuffer_reg[17][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[17]_13\(17),
      R => '0'
    );
\SOAMBuffer_reg[17][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[17]_13\(18),
      R => '0'
    );
\SOAMBuffer_reg[17][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[17]_13\(19),
      R => '0'
    );
\SOAMBuffer_reg[17][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[17]_13\(1),
      R => '0'
    );
\SOAMBuffer_reg[17][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[17]_13\(20),
      R => '0'
    );
\SOAMBuffer_reg[17][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[17]_13\(21),
      R => '0'
    );
\SOAMBuffer_reg[17][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[17]_13\(22),
      R => '0'
    );
\SOAMBuffer_reg[17][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[17]_13\(23),
      R => '0'
    );
\SOAMBuffer_reg[17][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[17]_13\(24),
      R => '0'
    );
\SOAMBuffer_reg[17][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[17]_13\(25),
      R => '0'
    );
\SOAMBuffer_reg[17][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[17]_13\(26),
      R => '0'
    );
\SOAMBuffer_reg[17][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[17]_13\(27),
      R => '0'
    );
\SOAMBuffer_reg[17][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[17]_13\(28),
      R => '0'
    );
\SOAMBuffer_reg[17][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[17]_13\(29),
      R => '0'
    );
\SOAMBuffer_reg[17][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[17]_13\(2),
      R => '0'
    );
\SOAMBuffer_reg[17][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[17]_13\(30),
      R => '0'
    );
\SOAMBuffer_reg[17][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[17]_13\(31),
      R => '0'
    );
\SOAMBuffer_reg[17][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[17]_13\(3),
      R => '0'
    );
\SOAMBuffer_reg[17][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[17]_13\(4),
      R => '0'
    );
\SOAMBuffer_reg[17][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[17]_13\(5),
      R => '0'
    );
\SOAMBuffer_reg[17][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[17]_13\(6),
      R => '0'
    );
\SOAMBuffer_reg[17][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[17]_13\(7),
      R => '0'
    );
\SOAMBuffer_reg[17][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[17]_13\(8),
      R => '0'
    );
\SOAMBuffer_reg[17][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[17][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[17]_13\(9),
      R => '0'
    );
\SOAMBuffer_reg[18][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[18]_12\(0),
      R => '0'
    );
\SOAMBuffer_reg[18][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[18]_12\(10),
      R => '0'
    );
\SOAMBuffer_reg[18][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[18]_12\(11),
      R => '0'
    );
\SOAMBuffer_reg[18][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[18]_12\(12),
      R => '0'
    );
\SOAMBuffer_reg[18][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[18]_12\(13),
      R => '0'
    );
\SOAMBuffer_reg[18][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[18]_12\(14),
      R => '0'
    );
\SOAMBuffer_reg[18][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[18]_12\(15),
      R => '0'
    );
\SOAMBuffer_reg[18][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[18]_12\(16),
      R => '0'
    );
\SOAMBuffer_reg[18][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[18]_12\(17),
      R => '0'
    );
\SOAMBuffer_reg[18][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[18]_12\(18),
      R => '0'
    );
\SOAMBuffer_reg[18][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[18]_12\(19),
      R => '0'
    );
\SOAMBuffer_reg[18][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[18]_12\(1),
      R => '0'
    );
\SOAMBuffer_reg[18][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[18]_12\(20),
      R => '0'
    );
\SOAMBuffer_reg[18][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[18]_12\(21),
      R => '0'
    );
\SOAMBuffer_reg[18][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[18]_12\(22),
      R => '0'
    );
\SOAMBuffer_reg[18][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[18]_12\(23),
      R => '0'
    );
\SOAMBuffer_reg[18][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[18]_12\(24),
      R => '0'
    );
\SOAMBuffer_reg[18][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[18]_12\(25),
      R => '0'
    );
\SOAMBuffer_reg[18][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[18]_12\(26),
      R => '0'
    );
\SOAMBuffer_reg[18][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[18]_12\(27),
      R => '0'
    );
\SOAMBuffer_reg[18][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[18]_12\(28),
      R => '0'
    );
\SOAMBuffer_reg[18][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[18]_12\(29),
      R => '0'
    );
\SOAMBuffer_reg[18][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[18]_12\(2),
      R => '0'
    );
\SOAMBuffer_reg[18][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[18]_12\(30),
      R => '0'
    );
\SOAMBuffer_reg[18][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[18]_12\(31),
      R => '0'
    );
\SOAMBuffer_reg[18][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[18]_12\(3),
      R => '0'
    );
\SOAMBuffer_reg[18][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[18]_12\(4),
      R => '0'
    );
\SOAMBuffer_reg[18][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[18]_12\(5),
      R => '0'
    );
\SOAMBuffer_reg[18][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[18]_12\(6),
      R => '0'
    );
\SOAMBuffer_reg[18][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[18]_12\(7),
      R => '0'
    );
\SOAMBuffer_reg[18][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[18]_12\(8),
      R => '0'
    );
\SOAMBuffer_reg[18][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[18][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[18]_12\(9),
      R => '0'
    );
\SOAMBuffer_reg[19][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[19]_11\(0),
      R => '0'
    );
\SOAMBuffer_reg[19][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[19]_11\(10),
      R => '0'
    );
\SOAMBuffer_reg[19][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[19]_11\(11),
      R => '0'
    );
\SOAMBuffer_reg[19][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[19]_11\(12),
      R => '0'
    );
\SOAMBuffer_reg[19][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[19]_11\(13),
      R => '0'
    );
\SOAMBuffer_reg[19][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[19]_11\(14),
      R => '0'
    );
\SOAMBuffer_reg[19][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[19]_11\(15),
      R => '0'
    );
\SOAMBuffer_reg[19][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[19]_11\(16),
      R => '0'
    );
\SOAMBuffer_reg[19][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[19]_11\(17),
      R => '0'
    );
\SOAMBuffer_reg[19][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[19]_11\(18),
      R => '0'
    );
\SOAMBuffer_reg[19][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[19]_11\(19),
      R => '0'
    );
\SOAMBuffer_reg[19][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[19]_11\(1),
      R => '0'
    );
\SOAMBuffer_reg[19][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[19]_11\(20),
      R => '0'
    );
\SOAMBuffer_reg[19][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[19]_11\(21),
      R => '0'
    );
\SOAMBuffer_reg[19][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[19]_11\(22),
      R => '0'
    );
\SOAMBuffer_reg[19][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[19]_11\(23),
      R => '0'
    );
\SOAMBuffer_reg[19][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[19]_11\(24),
      R => '0'
    );
\SOAMBuffer_reg[19][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[19]_11\(25),
      R => '0'
    );
\SOAMBuffer_reg[19][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[19]_11\(26),
      R => '0'
    );
\SOAMBuffer_reg[19][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[19]_11\(27),
      R => '0'
    );
\SOAMBuffer_reg[19][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[19]_11\(28),
      R => '0'
    );
\SOAMBuffer_reg[19][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[19]_11\(29),
      R => '0'
    );
\SOAMBuffer_reg[19][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[19]_11\(2),
      R => '0'
    );
\SOAMBuffer_reg[19][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[19]_11\(30),
      R => '0'
    );
\SOAMBuffer_reg[19][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[19]_11\(31),
      R => '0'
    );
\SOAMBuffer_reg[19][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[19]_11\(3),
      R => '0'
    );
\SOAMBuffer_reg[19][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[19]_11\(4),
      R => '0'
    );
\SOAMBuffer_reg[19][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[19]_11\(5),
      R => '0'
    );
\SOAMBuffer_reg[19][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[19]_11\(6),
      R => '0'
    );
\SOAMBuffer_reg[19][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[19]_11\(7),
      R => '0'
    );
\SOAMBuffer_reg[19][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[19]_11\(8),
      R => '0'
    );
\SOAMBuffer_reg[19][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[19][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[19]_11\(9),
      R => '0'
    );
\SOAMBuffer_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[1]_29\(0),
      R => '0'
    );
\SOAMBuffer_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[1]_29\(10),
      R => '0'
    );
\SOAMBuffer_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[1]_29\(11),
      R => '0'
    );
\SOAMBuffer_reg[1][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[1]_29\(12),
      R => '0'
    );
\SOAMBuffer_reg[1][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[1]_29\(13),
      R => '0'
    );
\SOAMBuffer_reg[1][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[1]_29\(14),
      R => '0'
    );
\SOAMBuffer_reg[1][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[1]_29\(15),
      R => '0'
    );
\SOAMBuffer_reg[1][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[1]_29\(16),
      R => '0'
    );
\SOAMBuffer_reg[1][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[1]_29\(17),
      R => '0'
    );
\SOAMBuffer_reg[1][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[1]_29\(18),
      R => '0'
    );
\SOAMBuffer_reg[1][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[1]_29\(19),
      R => '0'
    );
\SOAMBuffer_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[1]_29\(1),
      R => '0'
    );
\SOAMBuffer_reg[1][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[1]_29\(20),
      R => '0'
    );
\SOAMBuffer_reg[1][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[1]_29\(21),
      R => '0'
    );
\SOAMBuffer_reg[1][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[1]_29\(22),
      R => '0'
    );
\SOAMBuffer_reg[1][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[1]_29\(23),
      R => '0'
    );
\SOAMBuffer_reg[1][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[1]_29\(24),
      R => '0'
    );
\SOAMBuffer_reg[1][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[1]_29\(25),
      R => '0'
    );
\SOAMBuffer_reg[1][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[1]_29\(26),
      R => '0'
    );
\SOAMBuffer_reg[1][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[1]_29\(27),
      R => '0'
    );
\SOAMBuffer_reg[1][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[1]_29\(28),
      R => '0'
    );
\SOAMBuffer_reg[1][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[1]_29\(29),
      R => '0'
    );
\SOAMBuffer_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[1]_29\(2),
      R => '0'
    );
\SOAMBuffer_reg[1][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[1]_29\(30),
      R => '0'
    );
\SOAMBuffer_reg[1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[1]_29\(31),
      R => '0'
    );
\SOAMBuffer_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[1]_29\(3),
      R => '0'
    );
\SOAMBuffer_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[1]_29\(4),
      R => '0'
    );
\SOAMBuffer_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[1]_29\(5),
      R => '0'
    );
\SOAMBuffer_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[1]_29\(6),
      R => '0'
    );
\SOAMBuffer_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[1]_29\(7),
      R => '0'
    );
\SOAMBuffer_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[1]_29\(8),
      R => '0'
    );
\SOAMBuffer_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[1][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[1]_29\(9),
      R => '0'
    );
\SOAMBuffer_reg[20][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[20]_10\(0),
      R => '0'
    );
\SOAMBuffer_reg[20][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[20]_10\(10),
      R => '0'
    );
\SOAMBuffer_reg[20][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[20]_10\(11),
      R => '0'
    );
\SOAMBuffer_reg[20][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[20]_10\(12),
      R => '0'
    );
\SOAMBuffer_reg[20][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[20]_10\(13),
      R => '0'
    );
\SOAMBuffer_reg[20][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[20]_10\(14),
      R => '0'
    );
\SOAMBuffer_reg[20][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[20]_10\(15),
      R => '0'
    );
\SOAMBuffer_reg[20][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[20]_10\(16),
      R => '0'
    );
\SOAMBuffer_reg[20][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[20]_10\(17),
      R => '0'
    );
\SOAMBuffer_reg[20][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[20]_10\(18),
      R => '0'
    );
\SOAMBuffer_reg[20][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[20]_10\(19),
      R => '0'
    );
\SOAMBuffer_reg[20][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[20]_10\(1),
      R => '0'
    );
\SOAMBuffer_reg[20][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[20]_10\(20),
      R => '0'
    );
\SOAMBuffer_reg[20][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[20]_10\(21),
      R => '0'
    );
\SOAMBuffer_reg[20][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[20]_10\(22),
      R => '0'
    );
\SOAMBuffer_reg[20][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[20]_10\(23),
      R => '0'
    );
\SOAMBuffer_reg[20][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[20]_10\(24),
      R => '0'
    );
\SOAMBuffer_reg[20][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[20]_10\(25),
      R => '0'
    );
\SOAMBuffer_reg[20][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[20]_10\(26),
      R => '0'
    );
\SOAMBuffer_reg[20][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[20]_10\(27),
      R => '0'
    );
\SOAMBuffer_reg[20][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[20]_10\(28),
      R => '0'
    );
\SOAMBuffer_reg[20][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[20]_10\(29),
      R => '0'
    );
\SOAMBuffer_reg[20][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[20]_10\(2),
      R => '0'
    );
\SOAMBuffer_reg[20][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[20]_10\(30),
      R => '0'
    );
\SOAMBuffer_reg[20][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[20]_10\(31),
      R => '0'
    );
\SOAMBuffer_reg[20][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[20]_10\(3),
      R => '0'
    );
\SOAMBuffer_reg[20][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[20]_10\(4),
      R => '0'
    );
\SOAMBuffer_reg[20][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[20]_10\(5),
      R => '0'
    );
\SOAMBuffer_reg[20][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[20]_10\(6),
      R => '0'
    );
\SOAMBuffer_reg[20][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[20]_10\(7),
      R => '0'
    );
\SOAMBuffer_reg[20][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[20]_10\(8),
      R => '0'
    );
\SOAMBuffer_reg[20][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[20][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[20]_10\(9),
      R => '0'
    );
\SOAMBuffer_reg[21][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[21]_9\(0),
      R => '0'
    );
\SOAMBuffer_reg[21][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[21]_9\(10),
      R => '0'
    );
\SOAMBuffer_reg[21][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[21]_9\(11),
      R => '0'
    );
\SOAMBuffer_reg[21][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[21]_9\(12),
      R => '0'
    );
\SOAMBuffer_reg[21][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[21]_9\(13),
      R => '0'
    );
\SOAMBuffer_reg[21][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[21]_9\(14),
      R => '0'
    );
\SOAMBuffer_reg[21][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[21]_9\(15),
      R => '0'
    );
\SOAMBuffer_reg[21][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[21]_9\(16),
      R => '0'
    );
\SOAMBuffer_reg[21][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[21]_9\(17),
      R => '0'
    );
\SOAMBuffer_reg[21][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[21]_9\(18),
      R => '0'
    );
\SOAMBuffer_reg[21][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[21]_9\(19),
      R => '0'
    );
\SOAMBuffer_reg[21][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[21]_9\(1),
      R => '0'
    );
\SOAMBuffer_reg[21][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[21]_9\(20),
      R => '0'
    );
\SOAMBuffer_reg[21][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[21]_9\(21),
      R => '0'
    );
\SOAMBuffer_reg[21][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[21]_9\(22),
      R => '0'
    );
\SOAMBuffer_reg[21][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[21]_9\(23),
      R => '0'
    );
\SOAMBuffer_reg[21][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[21]_9\(24),
      R => '0'
    );
\SOAMBuffer_reg[21][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[21]_9\(25),
      R => '0'
    );
\SOAMBuffer_reg[21][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[21]_9\(26),
      R => '0'
    );
\SOAMBuffer_reg[21][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[21]_9\(27),
      R => '0'
    );
\SOAMBuffer_reg[21][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[21]_9\(28),
      R => '0'
    );
\SOAMBuffer_reg[21][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[21]_9\(29),
      R => '0'
    );
\SOAMBuffer_reg[21][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[21]_9\(2),
      R => '0'
    );
\SOAMBuffer_reg[21][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[21]_9\(30),
      R => '0'
    );
\SOAMBuffer_reg[21][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[21]_9\(31),
      R => '0'
    );
\SOAMBuffer_reg[21][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[21]_9\(3),
      R => '0'
    );
\SOAMBuffer_reg[21][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[21]_9\(4),
      R => '0'
    );
\SOAMBuffer_reg[21][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[21]_9\(5),
      R => '0'
    );
\SOAMBuffer_reg[21][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[21]_9\(6),
      R => '0'
    );
\SOAMBuffer_reg[21][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[21]_9\(7),
      R => '0'
    );
\SOAMBuffer_reg[21][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[21]_9\(8),
      R => '0'
    );
\SOAMBuffer_reg[21][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[21][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[21]_9\(9),
      R => '0'
    );
\SOAMBuffer_reg[22][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[22]_8\(0),
      R => '0'
    );
\SOAMBuffer_reg[22][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[22]_8\(10),
      R => '0'
    );
\SOAMBuffer_reg[22][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[22]_8\(11),
      R => '0'
    );
\SOAMBuffer_reg[22][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[22]_8\(12),
      R => '0'
    );
\SOAMBuffer_reg[22][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[22]_8\(13),
      R => '0'
    );
\SOAMBuffer_reg[22][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[22]_8\(14),
      R => '0'
    );
\SOAMBuffer_reg[22][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[22]_8\(15),
      R => '0'
    );
\SOAMBuffer_reg[22][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[22]_8\(16),
      R => '0'
    );
\SOAMBuffer_reg[22][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[22]_8\(17),
      R => '0'
    );
\SOAMBuffer_reg[22][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[22]_8\(18),
      R => '0'
    );
\SOAMBuffer_reg[22][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[22]_8\(19),
      R => '0'
    );
\SOAMBuffer_reg[22][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[22]_8\(1),
      R => '0'
    );
\SOAMBuffer_reg[22][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[22]_8\(20),
      R => '0'
    );
\SOAMBuffer_reg[22][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[22]_8\(21),
      R => '0'
    );
\SOAMBuffer_reg[22][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[22]_8\(22),
      R => '0'
    );
\SOAMBuffer_reg[22][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[22]_8\(23),
      R => '0'
    );
\SOAMBuffer_reg[22][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[22]_8\(24),
      R => '0'
    );
\SOAMBuffer_reg[22][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[22]_8\(25),
      R => '0'
    );
\SOAMBuffer_reg[22][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[22]_8\(26),
      R => '0'
    );
\SOAMBuffer_reg[22][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[22]_8\(27),
      R => '0'
    );
\SOAMBuffer_reg[22][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[22]_8\(28),
      R => '0'
    );
\SOAMBuffer_reg[22][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[22]_8\(29),
      R => '0'
    );
\SOAMBuffer_reg[22][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[22]_8\(2),
      R => '0'
    );
\SOAMBuffer_reg[22][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[22]_8\(30),
      R => '0'
    );
\SOAMBuffer_reg[22][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[22]_8\(31),
      R => '0'
    );
\SOAMBuffer_reg[22][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[22]_8\(3),
      R => '0'
    );
\SOAMBuffer_reg[22][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[22]_8\(4),
      R => '0'
    );
\SOAMBuffer_reg[22][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[22]_8\(5),
      R => '0'
    );
\SOAMBuffer_reg[22][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[22]_8\(6),
      R => '0'
    );
\SOAMBuffer_reg[22][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[22]_8\(7),
      R => '0'
    );
\SOAMBuffer_reg[22][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[22]_8\(8),
      R => '0'
    );
\SOAMBuffer_reg[22][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[22][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[22]_8\(9),
      R => '0'
    );
\SOAMBuffer_reg[23][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[23]_7\(0),
      R => '0'
    );
\SOAMBuffer_reg[23][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[23]_7\(10),
      R => '0'
    );
\SOAMBuffer_reg[23][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[23]_7\(11),
      R => '0'
    );
\SOAMBuffer_reg[23][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[23]_7\(12),
      R => '0'
    );
\SOAMBuffer_reg[23][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[23]_7\(13),
      R => '0'
    );
\SOAMBuffer_reg[23][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[23]_7\(14),
      R => '0'
    );
\SOAMBuffer_reg[23][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[23]_7\(15),
      R => '0'
    );
\SOAMBuffer_reg[23][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[23]_7\(16),
      R => '0'
    );
\SOAMBuffer_reg[23][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[23]_7\(17),
      R => '0'
    );
\SOAMBuffer_reg[23][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[23]_7\(18),
      R => '0'
    );
\SOAMBuffer_reg[23][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[23]_7\(19),
      R => '0'
    );
\SOAMBuffer_reg[23][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[23]_7\(1),
      R => '0'
    );
\SOAMBuffer_reg[23][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[23]_7\(20),
      R => '0'
    );
\SOAMBuffer_reg[23][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[23]_7\(21),
      R => '0'
    );
\SOAMBuffer_reg[23][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[23]_7\(22),
      R => '0'
    );
\SOAMBuffer_reg[23][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[23]_7\(23),
      R => '0'
    );
\SOAMBuffer_reg[23][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[23]_7\(24),
      R => '0'
    );
\SOAMBuffer_reg[23][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[23]_7\(25),
      R => '0'
    );
\SOAMBuffer_reg[23][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[23]_7\(26),
      R => '0'
    );
\SOAMBuffer_reg[23][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[23]_7\(27),
      R => '0'
    );
\SOAMBuffer_reg[23][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[23]_7\(28),
      R => '0'
    );
\SOAMBuffer_reg[23][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[23]_7\(29),
      R => '0'
    );
\SOAMBuffer_reg[23][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[23]_7\(2),
      R => '0'
    );
\SOAMBuffer_reg[23][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[23]_7\(30),
      R => '0'
    );
\SOAMBuffer_reg[23][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[23]_7\(31),
      R => '0'
    );
\SOAMBuffer_reg[23][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[23]_7\(3),
      R => '0'
    );
\SOAMBuffer_reg[23][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[23]_7\(4),
      R => '0'
    );
\SOAMBuffer_reg[23][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[23]_7\(5),
      R => '0'
    );
\SOAMBuffer_reg[23][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[23]_7\(6),
      R => '0'
    );
\SOAMBuffer_reg[23][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[23]_7\(7),
      R => '0'
    );
\SOAMBuffer_reg[23][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[23]_7\(8),
      R => '0'
    );
\SOAMBuffer_reg[23][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[23][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[23]_7\(9),
      R => '0'
    );
\SOAMBuffer_reg[24][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[24]_6\(0),
      R => '0'
    );
\SOAMBuffer_reg[24][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[24]_6\(10),
      R => '0'
    );
\SOAMBuffer_reg[24][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[24]_6\(11),
      R => '0'
    );
\SOAMBuffer_reg[24][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[24]_6\(12),
      R => '0'
    );
\SOAMBuffer_reg[24][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[24]_6\(13),
      R => '0'
    );
\SOAMBuffer_reg[24][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[24]_6\(14),
      R => '0'
    );
\SOAMBuffer_reg[24][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[24]_6\(15),
      R => '0'
    );
\SOAMBuffer_reg[24][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[24]_6\(16),
      R => '0'
    );
\SOAMBuffer_reg[24][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[24]_6\(17),
      R => '0'
    );
\SOAMBuffer_reg[24][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[24]_6\(18),
      R => '0'
    );
\SOAMBuffer_reg[24][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[24]_6\(19),
      R => '0'
    );
\SOAMBuffer_reg[24][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[24]_6\(1),
      R => '0'
    );
\SOAMBuffer_reg[24][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[24]_6\(20),
      R => '0'
    );
\SOAMBuffer_reg[24][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[24]_6\(21),
      R => '0'
    );
\SOAMBuffer_reg[24][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[24]_6\(22),
      R => '0'
    );
\SOAMBuffer_reg[24][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[24]_6\(23),
      R => '0'
    );
\SOAMBuffer_reg[24][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[24]_6\(24),
      R => '0'
    );
\SOAMBuffer_reg[24][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[24]_6\(25),
      R => '0'
    );
\SOAMBuffer_reg[24][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[24]_6\(26),
      R => '0'
    );
\SOAMBuffer_reg[24][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[24]_6\(27),
      R => '0'
    );
\SOAMBuffer_reg[24][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[24]_6\(28),
      R => '0'
    );
\SOAMBuffer_reg[24][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[24]_6\(29),
      R => '0'
    );
\SOAMBuffer_reg[24][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[24]_6\(2),
      R => '0'
    );
\SOAMBuffer_reg[24][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[24]_6\(30),
      R => '0'
    );
\SOAMBuffer_reg[24][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[24]_6\(31),
      R => '0'
    );
\SOAMBuffer_reg[24][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[24]_6\(3),
      R => '0'
    );
\SOAMBuffer_reg[24][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[24]_6\(4),
      R => '0'
    );
\SOAMBuffer_reg[24][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[24]_6\(5),
      R => '0'
    );
\SOAMBuffer_reg[24][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[24]_6\(6),
      R => '0'
    );
\SOAMBuffer_reg[24][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[24]_6\(7),
      R => '0'
    );
\SOAMBuffer_reg[24][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[24]_6\(8),
      R => '0'
    );
\SOAMBuffer_reg[24][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[24][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[24]_6\(9),
      R => '0'
    );
\SOAMBuffer_reg[25][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[25]_5\(0),
      R => '0'
    );
\SOAMBuffer_reg[25][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[25]_5\(10),
      R => '0'
    );
\SOAMBuffer_reg[25][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[25]_5\(11),
      R => '0'
    );
\SOAMBuffer_reg[25][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[25]_5\(12),
      R => '0'
    );
\SOAMBuffer_reg[25][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[25]_5\(13),
      R => '0'
    );
\SOAMBuffer_reg[25][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[25]_5\(14),
      R => '0'
    );
\SOAMBuffer_reg[25][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[25]_5\(15),
      R => '0'
    );
\SOAMBuffer_reg[25][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[25]_5\(16),
      R => '0'
    );
\SOAMBuffer_reg[25][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[25]_5\(17),
      R => '0'
    );
\SOAMBuffer_reg[25][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[25]_5\(18),
      R => '0'
    );
\SOAMBuffer_reg[25][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[25]_5\(19),
      R => '0'
    );
\SOAMBuffer_reg[25][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[25]_5\(1),
      R => '0'
    );
\SOAMBuffer_reg[25][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[25]_5\(20),
      R => '0'
    );
\SOAMBuffer_reg[25][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[25]_5\(21),
      R => '0'
    );
\SOAMBuffer_reg[25][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[25]_5\(22),
      R => '0'
    );
\SOAMBuffer_reg[25][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[25]_5\(23),
      R => '0'
    );
\SOAMBuffer_reg[25][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[25]_5\(24),
      R => '0'
    );
\SOAMBuffer_reg[25][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[25]_5\(25),
      R => '0'
    );
\SOAMBuffer_reg[25][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[25]_5\(26),
      R => '0'
    );
\SOAMBuffer_reg[25][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[25]_5\(27),
      R => '0'
    );
\SOAMBuffer_reg[25][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[25]_5\(28),
      R => '0'
    );
\SOAMBuffer_reg[25][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[25]_5\(29),
      R => '0'
    );
\SOAMBuffer_reg[25][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[25]_5\(2),
      R => '0'
    );
\SOAMBuffer_reg[25][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[25]_5\(30),
      R => '0'
    );
\SOAMBuffer_reg[25][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[25]_5\(31),
      R => '0'
    );
\SOAMBuffer_reg[25][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[25]_5\(3),
      R => '0'
    );
\SOAMBuffer_reg[25][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[25]_5\(4),
      R => '0'
    );
\SOAMBuffer_reg[25][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[25]_5\(5),
      R => '0'
    );
\SOAMBuffer_reg[25][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[25]_5\(6),
      R => '0'
    );
\SOAMBuffer_reg[25][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[25]_5\(7),
      R => '0'
    );
\SOAMBuffer_reg[25][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[25]_5\(8),
      R => '0'
    );
\SOAMBuffer_reg[25][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[25][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[25]_5\(9),
      R => '0'
    );
\SOAMBuffer_reg[26][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[26]_4\(0),
      R => '0'
    );
\SOAMBuffer_reg[26][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[26]_4\(10),
      R => '0'
    );
\SOAMBuffer_reg[26][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[26]_4\(11),
      R => '0'
    );
\SOAMBuffer_reg[26][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[26]_4\(12),
      R => '0'
    );
\SOAMBuffer_reg[26][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[26]_4\(13),
      R => '0'
    );
\SOAMBuffer_reg[26][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[26]_4\(14),
      R => '0'
    );
\SOAMBuffer_reg[26][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[26]_4\(15),
      R => '0'
    );
\SOAMBuffer_reg[26][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[26]_4\(16),
      R => '0'
    );
\SOAMBuffer_reg[26][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[26]_4\(17),
      R => '0'
    );
\SOAMBuffer_reg[26][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[26]_4\(18),
      R => '0'
    );
\SOAMBuffer_reg[26][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[26]_4\(19),
      R => '0'
    );
\SOAMBuffer_reg[26][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[26]_4\(1),
      R => '0'
    );
\SOAMBuffer_reg[26][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[26]_4\(20),
      R => '0'
    );
\SOAMBuffer_reg[26][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[26]_4\(21),
      R => '0'
    );
\SOAMBuffer_reg[26][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[26]_4\(22),
      R => '0'
    );
\SOAMBuffer_reg[26][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[26]_4\(23),
      R => '0'
    );
\SOAMBuffer_reg[26][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[26]_4\(24),
      R => '0'
    );
\SOAMBuffer_reg[26][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[26]_4\(25),
      R => '0'
    );
\SOAMBuffer_reg[26][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[26]_4\(26),
      R => '0'
    );
\SOAMBuffer_reg[26][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[26]_4\(27),
      R => '0'
    );
\SOAMBuffer_reg[26][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[26]_4\(28),
      R => '0'
    );
\SOAMBuffer_reg[26][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[26]_4\(29),
      R => '0'
    );
\SOAMBuffer_reg[26][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[26]_4\(2),
      R => '0'
    );
\SOAMBuffer_reg[26][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[26]_4\(30),
      R => '0'
    );
\SOAMBuffer_reg[26][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[26]_4\(31),
      R => '0'
    );
\SOAMBuffer_reg[26][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[26]_4\(3),
      R => '0'
    );
\SOAMBuffer_reg[26][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[26]_4\(4),
      R => '0'
    );
\SOAMBuffer_reg[26][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[26]_4\(5),
      R => '0'
    );
\SOAMBuffer_reg[26][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[26]_4\(6),
      R => '0'
    );
\SOAMBuffer_reg[26][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[26]_4\(7),
      R => '0'
    );
\SOAMBuffer_reg[26][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[26]_4\(8),
      R => '0'
    );
\SOAMBuffer_reg[26][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[26][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[26]_4\(9),
      R => '0'
    );
\SOAMBuffer_reg[27][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[27]_3\(0),
      R => '0'
    );
\SOAMBuffer_reg[27][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[27]_3\(10),
      R => '0'
    );
\SOAMBuffer_reg[27][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[27]_3\(11),
      R => '0'
    );
\SOAMBuffer_reg[27][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[27]_3\(12),
      R => '0'
    );
\SOAMBuffer_reg[27][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[27]_3\(13),
      R => '0'
    );
\SOAMBuffer_reg[27][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[27]_3\(14),
      R => '0'
    );
\SOAMBuffer_reg[27][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[27]_3\(15),
      R => '0'
    );
\SOAMBuffer_reg[27][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[27]_3\(16),
      R => '0'
    );
\SOAMBuffer_reg[27][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[27]_3\(17),
      R => '0'
    );
\SOAMBuffer_reg[27][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[27]_3\(18),
      R => '0'
    );
\SOAMBuffer_reg[27][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[27]_3\(19),
      R => '0'
    );
\SOAMBuffer_reg[27][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[27]_3\(1),
      R => '0'
    );
\SOAMBuffer_reg[27][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[27]_3\(20),
      R => '0'
    );
\SOAMBuffer_reg[27][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[27]_3\(21),
      R => '0'
    );
\SOAMBuffer_reg[27][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[27]_3\(22),
      R => '0'
    );
\SOAMBuffer_reg[27][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[27]_3\(23),
      R => '0'
    );
\SOAMBuffer_reg[27][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[27]_3\(24),
      R => '0'
    );
\SOAMBuffer_reg[27][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[27]_3\(25),
      R => '0'
    );
\SOAMBuffer_reg[27][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[27]_3\(26),
      R => '0'
    );
\SOAMBuffer_reg[27][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[27]_3\(27),
      R => '0'
    );
\SOAMBuffer_reg[27][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[27]_3\(28),
      R => '0'
    );
\SOAMBuffer_reg[27][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[27]_3\(29),
      R => '0'
    );
\SOAMBuffer_reg[27][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[27]_3\(2),
      R => '0'
    );
\SOAMBuffer_reg[27][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[27]_3\(30),
      R => '0'
    );
\SOAMBuffer_reg[27][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[27]_3\(31),
      R => '0'
    );
\SOAMBuffer_reg[27][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[27]_3\(3),
      R => '0'
    );
\SOAMBuffer_reg[27][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[27]_3\(4),
      R => '0'
    );
\SOAMBuffer_reg[27][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[27]_3\(5),
      R => '0'
    );
\SOAMBuffer_reg[27][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[27]_3\(6),
      R => '0'
    );
\SOAMBuffer_reg[27][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[27]_3\(7),
      R => '0'
    );
\SOAMBuffer_reg[27][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[27]_3\(8),
      R => '0'
    );
\SOAMBuffer_reg[27][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[27][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[27]_3\(9),
      R => '0'
    );
\SOAMBuffer_reg[28][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[28]_2\(0),
      R => '0'
    );
\SOAMBuffer_reg[28][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[28]_2\(10),
      R => '0'
    );
\SOAMBuffer_reg[28][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[28]_2\(11),
      R => '0'
    );
\SOAMBuffer_reg[28][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[28]_2\(12),
      R => '0'
    );
\SOAMBuffer_reg[28][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[28]_2\(13),
      R => '0'
    );
\SOAMBuffer_reg[28][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[28]_2\(14),
      R => '0'
    );
\SOAMBuffer_reg[28][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[28]_2\(15),
      R => '0'
    );
\SOAMBuffer_reg[28][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[28]_2\(16),
      R => '0'
    );
\SOAMBuffer_reg[28][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[28]_2\(17),
      R => '0'
    );
\SOAMBuffer_reg[28][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[28]_2\(18),
      R => '0'
    );
\SOAMBuffer_reg[28][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[28]_2\(19),
      R => '0'
    );
\SOAMBuffer_reg[28][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[28]_2\(1),
      R => '0'
    );
\SOAMBuffer_reg[28][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[28]_2\(20),
      R => '0'
    );
\SOAMBuffer_reg[28][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[28]_2\(21),
      R => '0'
    );
\SOAMBuffer_reg[28][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[28]_2\(22),
      R => '0'
    );
\SOAMBuffer_reg[28][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[28]_2\(23),
      R => '0'
    );
\SOAMBuffer_reg[28][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[28]_2\(24),
      R => '0'
    );
\SOAMBuffer_reg[28][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[28]_2\(25),
      R => '0'
    );
\SOAMBuffer_reg[28][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[28]_2\(26),
      R => '0'
    );
\SOAMBuffer_reg[28][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[28]_2\(27),
      R => '0'
    );
\SOAMBuffer_reg[28][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[28]_2\(28),
      R => '0'
    );
\SOAMBuffer_reg[28][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[28]_2\(29),
      R => '0'
    );
\SOAMBuffer_reg[28][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[28]_2\(2),
      R => '0'
    );
\SOAMBuffer_reg[28][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[28]_2\(30),
      R => '0'
    );
\SOAMBuffer_reg[28][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[28]_2\(31),
      R => '0'
    );
\SOAMBuffer_reg[28][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[28]_2\(3),
      R => '0'
    );
\SOAMBuffer_reg[28][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[28]_2\(4),
      R => '0'
    );
\SOAMBuffer_reg[28][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[28]_2\(5),
      R => '0'
    );
\SOAMBuffer_reg[28][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[28]_2\(6),
      R => '0'
    );
\SOAMBuffer_reg[28][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[28]_2\(7),
      R => '0'
    );
\SOAMBuffer_reg[28][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[28]_2\(8),
      R => '0'
    );
\SOAMBuffer_reg[28][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[28][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[28]_2\(9),
      R => '0'
    );
\SOAMBuffer_reg[29][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[29]_1\(0),
      R => '0'
    );
\SOAMBuffer_reg[29][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[29]_1\(10),
      R => '0'
    );
\SOAMBuffer_reg[29][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[29]_1\(11),
      R => '0'
    );
\SOAMBuffer_reg[29][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[29]_1\(12),
      R => '0'
    );
\SOAMBuffer_reg[29][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[29]_1\(13),
      R => '0'
    );
\SOAMBuffer_reg[29][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[29]_1\(14),
      R => '0'
    );
\SOAMBuffer_reg[29][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[29]_1\(15),
      R => '0'
    );
\SOAMBuffer_reg[29][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[29]_1\(16),
      R => '0'
    );
\SOAMBuffer_reg[29][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[29]_1\(17),
      R => '0'
    );
\SOAMBuffer_reg[29][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[29]_1\(18),
      R => '0'
    );
\SOAMBuffer_reg[29][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[29]_1\(19),
      R => '0'
    );
\SOAMBuffer_reg[29][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[29]_1\(1),
      R => '0'
    );
\SOAMBuffer_reg[29][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[29]_1\(20),
      R => '0'
    );
\SOAMBuffer_reg[29][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[29]_1\(21),
      R => '0'
    );
\SOAMBuffer_reg[29][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[29]_1\(22),
      R => '0'
    );
\SOAMBuffer_reg[29][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[29]_1\(23),
      R => '0'
    );
\SOAMBuffer_reg[29][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[29]_1\(24),
      R => '0'
    );
\SOAMBuffer_reg[29][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[29]_1\(25),
      R => '0'
    );
\SOAMBuffer_reg[29][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[29]_1\(26),
      R => '0'
    );
\SOAMBuffer_reg[29][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[29]_1\(27),
      R => '0'
    );
\SOAMBuffer_reg[29][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[29]_1\(28),
      R => '0'
    );
\SOAMBuffer_reg[29][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[29]_1\(29),
      R => '0'
    );
\SOAMBuffer_reg[29][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[29]_1\(2),
      R => '0'
    );
\SOAMBuffer_reg[29][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[29]_1\(30),
      R => '0'
    );
\SOAMBuffer_reg[29][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[29]_1\(31),
      R => '0'
    );
\SOAMBuffer_reg[29][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[29]_1\(3),
      R => '0'
    );
\SOAMBuffer_reg[29][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[29]_1\(4),
      R => '0'
    );
\SOAMBuffer_reg[29][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[29]_1\(5),
      R => '0'
    );
\SOAMBuffer_reg[29][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[29]_1\(6),
      R => '0'
    );
\SOAMBuffer_reg[29][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[29]_1\(7),
      R => '0'
    );
\SOAMBuffer_reg[29][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[29]_1\(8),
      R => '0'
    );
\SOAMBuffer_reg[29][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[29][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[29]_1\(9),
      R => '0'
    );
\SOAMBuffer_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[2]_28\(0),
      R => '0'
    );
\SOAMBuffer_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[2]_28\(10),
      R => '0'
    );
\SOAMBuffer_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[2]_28\(11),
      R => '0'
    );
\SOAMBuffer_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[2]_28\(12),
      R => '0'
    );
\SOAMBuffer_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[2]_28\(13),
      R => '0'
    );
\SOAMBuffer_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[2]_28\(14),
      R => '0'
    );
\SOAMBuffer_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[2]_28\(15),
      R => '0'
    );
\SOAMBuffer_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[2]_28\(16),
      R => '0'
    );
\SOAMBuffer_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[2]_28\(17),
      R => '0'
    );
\SOAMBuffer_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[2]_28\(18),
      R => '0'
    );
\SOAMBuffer_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[2]_28\(19),
      R => '0'
    );
\SOAMBuffer_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[2]_28\(1),
      R => '0'
    );
\SOAMBuffer_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[2]_28\(20),
      R => '0'
    );
\SOAMBuffer_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[2]_28\(21),
      R => '0'
    );
\SOAMBuffer_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[2]_28\(22),
      R => '0'
    );
\SOAMBuffer_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[2]_28\(23),
      R => '0'
    );
\SOAMBuffer_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[2]_28\(24),
      R => '0'
    );
\SOAMBuffer_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[2]_28\(25),
      R => '0'
    );
\SOAMBuffer_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[2]_28\(26),
      R => '0'
    );
\SOAMBuffer_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[2]_28\(27),
      R => '0'
    );
\SOAMBuffer_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[2]_28\(28),
      R => '0'
    );
\SOAMBuffer_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[2]_28\(29),
      R => '0'
    );
\SOAMBuffer_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[2]_28\(2),
      R => '0'
    );
\SOAMBuffer_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[2]_28\(30),
      R => '0'
    );
\SOAMBuffer_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[2]_28\(31),
      R => '0'
    );
\SOAMBuffer_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[2]_28\(3),
      R => '0'
    );
\SOAMBuffer_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[2]_28\(4),
      R => '0'
    );
\SOAMBuffer_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[2]_28\(5),
      R => '0'
    );
\SOAMBuffer_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[2]_28\(6),
      R => '0'
    );
\SOAMBuffer_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[2]_28\(7),
      R => '0'
    );
\SOAMBuffer_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[2]_28\(8),
      R => '0'
    );
\SOAMBuffer_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[2][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[2]_28\(9),
      R => '0'
    );
\SOAMBuffer_reg[30][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[30]_0\(0),
      R => '0'
    );
\SOAMBuffer_reg[30][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[30]_0\(10),
      R => '0'
    );
\SOAMBuffer_reg[30][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[30]_0\(11),
      R => '0'
    );
\SOAMBuffer_reg[30][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[30]_0\(12),
      R => '0'
    );
\SOAMBuffer_reg[30][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[30]_0\(13),
      R => '0'
    );
\SOAMBuffer_reg[30][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[30]_0\(14),
      R => '0'
    );
\SOAMBuffer_reg[30][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[30]_0\(15),
      R => '0'
    );
\SOAMBuffer_reg[30][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[30]_0\(16),
      R => '0'
    );
\SOAMBuffer_reg[30][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[30]_0\(17),
      R => '0'
    );
\SOAMBuffer_reg[30][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[30]_0\(18),
      R => '0'
    );
\SOAMBuffer_reg[30][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[30]_0\(19),
      R => '0'
    );
\SOAMBuffer_reg[30][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[30]_0\(1),
      R => '0'
    );
\SOAMBuffer_reg[30][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[30]_0\(20),
      R => '0'
    );
\SOAMBuffer_reg[30][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[30]_0\(21),
      R => '0'
    );
\SOAMBuffer_reg[30][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[30]_0\(22),
      R => '0'
    );
\SOAMBuffer_reg[30][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[30]_0\(23),
      R => '0'
    );
\SOAMBuffer_reg[30][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[30]_0\(24),
      R => '0'
    );
\SOAMBuffer_reg[30][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[30]_0\(25),
      R => '0'
    );
\SOAMBuffer_reg[30][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[30]_0\(26),
      R => '0'
    );
\SOAMBuffer_reg[30][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[30]_0\(27),
      R => '0'
    );
\SOAMBuffer_reg[30][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[30]_0\(28),
      R => '0'
    );
\SOAMBuffer_reg[30][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[30]_0\(29),
      R => '0'
    );
\SOAMBuffer_reg[30][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[30]_0\(2),
      R => '0'
    );
\SOAMBuffer_reg[30][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[30]_0\(30),
      R => '0'
    );
\SOAMBuffer_reg[30][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[30]_0\(31),
      R => '0'
    );
\SOAMBuffer_reg[30][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[30]_0\(3),
      R => '0'
    );
\SOAMBuffer_reg[30][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[30]_0\(4),
      R => '0'
    );
\SOAMBuffer_reg[30][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[30]_0\(5),
      R => '0'
    );
\SOAMBuffer_reg[30][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[30]_0\(6),
      R => '0'
    );
\SOAMBuffer_reg[30][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[30]_0\(7),
      R => '0'
    );
\SOAMBuffer_reg[30][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[30]_0\(8),
      R => '0'
    );
\SOAMBuffer_reg[30][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[30][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[30]_0\(9),
      R => '0'
    );
\SOAMBuffer_reg[31][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg_n_0_[31][0]\,
      R => '0'
    );
\SOAMBuffer_reg[31][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg_n_0_[31][10]\,
      R => '0'
    );
\SOAMBuffer_reg[31][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg_n_0_[31][11]\,
      R => '0'
    );
\SOAMBuffer_reg[31][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg_n_0_[31][12]\,
      R => '0'
    );
\SOAMBuffer_reg[31][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg_n_0_[31][13]\,
      R => '0'
    );
\SOAMBuffer_reg[31][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => L(14),
      R => '0'
    );
\SOAMBuffer_reg[31][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => L(15),
      R => '0'
    );
\SOAMBuffer_reg[31][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => L(16),
      R => '0'
    );
\SOAMBuffer_reg[31][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => L(17),
      R => '0'
    );
\SOAMBuffer_reg[31][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => L(18),
      R => '0'
    );
\SOAMBuffer_reg[31][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => L(19),
      R => '0'
    );
\SOAMBuffer_reg[31][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg_n_0_[31][1]\,
      R => '0'
    );
\SOAMBuffer_reg[31][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => L(20),
      R => '0'
    );
\SOAMBuffer_reg[31][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => L(21),
      R => '0'
    );
\SOAMBuffer_reg[31][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => L(22),
      R => '0'
    );
\SOAMBuffer_reg[31][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg_n_0_[31][23]\,
      R => '0'
    );
\SOAMBuffer_reg[31][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg_n_0_[31][24]\,
      R => '0'
    );
\SOAMBuffer_reg[31][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg_n_0_[31][25]\,
      R => '0'
    );
\SOAMBuffer_reg[31][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg_n_0_[31][26]\,
      R => '0'
    );
\SOAMBuffer_reg[31][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg_n_0_[31][27]\,
      R => '0'
    );
\SOAMBuffer_reg[31][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg_n_0_[31][28]\,
      R => '0'
    );
\SOAMBuffer_reg[31][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg_n_0_[31][29]\,
      R => '0'
    );
\SOAMBuffer_reg[31][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg_n_0_[31][2]\,
      R => '0'
    );
\SOAMBuffer_reg[31][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg_n_0_[31][30]\,
      R => '0'
    );
\SOAMBuffer_reg[31][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg_n_0_[31][31]\,
      R => '0'
    );
\SOAMBuffer_reg[31][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg_n_0_[31][3]\,
      R => '0'
    );
\SOAMBuffer_reg[31][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg_n_0_[31][4]\,
      R => '0'
    );
\SOAMBuffer_reg[31][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg_n_0_[31][5]\,
      R => '0'
    );
\SOAMBuffer_reg[31][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg_n_0_[31][6]\,
      R => '0'
    );
\SOAMBuffer_reg[31][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg_n_0_[31][7]\,
      R => '0'
    );
\SOAMBuffer_reg[31][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg_n_0_[31][8]\,
      R => '0'
    );
\SOAMBuffer_reg[31][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[31][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg_n_0_[31][9]\,
      R => '0'
    );
\SOAMBuffer_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[3]_27\(0),
      R => '0'
    );
\SOAMBuffer_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[3]_27\(10),
      R => '0'
    );
\SOAMBuffer_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[3]_27\(11),
      R => '0'
    );
\SOAMBuffer_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[3]_27\(12),
      R => '0'
    );
\SOAMBuffer_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[3]_27\(13),
      R => '0'
    );
\SOAMBuffer_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[3]_27\(14),
      R => '0'
    );
\SOAMBuffer_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[3]_27\(15),
      R => '0'
    );
\SOAMBuffer_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[3]_27\(16),
      R => '0'
    );
\SOAMBuffer_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[3]_27\(17),
      R => '0'
    );
\SOAMBuffer_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[3]_27\(18),
      R => '0'
    );
\SOAMBuffer_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[3]_27\(19),
      R => '0'
    );
\SOAMBuffer_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[3]_27\(1),
      R => '0'
    );
\SOAMBuffer_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[3]_27\(20),
      R => '0'
    );
\SOAMBuffer_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[3]_27\(21),
      R => '0'
    );
\SOAMBuffer_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[3]_27\(22),
      R => '0'
    );
\SOAMBuffer_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[3]_27\(23),
      R => '0'
    );
\SOAMBuffer_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[3]_27\(24),
      R => '0'
    );
\SOAMBuffer_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[3]_27\(25),
      R => '0'
    );
\SOAMBuffer_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[3]_27\(26),
      R => '0'
    );
\SOAMBuffer_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[3]_27\(27),
      R => '0'
    );
\SOAMBuffer_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[3]_27\(28),
      R => '0'
    );
\SOAMBuffer_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[3]_27\(29),
      R => '0'
    );
\SOAMBuffer_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[3]_27\(2),
      R => '0'
    );
\SOAMBuffer_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[3]_27\(30),
      R => '0'
    );
\SOAMBuffer_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[3]_27\(31),
      R => '0'
    );
\SOAMBuffer_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[3]_27\(3),
      R => '0'
    );
\SOAMBuffer_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[3]_27\(4),
      R => '0'
    );
\SOAMBuffer_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[3]_27\(5),
      R => '0'
    );
\SOAMBuffer_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[3]_27\(6),
      R => '0'
    );
\SOAMBuffer_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[3]_27\(7),
      R => '0'
    );
\SOAMBuffer_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[3]_27\(8),
      R => '0'
    );
\SOAMBuffer_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[3][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[3]_27\(9),
      R => '0'
    );
\SOAMBuffer_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[4]_26\(0),
      R => '0'
    );
\SOAMBuffer_reg[4][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[4]_26\(10),
      R => '0'
    );
\SOAMBuffer_reg[4][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[4]_26\(11),
      R => '0'
    );
\SOAMBuffer_reg[4][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[4]_26\(12),
      R => '0'
    );
\SOAMBuffer_reg[4][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[4]_26\(13),
      R => '0'
    );
\SOAMBuffer_reg[4][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[4]_26\(14),
      R => '0'
    );
\SOAMBuffer_reg[4][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[4]_26\(15),
      R => '0'
    );
\SOAMBuffer_reg[4][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[4]_26\(16),
      R => '0'
    );
\SOAMBuffer_reg[4][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[4]_26\(17),
      R => '0'
    );
\SOAMBuffer_reg[4][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[4]_26\(18),
      R => '0'
    );
\SOAMBuffer_reg[4][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[4]_26\(19),
      R => '0'
    );
\SOAMBuffer_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[4]_26\(1),
      R => '0'
    );
\SOAMBuffer_reg[4][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[4]_26\(20),
      R => '0'
    );
\SOAMBuffer_reg[4][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[4]_26\(21),
      R => '0'
    );
\SOAMBuffer_reg[4][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[4]_26\(22),
      R => '0'
    );
\SOAMBuffer_reg[4][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[4]_26\(23),
      R => '0'
    );
\SOAMBuffer_reg[4][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[4]_26\(24),
      R => '0'
    );
\SOAMBuffer_reg[4][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[4]_26\(25),
      R => '0'
    );
\SOAMBuffer_reg[4][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[4]_26\(26),
      R => '0'
    );
\SOAMBuffer_reg[4][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[4]_26\(27),
      R => '0'
    );
\SOAMBuffer_reg[4][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[4]_26\(28),
      R => '0'
    );
\SOAMBuffer_reg[4][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[4]_26\(29),
      R => '0'
    );
\SOAMBuffer_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[4]_26\(2),
      R => '0'
    );
\SOAMBuffer_reg[4][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[4]_26\(30),
      R => '0'
    );
\SOAMBuffer_reg[4][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[4]_26\(31),
      R => '0'
    );
\SOAMBuffer_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[4]_26\(3),
      R => '0'
    );
\SOAMBuffer_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[4]_26\(4),
      R => '0'
    );
\SOAMBuffer_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[4]_26\(5),
      R => '0'
    );
\SOAMBuffer_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[4]_26\(6),
      R => '0'
    );
\SOAMBuffer_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[4]_26\(7),
      R => '0'
    );
\SOAMBuffer_reg[4][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[4]_26\(8),
      R => '0'
    );
\SOAMBuffer_reg[4][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[4][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[4]_26\(9),
      R => '0'
    );
\SOAMBuffer_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[5]_25\(0),
      R => '0'
    );
\SOAMBuffer_reg[5][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[5]_25\(10),
      R => '0'
    );
\SOAMBuffer_reg[5][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[5]_25\(11),
      R => '0'
    );
\SOAMBuffer_reg[5][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[5]_25\(12),
      R => '0'
    );
\SOAMBuffer_reg[5][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[5]_25\(13),
      R => '0'
    );
\SOAMBuffer_reg[5][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[5]_25\(14),
      R => '0'
    );
\SOAMBuffer_reg[5][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[5]_25\(15),
      R => '0'
    );
\SOAMBuffer_reg[5][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[5]_25\(16),
      R => '0'
    );
\SOAMBuffer_reg[5][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[5]_25\(17),
      R => '0'
    );
\SOAMBuffer_reg[5][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[5]_25\(18),
      R => '0'
    );
\SOAMBuffer_reg[5][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[5]_25\(19),
      R => '0'
    );
\SOAMBuffer_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[5]_25\(1),
      R => '0'
    );
\SOAMBuffer_reg[5][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[5]_25\(20),
      R => '0'
    );
\SOAMBuffer_reg[5][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[5]_25\(21),
      R => '0'
    );
\SOAMBuffer_reg[5][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[5]_25\(22),
      R => '0'
    );
\SOAMBuffer_reg[5][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[5]_25\(23),
      R => '0'
    );
\SOAMBuffer_reg[5][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[5]_25\(24),
      R => '0'
    );
\SOAMBuffer_reg[5][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[5]_25\(25),
      R => '0'
    );
\SOAMBuffer_reg[5][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[5]_25\(26),
      R => '0'
    );
\SOAMBuffer_reg[5][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[5]_25\(27),
      R => '0'
    );
\SOAMBuffer_reg[5][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[5]_25\(28),
      R => '0'
    );
\SOAMBuffer_reg[5][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[5]_25\(29),
      R => '0'
    );
\SOAMBuffer_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[5]_25\(2),
      R => '0'
    );
\SOAMBuffer_reg[5][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[5]_25\(30),
      R => '0'
    );
\SOAMBuffer_reg[5][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[5]_25\(31),
      R => '0'
    );
\SOAMBuffer_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[5]_25\(3),
      R => '0'
    );
\SOAMBuffer_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[5]_25\(4),
      R => '0'
    );
\SOAMBuffer_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[5]_25\(5),
      R => '0'
    );
\SOAMBuffer_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[5]_25\(6),
      R => '0'
    );
\SOAMBuffer_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[5]_25\(7),
      R => '0'
    );
\SOAMBuffer_reg[5][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[5]_25\(8),
      R => '0'
    );
\SOAMBuffer_reg[5][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[5][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[5]_25\(9),
      R => '0'
    );
\SOAMBuffer_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[6]_24\(0),
      R => '0'
    );
\SOAMBuffer_reg[6][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[6]_24\(10),
      R => '0'
    );
\SOAMBuffer_reg[6][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[6]_24\(11),
      R => '0'
    );
\SOAMBuffer_reg[6][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[6]_24\(12),
      R => '0'
    );
\SOAMBuffer_reg[6][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[6]_24\(13),
      R => '0'
    );
\SOAMBuffer_reg[6][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[6]_24\(14),
      R => '0'
    );
\SOAMBuffer_reg[6][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[6]_24\(15),
      R => '0'
    );
\SOAMBuffer_reg[6][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[6]_24\(16),
      R => '0'
    );
\SOAMBuffer_reg[6][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[6]_24\(17),
      R => '0'
    );
\SOAMBuffer_reg[6][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[6]_24\(18),
      R => '0'
    );
\SOAMBuffer_reg[6][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[6]_24\(19),
      R => '0'
    );
\SOAMBuffer_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[6]_24\(1),
      R => '0'
    );
\SOAMBuffer_reg[6][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[6]_24\(20),
      R => '0'
    );
\SOAMBuffer_reg[6][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[6]_24\(21),
      R => '0'
    );
\SOAMBuffer_reg[6][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[6]_24\(22),
      R => '0'
    );
\SOAMBuffer_reg[6][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[6]_24\(23),
      R => '0'
    );
\SOAMBuffer_reg[6][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[6]_24\(24),
      R => '0'
    );
\SOAMBuffer_reg[6][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[6]_24\(25),
      R => '0'
    );
\SOAMBuffer_reg[6][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[6]_24\(26),
      R => '0'
    );
\SOAMBuffer_reg[6][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[6]_24\(27),
      R => '0'
    );
\SOAMBuffer_reg[6][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[6]_24\(28),
      R => '0'
    );
\SOAMBuffer_reg[6][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[6]_24\(29),
      R => '0'
    );
\SOAMBuffer_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[6]_24\(2),
      R => '0'
    );
\SOAMBuffer_reg[6][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[6]_24\(30),
      R => '0'
    );
\SOAMBuffer_reg[6][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[6]_24\(31),
      R => '0'
    );
\SOAMBuffer_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[6]_24\(3),
      R => '0'
    );
\SOAMBuffer_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[6]_24\(4),
      R => '0'
    );
\SOAMBuffer_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[6]_24\(5),
      R => '0'
    );
\SOAMBuffer_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[6]_24\(6),
      R => '0'
    );
\SOAMBuffer_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[6]_24\(7),
      R => '0'
    );
\SOAMBuffer_reg[6][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[6]_24\(8),
      R => '0'
    );
\SOAMBuffer_reg[6][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[6][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[6]_24\(9),
      R => '0'
    );
\SOAMBuffer_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[7]_23\(0),
      R => '0'
    );
\SOAMBuffer_reg[7][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[7]_23\(10),
      R => '0'
    );
\SOAMBuffer_reg[7][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[7]_23\(11),
      R => '0'
    );
\SOAMBuffer_reg[7][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[7]_23\(12),
      R => '0'
    );
\SOAMBuffer_reg[7][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[7]_23\(13),
      R => '0'
    );
\SOAMBuffer_reg[7][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[7]_23\(14),
      R => '0'
    );
\SOAMBuffer_reg[7][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[7]_23\(15),
      R => '0'
    );
\SOAMBuffer_reg[7][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[7]_23\(16),
      R => '0'
    );
\SOAMBuffer_reg[7][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[7]_23\(17),
      R => '0'
    );
\SOAMBuffer_reg[7][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[7]_23\(18),
      R => '0'
    );
\SOAMBuffer_reg[7][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[7]_23\(19),
      R => '0'
    );
\SOAMBuffer_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[7]_23\(1),
      R => '0'
    );
\SOAMBuffer_reg[7][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[7]_23\(20),
      R => '0'
    );
\SOAMBuffer_reg[7][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[7]_23\(21),
      R => '0'
    );
\SOAMBuffer_reg[7][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[7]_23\(22),
      R => '0'
    );
\SOAMBuffer_reg[7][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[7]_23\(23),
      R => '0'
    );
\SOAMBuffer_reg[7][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[7]_23\(24),
      R => '0'
    );
\SOAMBuffer_reg[7][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[7]_23\(25),
      R => '0'
    );
\SOAMBuffer_reg[7][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[7]_23\(26),
      R => '0'
    );
\SOAMBuffer_reg[7][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[7]_23\(27),
      R => '0'
    );
\SOAMBuffer_reg[7][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[7]_23\(28),
      R => '0'
    );
\SOAMBuffer_reg[7][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[7]_23\(29),
      R => '0'
    );
\SOAMBuffer_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[7]_23\(2),
      R => '0'
    );
\SOAMBuffer_reg[7][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[7]_23\(30),
      R => '0'
    );
\SOAMBuffer_reg[7][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[7]_23\(31),
      R => '0'
    );
\SOAMBuffer_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[7]_23\(3),
      R => '0'
    );
\SOAMBuffer_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[7]_23\(4),
      R => '0'
    );
\SOAMBuffer_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[7]_23\(5),
      R => '0'
    );
\SOAMBuffer_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[7]_23\(6),
      R => '0'
    );
\SOAMBuffer_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[7]_23\(7),
      R => '0'
    );
\SOAMBuffer_reg[7][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[7]_23\(8),
      R => '0'
    );
\SOAMBuffer_reg[7][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[7][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[7]_23\(9),
      R => '0'
    );
\SOAMBuffer_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[8]_22\(0),
      R => '0'
    );
\SOAMBuffer_reg[8][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[8]_22\(10),
      R => '0'
    );
\SOAMBuffer_reg[8][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[8]_22\(11),
      R => '0'
    );
\SOAMBuffer_reg[8][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[8]_22\(12),
      R => '0'
    );
\SOAMBuffer_reg[8][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[8]_22\(13),
      R => '0'
    );
\SOAMBuffer_reg[8][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[8]_22\(14),
      R => '0'
    );
\SOAMBuffer_reg[8][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[8]_22\(15),
      R => '0'
    );
\SOAMBuffer_reg[8][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[8]_22\(16),
      R => '0'
    );
\SOAMBuffer_reg[8][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[8]_22\(17),
      R => '0'
    );
\SOAMBuffer_reg[8][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[8]_22\(18),
      R => '0'
    );
\SOAMBuffer_reg[8][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[8]_22\(19),
      R => '0'
    );
\SOAMBuffer_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[8]_22\(1),
      R => '0'
    );
\SOAMBuffer_reg[8][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[8]_22\(20),
      R => '0'
    );
\SOAMBuffer_reg[8][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[8]_22\(21),
      R => '0'
    );
\SOAMBuffer_reg[8][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[8]_22\(22),
      R => '0'
    );
\SOAMBuffer_reg[8][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[8]_22\(23),
      R => '0'
    );
\SOAMBuffer_reg[8][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[8]_22\(24),
      R => '0'
    );
\SOAMBuffer_reg[8][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[8]_22\(25),
      R => '0'
    );
\SOAMBuffer_reg[8][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[8]_22\(26),
      R => '0'
    );
\SOAMBuffer_reg[8][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[8]_22\(27),
      R => '0'
    );
\SOAMBuffer_reg[8][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[8]_22\(28),
      R => '0'
    );
\SOAMBuffer_reg[8][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[8]_22\(29),
      R => '0'
    );
\SOAMBuffer_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[8]_22\(2),
      R => '0'
    );
\SOAMBuffer_reg[8][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[8]_22\(30),
      R => '0'
    );
\SOAMBuffer_reg[8][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[8]_22\(31),
      R => '0'
    );
\SOAMBuffer_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[8]_22\(3),
      R => '0'
    );
\SOAMBuffer_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[8]_22\(4),
      R => '0'
    );
\SOAMBuffer_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[8]_22\(5),
      R => '0'
    );
\SOAMBuffer_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[8]_22\(6),
      R => '0'
    );
\SOAMBuffer_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[8]_22\(7),
      R => '0'
    );
\SOAMBuffer_reg[8][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[8]_22\(8),
      R => '0'
    );
\SOAMBuffer_reg[8][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[8][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[8]_22\(9),
      R => '0'
    );
\SOAMBuffer_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(0),
      Q => \SOAMBuffer_reg[9]_21\(0),
      R => '0'
    );
\SOAMBuffer_reg[9][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(10),
      Q => \SOAMBuffer_reg[9]_21\(10),
      R => '0'
    );
\SOAMBuffer_reg[9][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(11),
      Q => \SOAMBuffer_reg[9]_21\(11),
      R => '0'
    );
\SOAMBuffer_reg[9][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(12),
      Q => \SOAMBuffer_reg[9]_21\(12),
      R => '0'
    );
\SOAMBuffer_reg[9][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(13),
      Q => \SOAMBuffer_reg[9]_21\(13),
      R => '0'
    );
\SOAMBuffer_reg[9][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(14),
      Q => \SOAMBuffer_reg[9]_21\(14),
      R => '0'
    );
\SOAMBuffer_reg[9][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(15),
      Q => \SOAMBuffer_reg[9]_21\(15),
      R => '0'
    );
\SOAMBuffer_reg[9][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(16),
      Q => \SOAMBuffer_reg[9]_21\(16),
      R => '0'
    );
\SOAMBuffer_reg[9][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(17),
      Q => \SOAMBuffer_reg[9]_21\(17),
      R => '0'
    );
\SOAMBuffer_reg[9][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(18),
      Q => \SOAMBuffer_reg[9]_21\(18),
      R => '0'
    );
\SOAMBuffer_reg[9][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(19),
      Q => \SOAMBuffer_reg[9]_21\(19),
      R => '0'
    );
\SOAMBuffer_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(1),
      Q => \SOAMBuffer_reg[9]_21\(1),
      R => '0'
    );
\SOAMBuffer_reg[9][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(20),
      Q => \SOAMBuffer_reg[9]_21\(20),
      R => '0'
    );
\SOAMBuffer_reg[9][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(21),
      Q => \SOAMBuffer_reg[9]_21\(21),
      R => '0'
    );
\SOAMBuffer_reg[9][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(22),
      Q => \SOAMBuffer_reg[9]_21\(22),
      R => '0'
    );
\SOAMBuffer_reg[9][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(23),
      Q => \SOAMBuffer_reg[9]_21\(23),
      R => '0'
    );
\SOAMBuffer_reg[9][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(24),
      Q => \SOAMBuffer_reg[9]_21\(24),
      R => '0'
    );
\SOAMBuffer_reg[9][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(25),
      Q => \SOAMBuffer_reg[9]_21\(25),
      R => '0'
    );
\SOAMBuffer_reg[9][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(26),
      Q => \SOAMBuffer_reg[9]_21\(26),
      R => '0'
    );
\SOAMBuffer_reg[9][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(27),
      Q => \SOAMBuffer_reg[9]_21\(27),
      R => '0'
    );
\SOAMBuffer_reg[9][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(28),
      Q => \SOAMBuffer_reg[9]_21\(28),
      R => '0'
    );
\SOAMBuffer_reg[9][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(29),
      Q => \SOAMBuffer_reg[9]_21\(29),
      R => '0'
    );
\SOAMBuffer_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(2),
      Q => \SOAMBuffer_reg[9]_21\(2),
      R => '0'
    );
\SOAMBuffer_reg[9][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(30),
      Q => \SOAMBuffer_reg[9]_21\(30),
      R => '0'
    );
\SOAMBuffer_reg[9][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(31),
      Q => \SOAMBuffer_reg[9]_21\(31),
      R => '0'
    );
\SOAMBuffer_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(3),
      Q => \SOAMBuffer_reg[9]_21\(3),
      R => '0'
    );
\SOAMBuffer_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(4),
      Q => \SOAMBuffer_reg[9]_21\(4),
      R => '0'
    );
\SOAMBuffer_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(5),
      Q => \SOAMBuffer_reg[9]_21\(5),
      R => '0'
    );
\SOAMBuffer_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(6),
      Q => \SOAMBuffer_reg[9]_21\(6),
      R => '0'
    );
\SOAMBuffer_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(7),
      Q => \SOAMBuffer_reg[9]_21\(7),
      R => '0'
    );
\SOAMBuffer_reg[9][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(8),
      Q => \SOAMBuffer_reg[9]_21\(8),
      R => '0'
    );
\SOAMBuffer_reg[9][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \SOAMBuffer[9][31]_i_1_n_0\,
      D => SOAMData(9),
      Q => \SOAMBuffer_reg[9]_21\(9),
      R => '0'
    );
SOAMReadEnable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAC8"
    )
        port map (
      I0 => isBufferReady,
      I1 => endLineBit,
      I2 => \SOAMAddressCounter[4]_i_4_n_0\,
      I3 => \^soamreadenable\,
      O => SOAMReadEnable_i_1_n_0
    );
SOAMReadEnable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => SOAMReadEnable_i_1_n_0,
      Q => \^soamreadenable\,
      R => '0'
    );
\ScanLineCounter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => endLineBit,
      I1 => \ScanLineCounter[8]_i_2_n_0\,
      O => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[6]\,
      I1 => \NextScanline[8]_i_3_n_0\,
      I2 => \ScanLineCounter_reg_n_0_[8]\,
      I3 => \ScanLineCounter_reg_n_0_[7]\,
      I4 => \ScanLineCounter_reg_n_0_[5]\,
      I5 => \ScanLineCounter_reg_n_0_[0]\,
      O => \ScanLineCounter[8]_i_2_n_0\
    );
\ScanLineCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[0]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[0]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[1]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[1]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[2]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[2]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[3]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[3]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[4]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[4]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[5]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[5]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[6]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[6]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[7]_i_1_n_0\,
      Q => \ScanLineCounter_reg_n_0_[7]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\ScanLineCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => endLineBit,
      D => \NextScanline[8]_i_2_n_0\,
      Q => \ScanLineCounter_reg_n_0_[8]\,
      R => \ScanLineCounter[8]_i_1_n_0\
    );
\SpriteOffset[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \CurrentSprite_reg_n_0_[14]\,
      O => \SpriteOffset[0]_i_1_n_0\
    );
\SpriteOffset[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \SpriteOffset[13]_i_2_n_0\,
      I1 => \SpriteOffset[13]_i_3_n_0\,
      I2 => \SpriteOffset[13]_i_4_n_0\,
      I3 => \SpriteOffset[13]_i_5_n_0\,
      O => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[18]\,
      I1 => \CurrentSprite_reg_n_0_[19]\,
      I2 => \CurrentSprite_reg_n_0_[16]\,
      I3 => \CurrentSprite_reg_n_0_[17]\,
      I4 => \SpriteOffset[13]_i_6_n_0\,
      O => \SpriteOffset[13]_i_2_n_0\
    );
\SpriteOffset[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[31]\,
      I1 => \CurrentSprite_reg_n_0_[30]\,
      I2 => \CurrentSprite_reg_n_0_[28]\,
      I3 => \CurrentSprite_reg_n_0_[29]\,
      I4 => \SpriteOffset[13]_i_7_n_0\,
      O => \SpriteOffset[13]_i_3_n_0\
    );
\SpriteOffset[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[14]\,
      I1 => \CurrentSprite_reg_n_0_[15]\,
      I2 => \CurrentSprite_reg_n_0_[12]\,
      I3 => \CurrentSprite_reg_n_0_[13]\,
      I4 => \SpriteOffset[13]_i_8_n_0\,
      O => \SpriteOffset[13]_i_4_n_0\
    );
\SpriteOffset[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => SpriteOffset0(12),
      I1 => SpriteOffset0(13),
      I2 => SpriteOffset0(10),
      I3 => SpriteOffset0(11),
      I4 => \SpriteOffset[13]_i_9_n_0\,
      O => \SpriteOffset[13]_i_5_n_0\
    );
\SpriteOffset[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[21]\,
      I1 => \CurrentSprite_reg_n_0_[20]\,
      I2 => \CurrentSprite_reg_n_0_[23]\,
      I3 => \CurrentSprite_reg_n_0_[22]\,
      O => \SpriteOffset[13]_i_6_n_0\
    );
\SpriteOffset[13]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[25]\,
      I1 => \CurrentSprite_reg_n_0_[24]\,
      I2 => \CurrentSprite_reg_n_0_[27]\,
      I3 => \CurrentSprite_reg_n_0_[26]\,
      O => \SpriteOffset[13]_i_7_n_0\
    );
\SpriteOffset[13]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[9]\,
      I1 => \CurrentSprite_reg_n_0_[8]\,
      I2 => \CurrentSprite_reg_n_0_[11]\,
      I3 => \CurrentSprite_reg_n_0_[10]\,
      O => \SpriteOffset[13]_i_8_n_0\
    );
\SpriteOffset[13]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => SpriteOffset0(7),
      I1 => SpriteOffset0(6),
      I2 => SpriteOffset0(9),
      I3 => SpriteOffset0(8),
      O => \SpriteOffset[13]_i_9_n_0\
    );
\SpriteOffset[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[14]\,
      I1 => \xCounter_reg_n_0_[0]\,
      I2 => \CurrentSprite_reg_n_0_[15]\,
      I3 => \xCounter_reg_n_0_[1]\,
      O => C(1)
    );
\SpriteOffset[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0D20F220F2DF0D"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \CurrentSprite_reg_n_0_[14]\,
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \CurrentSprite_reg_n_0_[15]\,
      I4 => \CurrentSprite_reg_n_0_[16]\,
      I5 => \xCounter_reg_n_0_[2]\,
      O => C(2)
    );
\SpriteOffset_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \SpriteOffset[0]_i_1_n_0\,
      Q => SpriteOffset(0),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(10),
      Q => SpriteOffset(10),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(11),
      Q => SpriteOffset(11),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(12),
      Q => SpriteOffset(12),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(13),
      Q => SpriteOffset(13),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => C(1),
      Q => SpriteOffset(1),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => C(2),
      Q => SpriteOffset(2),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => SpriteOffset(3),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(6),
      Q => SpriteOffset(6),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(7),
      Q => SpriteOffset(7),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(8),
      Q => SpriteOffset(8),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteOffset_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteOffset0(9),
      Q => SpriteOffset(9),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteROMAddr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \SpriteROMAddr[15]_i_3_n_0\,
      I1 => SpriteOffset(12),
      I2 => SpriteOffset(13),
      I3 => SpriteOffset(3),
      I4 => \SpriteROMAddr[15]_i_4_n_0\,
      O => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => SpriteOffset(10),
      I1 => SpriteOffset(11),
      I2 => SpriteOffset(8),
      I3 => SpriteOffset(9),
      O => \SpriteROMAddr[15]_i_3_n_0\
    );
\SpriteROMAddr[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => SpriteOffset(7),
      I1 => SpriteOffset(6),
      I2 => SpriteOffset(1),
      I3 => SpriteOffset(0),
      I4 => SpriteOffset(3),
      I5 => SpriteOffset(2),
      O => \SpriteROMAddr[15]_i_4_n_0\
    );
\SpriteROMAddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SpriteOffset(3),
      I1 => SpriteY(2),
      O => \SpriteROMAddr[5]_i_2_n_0\
    );
\SpriteROMAddr[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SpriteOffset(3),
      I1 => SpriteY(1),
      O => \SpriteROMAddr[5]_i_3_n_0\
    );
\SpriteROMAddr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SpriteOffset(3),
      I1 => SpriteY(0),
      O => \SpriteROMAddr[5]_i_4_n_0\
    );
\SpriteROMAddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteOffset(0),
      Q => SpriteROMAddr(0),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(10),
      Q => SpriteROMAddr(10),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(11),
      Q => SpriteROMAddr(11),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(12),
      Q => SpriteROMAddr(12),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(13),
      Q => SpriteROMAddr(13),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SpriteROMAddr_reg[9]_i_1_n_0\,
      CO(3) => \SpriteROMAddr_reg[13]_i_1_n_0\,
      CO(2) => \SpriteROMAddr_reg[13]_i_1_n_1\,
      CO(1) => \SpriteROMAddr_reg[13]_i_1_n_2\,
      CO(0) => \SpriteROMAddr_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SpriteROMAddr0(13 downto 10),
      S(3 downto 0) => SpriteOffset(13 downto 10)
    );
\SpriteROMAddr_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(14),
      Q => SpriteROMAddr(14),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(15),
      Q => SpriteROMAddr(15),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SpriteROMAddr_reg[13]_i_1_n_0\,
      CO(3 downto 1) => \NLW_SpriteROMAddr_reg[15]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \SpriteROMAddr_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_SpriteROMAddr_reg[15]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => SpriteROMAddr0(15 downto 14),
      S(3 downto 2) => B"00",
      S(1) => SpriteOffset(3),
      S(0) => SpriteOffset(3)
    );
\SpriteROMAddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteOffset(1),
      Q => SpriteROMAddr(1),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(2),
      Q => SpriteROMAddr(2),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(3),
      Q => SpriteROMAddr(3),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(4),
      Q => SpriteROMAddr(4),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(5),
      Q => SpriteROMAddr(5),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SpriteROMAddr_reg[5]_i_1_n_0\,
      CO(2) => \SpriteROMAddr_reg[5]_i_1_n_1\,
      CO(1) => \SpriteROMAddr_reg[5]_i_1_n_2\,
      CO(0) => \SpriteROMAddr_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => SpriteOffset(3),
      DI(2) => SpriteOffset(3),
      DI(1) => SpriteOffset(3),
      DI(0) => '0',
      O(3 downto 0) => SpriteROMAddr0(5 downto 2),
      S(3) => \SpriteROMAddr[5]_i_2_n_0\,
      S(2) => \SpriteROMAddr[5]_i_3_n_0\,
      S(1) => \SpriteROMAddr[5]_i_4_n_0\,
      S(0) => SpriteOffset(2)
    );
\SpriteROMAddr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(6),
      Q => SpriteROMAddr(6),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(7),
      Q => SpriteROMAddr(7),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(8),
      Q => SpriteROMAddr(8),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => SpriteROMAddr0(9),
      Q => SpriteROMAddr(9),
      S => \SpriteROMAddr[15]_i_1_n_0\
    );
\SpriteROMAddr_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SpriteROMAddr_reg[5]_i_1_n_0\,
      CO(3) => \SpriteROMAddr_reg[9]_i_1_n_0\,
      CO(2) => \SpriteROMAddr_reg[9]_i_1_n_1\,
      CO(1) => \SpriteROMAddr_reg[9]_i_1_n_2\,
      CO(0) => \SpriteROMAddr_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SpriteROMAddr0(9 downto 6),
      S(3 downto 0) => SpriteOffset(9 downto 6)
    );
\SpriteY[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[0]\,
      I1 => \CurrentSprite_reg_n_0_[23]\,
      O => \SpriteY[0]_i_1_n_0\
    );
\SpriteY[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \CurrentSprite_reg_n_0_[23]\,
      I1 => \ScanLineCounter_reg_n_0_[0]\,
      I2 => \CurrentSprite_reg_n_0_[24]\,
      I3 => \ScanLineCounter_reg_n_0_[1]\,
      O => SpriteY0(1)
    );
\SpriteY[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \ScanLineCounter_reg_n_0_[0]\,
      I1 => \CurrentSprite_reg_n_0_[23]\,
      I2 => \ScanLineCounter_reg_n_0_[1]\,
      I3 => \CurrentSprite_reg_n_0_[24]\,
      I4 => \CurrentSprite_reg_n_0_[25]\,
      I5 => \ScanLineCounter_reg_n_0_[2]\,
      O => SpriteY0(2)
    );
\SpriteY_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \SpriteY[0]_i_1_n_0\,
      Q => SpriteY(0),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteY_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteY0(1),
      Q => SpriteY(1),
      S => \SpriteOffset[13]_i_1_n_0\
    );
\SpriteY_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => SpriteY0(2),
      Q => SpriteY(2),
      S => \SpriteOffset[13]_i_1_n_0\
    );
bufferFull2_reg_srl2: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => bufferFull,
      Q => bufferFull2_reg_srl2_n_0
    );
bufferFull3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => bufferFull2_reg_srl2_n_0,
      Q => bufferFull3,
      R => '0'
    );
endLineBit_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[8]\,
      I1 => \xCounter_reg_n_0_[9]\,
      I2 => \xCounter_reg_n_0_[2]\,
      I3 => \xCounter_reg_n_0_[3]\,
      I4 => endLineBit_i_2_n_0,
      I5 => endLineBit_i_3_n_0,
      O => endLineBit
    );
endLineBit_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \xCounter_reg_n_0_[0]\,
      O => endLineBit_i_2_n_0
    );
endLineBit_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[4]\,
      I3 => \xCounter_reg_n_0_[5]\,
      O => endLineBit_i_3_n_0
    );
endLineBit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => endLineBit,
      Q => isEndLine,
      R => '0'
    );
isBufferReady_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"27"
    )
        port map (
      I0 => isBufferReady,
      I1 => endLineBit,
      I2 => \SOAMAddressCounter[4]_i_4_n_0\,
      O => isBufferReady_i_1_n_0
    );
isBufferReady_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => isBufferReady_i_1_n_0,
      Q => isBufferReady,
      R => '0'
    );
\pixelData1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(0),
      Q => \pixelData1_reg_n_0_[0]\,
      R => '0'
    );
\pixelData1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(1),
      Q => \pixelData1_reg_n_0_[1]\,
      R => '0'
    );
\pixelData1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(2),
      Q => \pixelData1_reg_n_0_[2]\,
      R => '0'
    );
\pixelData1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(3),
      Q => \pixelData1_reg_n_0_[3]\,
      R => '0'
    );
\pixelData1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(4),
      Q => \pixelData1_reg_n_0_[4]\,
      R => '0'
    );
\pixelData1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(5),
      Q => \pixelData1_reg_n_0_[5]\,
      R => '0'
    );
\pixelData1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(6),
      Q => \pixelData1_reg_n_0_[6]\,
      R => '0'
    );
\pixelData1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      D => SpriteROMDatout(7),
      Q => \pixelData1_reg_n_0_[7]\,
      R => '0'
    );
\pixelData4_reg[0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[0]\,
      Q => \pixelData4_reg[0]_srl3_n_0\
    );
\pixelData4_reg[1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[1]\,
      Q => \pixelData4_reg[1]_srl3_n_0\
    );
\pixelData4_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[2]\,
      Q => \pixelData4_reg[2]_srl3_n_0\
    );
\pixelData4_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[3]\,
      Q => \pixelData4_reg[3]_srl3_n_0\
    );
\pixelData4_reg[4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[4]\,
      Q => \pixelData4_reg[4]_srl3_n_0\
    );
\pixelData4_reg[5]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[5]\,
      Q => \pixelData4_reg[5]_srl3_n_0\
    );
\pixelData4_reg[6]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[6]\,
      Q => \pixelData4_reg[6]_srl3_n_0\
    );
\pixelData4_reg[7]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => \pixelData4_reg[7]_srl3_i_1_n_0\,
      CLK => clk,
      D => \pixelData1_reg_n_0_[7]\,
      Q => \pixelData4_reg[7]_srl3_n_0\
    );
\pixelData4_reg[7]_srl3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => bufferFull,
      I1 => bufferFull3,
      O => \pixelData4_reg[7]_srl3_i_1_n_0\
    );
\xCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      O => \xCounter[0]_i_1_n_0\
    );
\xCounter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[1]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(1),
      O => \xCounter[1]_i_1_n_0\
    );
\xCounter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \xCounter_reg_n_0_[1]\,
      O => \xCounter[1]_i_2_n_0\
    );
\xCounter[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \xCounter_reg_n_0_[1]\,
      O => data0(1)
    );
\xCounter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[2]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => \xCounter[2]_i_3_n_0\,
      O => \xCounter[2]_i_1_n_0\
    );
\xCounter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[2]\,
      O => \xCounter[2]_i_2_n_0\
    );
\xCounter[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \xCounter_reg_n_0_[0]\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[2]\,
      O => \xCounter[2]_i_3_n_0\
    );
\xCounter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[3]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(3),
      O => \xCounter[3]_i_1_n_0\
    );
\xCounter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[0]\,
      I3 => \xCounter_reg_n_0_[2]\,
      O => \xCounter[3]_i_2_n_0\
    );
\xCounter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \xCounter_reg_n_0_[1]\,
      I1 => \xCounter_reg_n_0_[0]\,
      I2 => \xCounter_reg_n_0_[2]\,
      I3 => \xCounter_reg_n_0_[3]\,
      O => data0(3)
    );
\xCounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[4]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(4),
      O => \xCounter[4]_i_1_n_0\
    );
\xCounter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \xCounter_reg_n_0_[3]\,
      I2 => \xCounter_reg_n_0_[2]\,
      I3 => \xCounter_reg_n_0_[0]\,
      I4 => \xCounter_reg_n_0_[1]\,
      O => \xCounter[4]_i_2_n_0\
    );
\xCounter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[2]\,
      I1 => \xCounter_reg_n_0_[0]\,
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \xCounter_reg_n_0_[3]\,
      I4 => \xCounter_reg_n_0_[4]\,
      O => data0(4)
    );
\xCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[5]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(5),
      O => \xCounter[5]_i_1_n_0\
    );
\xCounter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \xCounter_reg_n_0_[5]\,
      I2 => \xCounter_reg_n_0_[3]\,
      I3 => \xCounter_reg_n_0_[1]\,
      I4 => \xCounter_reg_n_0_[0]\,
      I5 => \xCounter_reg_n_0_[2]\,
      O => \xCounter[5]_i_2_n_0\
    );
\xCounter[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[3]\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[0]\,
      I3 => \xCounter_reg_n_0_[2]\,
      I4 => \xCounter_reg_n_0_[4]\,
      I5 => \xCounter_reg_n_0_[5]\,
      O => data0(5)
    );
\xCounter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[6]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(6),
      O => \xCounter[6]_i_1_n_0\
    );
\xCounter[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => \xCounter[9]_i_5_n_0\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[2]\,
      I3 => \xCounter_reg_n_0_[0]\,
      I4 => \xCounter[9]_i_6_n_0\,
      I5 => data0(6),
      O => \xCounter[6]_i_2_n_0\
    );
\xCounter[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \xCounter_reg_n_0_[2]\,
      I2 => endLineBit_i_2_n_0,
      I3 => \xCounter_reg_n_0_[3]\,
      I4 => \xCounter_reg_n_0_[5]\,
      I5 => \xCounter_reg_n_0_[6]\,
      O => data0(6)
    );
\xCounter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[7]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(7),
      O => \xCounter[7]_i_1_n_0\
    );
\xCounter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => \xCounter[9]_i_5_n_0\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[2]\,
      I3 => \xCounter_reg_n_0_[0]\,
      I4 => \xCounter[9]_i_6_n_0\,
      I5 => data0(7),
      O => \xCounter[7]_i_2_n_0\
    );
\xCounter[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \xCounter[9]_i_7_n_0\,
      I1 => \xCounter_reg_n_0_[6]\,
      I2 => \xCounter_reg_n_0_[7]\,
      O => data0(7)
    );
\xCounter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[8]_i_2_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(8),
      O => \xCounter[8]_i_1_n_0\
    );
\xCounter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => \xCounter[9]_i_5_n_0\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[2]\,
      I3 => \xCounter_reg_n_0_[0]\,
      I4 => \xCounter[9]_i_6_n_0\,
      I5 => data0(8),
      O => \xCounter[8]_i_2_n_0\
    );
\xCounter[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \xCounter_reg_n_0_[6]\,
      I1 => \xCounter[9]_i_7_n_0\,
      I2 => \xCounter_reg_n_0_[7]\,
      I3 => \xCounter_reg_n_0_[8]\,
      O => data0(8)
    );
\xCounter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => bufferFull,
      I1 => isBufferReady,
      I2 => endLineBit,
      O => xCounter
    );
\xCounter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF40000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[9]\,
      I1 => \xCounter_reg_n_0_[7]\,
      I2 => \xCounter_reg_n_0_[8]\,
      I3 => \xCounter[9]_i_3_n_0\,
      I4 => \xCounter_reg_n_0_[6]\,
      I5 => data0(9),
      O => \xCounter[9]_i_2_n_0\
    );
\xCounter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => \xCounter[9]_i_5_n_0\,
      I1 => \xCounter_reg_n_0_[1]\,
      I2 => \xCounter_reg_n_0_[2]\,
      I3 => \xCounter_reg_n_0_[0]\,
      I4 => \xCounter[9]_i_6_n_0\,
      I5 => data0(9),
      O => \xCounter[9]_i_3_n_0\
    );
\xCounter[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[7]\,
      I1 => \xCounter[9]_i_7_n_0\,
      I2 => \xCounter_reg_n_0_[6]\,
      I3 => \xCounter_reg_n_0_[8]\,
      I4 => \xCounter_reg_n_0_[9]\,
      O => data0(9)
    );
\xCounter[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \xCounter_reg_n_0_[4]\,
      I1 => \xCounter_reg_n_0_[5]\,
      O => \xCounter[9]_i_5_n_0\
    );
\xCounter[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \xCounter_reg_n_0_[4]\,
      I2 => \xCounter_reg_n_0_[3]\,
      O => \xCounter[9]_i_6_n_0\
    );
\xCounter[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \xCounter_reg_n_0_[5]\,
      I1 => \xCounter_reg_n_0_[3]\,
      I2 => \xCounter_reg_n_0_[1]\,
      I3 => \xCounter_reg_n_0_[0]\,
      I4 => \xCounter_reg_n_0_[2]\,
      I5 => \xCounter_reg_n_0_[4]\,
      O => \xCounter[9]_i_7_n_0\
    );
\xCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[0]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[0]\,
      R => '0'
    );
\xCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[1]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[1]\,
      R => '0'
    );
\xCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[2]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[2]\,
      R => '0'
    );
\xCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[3]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[3]\,
      R => '0'
    );
\xCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[4]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[4]\,
      R => '0'
    );
\xCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[5]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[5]\,
      R => '0'
    );
\xCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[6]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[6]\,
      R => '0'
    );
\xCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[7]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[7]\,
      R => '0'
    );
\xCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[8]_i_1_n_0\,
      Q => \xCounter_reg_n_0_[8]\,
      R => '0'
    );
\xCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => xCounter,
      D => \xCounter[9]_i_2_n_0\,
      Q => \xCounter_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_Renderer_0_0 is
  port (
    clk : in STD_LOGIC;
    SOAMData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SpriteROMDatout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bufferFull : in STD_LOGIC;
    bufferClear : in STD_LOGIC;
    SOAMAddress : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SOAMReadEnable : out STD_LOGIC;
    NextScanline : out STD_LOGIC_VECTOR ( 8 downto 0 );
    BufferData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SpriteROMAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    isEndLine : out STD_LOGIC;
    BufferEnableWrite : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BOARD_DESIGN_Renderer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BOARD_DESIGN_Renderer_0_0 : entity is "BOARD_DESIGN_Renderer_0_0,Renderer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BOARD_DESIGN_Renderer_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BOARD_DESIGN_Renderer_0_0 : entity is "Renderer,Vivado 2017.4";
end BOARD_DESIGN_Renderer_0_0;

architecture STRUCTURE of BOARD_DESIGN_Renderer_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk";
begin
U0: entity work.BOARD_DESIGN_Renderer_0_0_Renderer
     port map (
      BufferData(7 downto 0) => BufferData(7 downto 0),
      BufferEnableWrite => BufferEnableWrite,
      NextScanline(8 downto 0) => NextScanline(8 downto 0),
      \SOAMAddress[0]\ => SOAMAddress(0),
      \SOAMAddress[1]\ => SOAMAddress(1),
      \SOAMAddress[2]\ => SOAMAddress(2),
      \SOAMAddress[3]\ => SOAMAddress(3),
      \SOAMAddress[4]\ => SOAMAddress(4),
      SOAMData(31 downto 0) => SOAMData(31 downto 0),
      SOAMReadEnable => SOAMReadEnable,
      SpriteROMAddr(15 downto 0) => SpriteROMAddr(15 downto 0),
      SpriteROMDatout(7 downto 0) => SpriteROMDatout(7 downto 0),
      bufferFull => bufferFull,
      clk => clk,
      isEndLine => isEndLine
    );
end STRUCTURE;
