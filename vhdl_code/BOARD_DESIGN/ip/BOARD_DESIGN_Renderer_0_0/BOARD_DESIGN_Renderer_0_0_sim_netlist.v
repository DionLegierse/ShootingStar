// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 16 14:41:51 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_Renderer_0_0/BOARD_DESIGN_Renderer_0_0_sim_netlist.v
// Design      : BOARD_DESIGN_Renderer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BOARD_DESIGN_Renderer_0_0,Renderer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Renderer,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module BOARD_DESIGN_Renderer_0_0
   (clk,
    SOAMData,
    SpriteROMDatout,
    bufferFull,
    bufferClear,
    SOAMAddress,
    SOAMReadEnable,
    NextScanline,
    BufferData,
    SpriteROMAddr,
    isEndLine,
    BufferEnableWrite);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk" *) input clk;
  input [31:0]SOAMData;
  input [7:0]SpriteROMDatout;
  input bufferFull;
  input bufferClear;
  output [4:0]SOAMAddress;
  output SOAMReadEnable;
  output [8:0]NextScanline;
  output [7:0]BufferData;
  output [15:0]SpriteROMAddr;
  output isEndLine;
  output BufferEnableWrite;

  wire [7:0]BufferData;
  wire BufferEnableWrite;
  wire [8:0]NextScanline;
  wire [4:0]SOAMAddress;
  wire [31:0]SOAMData;
  wire SOAMReadEnable;
  wire [15:0]SpriteROMAddr;
  wire [7:0]SpriteROMDatout;
  wire bufferFull;
  wire clk;
  wire isEndLine;

  BOARD_DESIGN_Renderer_0_0_Renderer U0
       (.BufferData(BufferData),
        .BufferEnableWrite(BufferEnableWrite),
        .NextScanline(NextScanline),
        .\SOAMAddress[0] (SOAMAddress[0]),
        .\SOAMAddress[1] (SOAMAddress[1]),
        .\SOAMAddress[2] (SOAMAddress[2]),
        .\SOAMAddress[3] (SOAMAddress[3]),
        .\SOAMAddress[4] (SOAMAddress[4]),
        .SOAMData(SOAMData),
        .SOAMReadEnable(SOAMReadEnable),
        .SpriteROMAddr(SpriteROMAddr),
        .SpriteROMDatout(SpriteROMDatout),
        .bufferFull(bufferFull),
        .clk(clk),
        .isEndLine(isEndLine));
endmodule

(* ORIG_REF_NAME = "Renderer" *) 
module BOARD_DESIGN_Renderer_0_0_Renderer
   (\SOAMAddress[4] ,
    \SOAMAddress[3] ,
    \SOAMAddress[0] ,
    \SOAMAddress[1] ,
    \SOAMAddress[2] ,
    NextScanline,
    BufferData,
    SpriteROMAddr,
    BufferEnableWrite,
    SOAMReadEnable,
    isEndLine,
    bufferFull,
    clk,
    SpriteROMDatout,
    SOAMData);
  output \SOAMAddress[4] ;
  output \SOAMAddress[3] ;
  output \SOAMAddress[0] ;
  output \SOAMAddress[1] ;
  output \SOAMAddress[2] ;
  output [8:0]NextScanline;
  output [7:0]BufferData;
  output [15:0]SpriteROMAddr;
  output BufferEnableWrite;
  output SOAMReadEnable;
  output isEndLine;
  input bufferFull;
  input clk;
  input [7:0]SpriteROMDatout;
  input [31:0]SOAMData;

  wire [7:0]BufferData;
  wire \BufferData[7]_i_1_n_0 ;
  wire BufferEnableWrite;
  wire [2:1]C;
  wire CurrentSprite;
  wire CurrentSprite210_in;
  wire CurrentSprite213_in;
  wire CurrentSprite216_in;
  wire CurrentSprite219_in;
  wire CurrentSprite222_in;
  wire CurrentSprite225_in;
  wire CurrentSprite228_in;
  wire CurrentSprite22_in;
  wire CurrentSprite231_in;
  wire CurrentSprite234_in;
  wire CurrentSprite237_in;
  wire CurrentSprite240_in;
  wire CurrentSprite243_in;
  wire CurrentSprite246_in;
  wire CurrentSprite249_in;
  wire CurrentSprite24_in;
  wire CurrentSprite252_in;
  wire CurrentSprite255_in;
  wire CurrentSprite258_in;
  wire CurrentSprite261_in;
  wire CurrentSprite264_in;
  wire CurrentSprite267_in;
  wire CurrentSprite270_in;
  wire CurrentSprite273_in;
  wire CurrentSprite276_in;
  wire CurrentSprite279_in;
  wire CurrentSprite27_in;
  wire CurrentSprite282_in;
  wire CurrentSprite285_in;
  wire CurrentSprite288_in;
  wire CurrentSprite291_in;
  wire CurrentSprite294_in;
  wire \CurrentSprite[0]_i_10_n_0 ;
  wire \CurrentSprite[0]_i_11_n_0 ;
  wire \CurrentSprite[0]_i_12_n_0 ;
  wire \CurrentSprite[0]_i_13_n_0 ;
  wire \CurrentSprite[0]_i_14_n_0 ;
  wire \CurrentSprite[0]_i_15_n_0 ;
  wire \CurrentSprite[0]_i_1_n_0 ;
  wire \CurrentSprite[0]_i_2_n_0 ;
  wire \CurrentSprite[0]_i_3_n_0 ;
  wire \CurrentSprite[0]_i_4_n_0 ;
  wire \CurrentSprite[0]_i_5_n_0 ;
  wire \CurrentSprite[0]_i_6_n_0 ;
  wire \CurrentSprite[0]_i_7_n_0 ;
  wire \CurrentSprite[0]_i_8_n_0 ;
  wire \CurrentSprite[0]_i_9_n_0 ;
  wire \CurrentSprite[10]_i_10_n_0 ;
  wire \CurrentSprite[10]_i_11_n_0 ;
  wire \CurrentSprite[10]_i_12_n_0 ;
  wire \CurrentSprite[10]_i_13_n_0 ;
  wire \CurrentSprite[10]_i_14_n_0 ;
  wire \CurrentSprite[10]_i_15_n_0 ;
  wire \CurrentSprite[10]_i_1_n_0 ;
  wire \CurrentSprite[10]_i_2_n_0 ;
  wire \CurrentSprite[10]_i_3_n_0 ;
  wire \CurrentSprite[10]_i_4_n_0 ;
  wire \CurrentSprite[10]_i_5_n_0 ;
  wire \CurrentSprite[10]_i_6_n_0 ;
  wire \CurrentSprite[10]_i_7_n_0 ;
  wire \CurrentSprite[10]_i_8_n_0 ;
  wire \CurrentSprite[10]_i_9_n_0 ;
  wire \CurrentSprite[11]_i_10_n_0 ;
  wire \CurrentSprite[11]_i_11_n_0 ;
  wire \CurrentSprite[11]_i_12_n_0 ;
  wire \CurrentSprite[11]_i_13_n_0 ;
  wire \CurrentSprite[11]_i_14_n_0 ;
  wire \CurrentSprite[11]_i_15_n_0 ;
  wire \CurrentSprite[11]_i_1_n_0 ;
  wire \CurrentSprite[11]_i_2_n_0 ;
  wire \CurrentSprite[11]_i_3_n_0 ;
  wire \CurrentSprite[11]_i_4_n_0 ;
  wire \CurrentSprite[11]_i_5_n_0 ;
  wire \CurrentSprite[11]_i_6_n_0 ;
  wire \CurrentSprite[11]_i_7_n_0 ;
  wire \CurrentSprite[11]_i_8_n_0 ;
  wire \CurrentSprite[11]_i_9_n_0 ;
  wire \CurrentSprite[12]_i_10_n_0 ;
  wire \CurrentSprite[12]_i_11_n_0 ;
  wire \CurrentSprite[12]_i_12_n_0 ;
  wire \CurrentSprite[12]_i_13_n_0 ;
  wire \CurrentSprite[12]_i_14_n_0 ;
  wire \CurrentSprite[12]_i_15_n_0 ;
  wire \CurrentSprite[12]_i_1_n_0 ;
  wire \CurrentSprite[12]_i_2_n_0 ;
  wire \CurrentSprite[12]_i_3_n_0 ;
  wire \CurrentSprite[12]_i_4_n_0 ;
  wire \CurrentSprite[12]_i_5_n_0 ;
  wire \CurrentSprite[12]_i_6_n_0 ;
  wire \CurrentSprite[12]_i_7_n_0 ;
  wire \CurrentSprite[12]_i_8_n_0 ;
  wire \CurrentSprite[12]_i_9_n_0 ;
  wire \CurrentSprite[13]_i_10_n_0 ;
  wire \CurrentSprite[13]_i_11_n_0 ;
  wire \CurrentSprite[13]_i_12_n_0 ;
  wire \CurrentSprite[13]_i_13_n_0 ;
  wire \CurrentSprite[13]_i_14_n_0 ;
  wire \CurrentSprite[13]_i_15_n_0 ;
  wire \CurrentSprite[13]_i_1_n_0 ;
  wire \CurrentSprite[13]_i_2_n_0 ;
  wire \CurrentSprite[13]_i_3_n_0 ;
  wire \CurrentSprite[13]_i_4_n_0 ;
  wire \CurrentSprite[13]_i_5_n_0 ;
  wire \CurrentSprite[13]_i_6_n_0 ;
  wire \CurrentSprite[13]_i_7_n_0 ;
  wire \CurrentSprite[13]_i_8_n_0 ;
  wire \CurrentSprite[13]_i_9_n_0 ;
  wire \CurrentSprite[14]_i_10_n_0 ;
  wire \CurrentSprite[14]_i_11_n_0 ;
  wire \CurrentSprite[14]_i_12_n_0 ;
  wire \CurrentSprite[14]_i_13_n_0 ;
  wire \CurrentSprite[14]_i_14_n_0 ;
  wire \CurrentSprite[14]_i_15_n_0 ;
  wire \CurrentSprite[14]_i_1_n_0 ;
  wire \CurrentSprite[14]_i_2_n_0 ;
  wire \CurrentSprite[14]_i_3_n_0 ;
  wire \CurrentSprite[14]_i_4_n_0 ;
  wire \CurrentSprite[14]_i_5_n_0 ;
  wire \CurrentSprite[14]_i_6_n_0 ;
  wire \CurrentSprite[14]_i_7_n_0 ;
  wire \CurrentSprite[14]_i_8_n_0 ;
  wire \CurrentSprite[14]_i_9_n_0 ;
  wire \CurrentSprite[15]_i_10_n_0 ;
  wire \CurrentSprite[15]_i_11_n_0 ;
  wire \CurrentSprite[15]_i_12_n_0 ;
  wire \CurrentSprite[15]_i_13_n_0 ;
  wire \CurrentSprite[15]_i_14_n_0 ;
  wire \CurrentSprite[15]_i_15_n_0 ;
  wire \CurrentSprite[15]_i_1_n_0 ;
  wire \CurrentSprite[15]_i_2_n_0 ;
  wire \CurrentSprite[15]_i_3_n_0 ;
  wire \CurrentSprite[15]_i_4_n_0 ;
  wire \CurrentSprite[15]_i_5_n_0 ;
  wire \CurrentSprite[15]_i_6_n_0 ;
  wire \CurrentSprite[15]_i_7_n_0 ;
  wire \CurrentSprite[15]_i_8_n_0 ;
  wire \CurrentSprite[15]_i_9_n_0 ;
  wire \CurrentSprite[16]_i_10_n_0 ;
  wire \CurrentSprite[16]_i_11_n_0 ;
  wire \CurrentSprite[16]_i_12_n_0 ;
  wire \CurrentSprite[16]_i_13_n_0 ;
  wire \CurrentSprite[16]_i_14_n_0 ;
  wire \CurrentSprite[16]_i_15_n_0 ;
  wire \CurrentSprite[16]_i_1_n_0 ;
  wire \CurrentSprite[16]_i_2_n_0 ;
  wire \CurrentSprite[16]_i_3_n_0 ;
  wire \CurrentSprite[16]_i_4_n_0 ;
  wire \CurrentSprite[16]_i_5_n_0 ;
  wire \CurrentSprite[16]_i_6_n_0 ;
  wire \CurrentSprite[16]_i_7_n_0 ;
  wire \CurrentSprite[16]_i_8_n_0 ;
  wire \CurrentSprite[16]_i_9_n_0 ;
  wire \CurrentSprite[17]_i_10_n_0 ;
  wire \CurrentSprite[17]_i_11_n_0 ;
  wire \CurrentSprite[17]_i_12_n_0 ;
  wire \CurrentSprite[17]_i_13_n_0 ;
  wire \CurrentSprite[17]_i_14_n_0 ;
  wire \CurrentSprite[17]_i_15_n_0 ;
  wire \CurrentSprite[17]_i_1_n_0 ;
  wire \CurrentSprite[17]_i_2_n_0 ;
  wire \CurrentSprite[17]_i_3_n_0 ;
  wire \CurrentSprite[17]_i_4_n_0 ;
  wire \CurrentSprite[17]_i_5_n_0 ;
  wire \CurrentSprite[17]_i_6_n_0 ;
  wire \CurrentSprite[17]_i_7_n_0 ;
  wire \CurrentSprite[17]_i_8_n_0 ;
  wire \CurrentSprite[17]_i_9_n_0 ;
  wire \CurrentSprite[18]_i_10_n_0 ;
  wire \CurrentSprite[18]_i_11_n_0 ;
  wire \CurrentSprite[18]_i_12_n_0 ;
  wire \CurrentSprite[18]_i_13_n_0 ;
  wire \CurrentSprite[18]_i_14_n_0 ;
  wire \CurrentSprite[18]_i_15_n_0 ;
  wire \CurrentSprite[18]_i_1_n_0 ;
  wire \CurrentSprite[18]_i_2_n_0 ;
  wire \CurrentSprite[18]_i_3_n_0 ;
  wire \CurrentSprite[18]_i_4_n_0 ;
  wire \CurrentSprite[18]_i_5_n_0 ;
  wire \CurrentSprite[18]_i_6_n_0 ;
  wire \CurrentSprite[18]_i_7_n_0 ;
  wire \CurrentSprite[18]_i_8_n_0 ;
  wire \CurrentSprite[18]_i_9_n_0 ;
  wire \CurrentSprite[19]_i_10_n_0 ;
  wire \CurrentSprite[19]_i_11_n_0 ;
  wire \CurrentSprite[19]_i_12_n_0 ;
  wire \CurrentSprite[19]_i_13_n_0 ;
  wire \CurrentSprite[19]_i_14_n_0 ;
  wire \CurrentSprite[19]_i_15_n_0 ;
  wire \CurrentSprite[19]_i_1_n_0 ;
  wire \CurrentSprite[19]_i_2_n_0 ;
  wire \CurrentSprite[19]_i_3_n_0 ;
  wire \CurrentSprite[19]_i_4_n_0 ;
  wire \CurrentSprite[19]_i_5_n_0 ;
  wire \CurrentSprite[19]_i_6_n_0 ;
  wire \CurrentSprite[19]_i_7_n_0 ;
  wire \CurrentSprite[19]_i_8_n_0 ;
  wire \CurrentSprite[19]_i_9_n_0 ;
  wire \CurrentSprite[1]_i_10_n_0 ;
  wire \CurrentSprite[1]_i_11_n_0 ;
  wire \CurrentSprite[1]_i_12_n_0 ;
  wire \CurrentSprite[1]_i_13_n_0 ;
  wire \CurrentSprite[1]_i_14_n_0 ;
  wire \CurrentSprite[1]_i_15_n_0 ;
  wire \CurrentSprite[1]_i_1_n_0 ;
  wire \CurrentSprite[1]_i_2_n_0 ;
  wire \CurrentSprite[1]_i_3_n_0 ;
  wire \CurrentSprite[1]_i_4_n_0 ;
  wire \CurrentSprite[1]_i_5_n_0 ;
  wire \CurrentSprite[1]_i_6_n_0 ;
  wire \CurrentSprite[1]_i_7_n_0 ;
  wire \CurrentSprite[1]_i_8_n_0 ;
  wire \CurrentSprite[1]_i_9_n_0 ;
  wire \CurrentSprite[20]_i_10_n_0 ;
  wire \CurrentSprite[20]_i_11_n_0 ;
  wire \CurrentSprite[20]_i_12_n_0 ;
  wire \CurrentSprite[20]_i_13_n_0 ;
  wire \CurrentSprite[20]_i_14_n_0 ;
  wire \CurrentSprite[20]_i_15_n_0 ;
  wire \CurrentSprite[20]_i_1_n_0 ;
  wire \CurrentSprite[20]_i_2_n_0 ;
  wire \CurrentSprite[20]_i_3_n_0 ;
  wire \CurrentSprite[20]_i_4_n_0 ;
  wire \CurrentSprite[20]_i_5_n_0 ;
  wire \CurrentSprite[20]_i_6_n_0 ;
  wire \CurrentSprite[20]_i_7_n_0 ;
  wire \CurrentSprite[20]_i_8_n_0 ;
  wire \CurrentSprite[20]_i_9_n_0 ;
  wire \CurrentSprite[21]_i_10_n_0 ;
  wire \CurrentSprite[21]_i_11_n_0 ;
  wire \CurrentSprite[21]_i_12_n_0 ;
  wire \CurrentSprite[21]_i_13_n_0 ;
  wire \CurrentSprite[21]_i_14_n_0 ;
  wire \CurrentSprite[21]_i_15_n_0 ;
  wire \CurrentSprite[21]_i_1_n_0 ;
  wire \CurrentSprite[21]_i_2_n_0 ;
  wire \CurrentSprite[21]_i_3_n_0 ;
  wire \CurrentSprite[21]_i_4_n_0 ;
  wire \CurrentSprite[21]_i_5_n_0 ;
  wire \CurrentSprite[21]_i_6_n_0 ;
  wire \CurrentSprite[21]_i_7_n_0 ;
  wire \CurrentSprite[21]_i_8_n_0 ;
  wire \CurrentSprite[21]_i_9_n_0 ;
  wire \CurrentSprite[22]_i_10_n_0 ;
  wire \CurrentSprite[22]_i_11_n_0 ;
  wire \CurrentSprite[22]_i_12_n_0 ;
  wire \CurrentSprite[22]_i_13_n_0 ;
  wire \CurrentSprite[22]_i_14_n_0 ;
  wire \CurrentSprite[22]_i_15_n_0 ;
  wire \CurrentSprite[22]_i_1_n_0 ;
  wire \CurrentSprite[22]_i_2_n_0 ;
  wire \CurrentSprite[22]_i_3_n_0 ;
  wire \CurrentSprite[22]_i_4_n_0 ;
  wire \CurrentSprite[22]_i_5_n_0 ;
  wire \CurrentSprite[22]_i_6_n_0 ;
  wire \CurrentSprite[22]_i_7_n_0 ;
  wire \CurrentSprite[22]_i_8_n_0 ;
  wire \CurrentSprite[22]_i_9_n_0 ;
  wire \CurrentSprite[23]_i_10_n_0 ;
  wire \CurrentSprite[23]_i_11_n_0 ;
  wire \CurrentSprite[23]_i_12_n_0 ;
  wire \CurrentSprite[23]_i_13_n_0 ;
  wire \CurrentSprite[23]_i_14_n_0 ;
  wire \CurrentSprite[23]_i_15_n_0 ;
  wire \CurrentSprite[23]_i_1_n_0 ;
  wire \CurrentSprite[23]_i_2_n_0 ;
  wire \CurrentSprite[23]_i_3_n_0 ;
  wire \CurrentSprite[23]_i_4_n_0 ;
  wire \CurrentSprite[23]_i_5_n_0 ;
  wire \CurrentSprite[23]_i_6_n_0 ;
  wire \CurrentSprite[23]_i_7_n_0 ;
  wire \CurrentSprite[23]_i_8_n_0 ;
  wire \CurrentSprite[23]_i_9_n_0 ;
  wire \CurrentSprite[24]_i_10_n_0 ;
  wire \CurrentSprite[24]_i_11_n_0 ;
  wire \CurrentSprite[24]_i_12_n_0 ;
  wire \CurrentSprite[24]_i_13_n_0 ;
  wire \CurrentSprite[24]_i_14_n_0 ;
  wire \CurrentSprite[24]_i_15_n_0 ;
  wire \CurrentSprite[24]_i_1_n_0 ;
  wire \CurrentSprite[24]_i_2_n_0 ;
  wire \CurrentSprite[24]_i_3_n_0 ;
  wire \CurrentSprite[24]_i_4_n_0 ;
  wire \CurrentSprite[24]_i_5_n_0 ;
  wire \CurrentSprite[24]_i_6_n_0 ;
  wire \CurrentSprite[24]_i_7_n_0 ;
  wire \CurrentSprite[24]_i_8_n_0 ;
  wire \CurrentSprite[24]_i_9_n_0 ;
  wire \CurrentSprite[25]_i_10_n_0 ;
  wire \CurrentSprite[25]_i_11_n_0 ;
  wire \CurrentSprite[25]_i_12_n_0 ;
  wire \CurrentSprite[25]_i_13_n_0 ;
  wire \CurrentSprite[25]_i_14_n_0 ;
  wire \CurrentSprite[25]_i_15_n_0 ;
  wire \CurrentSprite[25]_i_1_n_0 ;
  wire \CurrentSprite[25]_i_2_n_0 ;
  wire \CurrentSprite[25]_i_3_n_0 ;
  wire \CurrentSprite[25]_i_4_n_0 ;
  wire \CurrentSprite[25]_i_5_n_0 ;
  wire \CurrentSprite[25]_i_6_n_0 ;
  wire \CurrentSprite[25]_i_7_n_0 ;
  wire \CurrentSprite[25]_i_8_n_0 ;
  wire \CurrentSprite[25]_i_9_n_0 ;
  wire \CurrentSprite[26]_i_10_n_0 ;
  wire \CurrentSprite[26]_i_11_n_0 ;
  wire \CurrentSprite[26]_i_12_n_0 ;
  wire \CurrentSprite[26]_i_13_n_0 ;
  wire \CurrentSprite[26]_i_14_n_0 ;
  wire \CurrentSprite[26]_i_15_n_0 ;
  wire \CurrentSprite[26]_i_1_n_0 ;
  wire \CurrentSprite[26]_i_2_n_0 ;
  wire \CurrentSprite[26]_i_3_n_0 ;
  wire \CurrentSprite[26]_i_4_n_0 ;
  wire \CurrentSprite[26]_i_5_n_0 ;
  wire \CurrentSprite[26]_i_6_n_0 ;
  wire \CurrentSprite[26]_i_7_n_0 ;
  wire \CurrentSprite[26]_i_8_n_0 ;
  wire \CurrentSprite[26]_i_9_n_0 ;
  wire \CurrentSprite[27]_i_10_n_0 ;
  wire \CurrentSprite[27]_i_11_n_0 ;
  wire \CurrentSprite[27]_i_12_n_0 ;
  wire \CurrentSprite[27]_i_13_n_0 ;
  wire \CurrentSprite[27]_i_14_n_0 ;
  wire \CurrentSprite[27]_i_15_n_0 ;
  wire \CurrentSprite[27]_i_1_n_0 ;
  wire \CurrentSprite[27]_i_2_n_0 ;
  wire \CurrentSprite[27]_i_3_n_0 ;
  wire \CurrentSprite[27]_i_4_n_0 ;
  wire \CurrentSprite[27]_i_5_n_0 ;
  wire \CurrentSprite[27]_i_6_n_0 ;
  wire \CurrentSprite[27]_i_7_n_0 ;
  wire \CurrentSprite[27]_i_8_n_0 ;
  wire \CurrentSprite[27]_i_9_n_0 ;
  wire \CurrentSprite[28]_i_10_n_0 ;
  wire \CurrentSprite[28]_i_11_n_0 ;
  wire \CurrentSprite[28]_i_12_n_0 ;
  wire \CurrentSprite[28]_i_13_n_0 ;
  wire \CurrentSprite[28]_i_14_n_0 ;
  wire \CurrentSprite[28]_i_15_n_0 ;
  wire \CurrentSprite[28]_i_1_n_0 ;
  wire \CurrentSprite[28]_i_2_n_0 ;
  wire \CurrentSprite[28]_i_3_n_0 ;
  wire \CurrentSprite[28]_i_4_n_0 ;
  wire \CurrentSprite[28]_i_5_n_0 ;
  wire \CurrentSprite[28]_i_6_n_0 ;
  wire \CurrentSprite[28]_i_7_n_0 ;
  wire \CurrentSprite[28]_i_8_n_0 ;
  wire \CurrentSprite[28]_i_9_n_0 ;
  wire \CurrentSprite[29]_i_10_n_0 ;
  wire \CurrentSprite[29]_i_11_n_0 ;
  wire \CurrentSprite[29]_i_12_n_0 ;
  wire \CurrentSprite[29]_i_13_n_0 ;
  wire \CurrentSprite[29]_i_14_n_0 ;
  wire \CurrentSprite[29]_i_15_n_0 ;
  wire \CurrentSprite[29]_i_1_n_0 ;
  wire \CurrentSprite[29]_i_2_n_0 ;
  wire \CurrentSprite[29]_i_3_n_0 ;
  wire \CurrentSprite[29]_i_4_n_0 ;
  wire \CurrentSprite[29]_i_5_n_0 ;
  wire \CurrentSprite[29]_i_6_n_0 ;
  wire \CurrentSprite[29]_i_7_n_0 ;
  wire \CurrentSprite[29]_i_8_n_0 ;
  wire \CurrentSprite[29]_i_9_n_0 ;
  wire \CurrentSprite[2]_i_10_n_0 ;
  wire \CurrentSprite[2]_i_11_n_0 ;
  wire \CurrentSprite[2]_i_12_n_0 ;
  wire \CurrentSprite[2]_i_13_n_0 ;
  wire \CurrentSprite[2]_i_14_n_0 ;
  wire \CurrentSprite[2]_i_15_n_0 ;
  wire \CurrentSprite[2]_i_1_n_0 ;
  wire \CurrentSprite[2]_i_2_n_0 ;
  wire \CurrentSprite[2]_i_3_n_0 ;
  wire \CurrentSprite[2]_i_4_n_0 ;
  wire \CurrentSprite[2]_i_5_n_0 ;
  wire \CurrentSprite[2]_i_6_n_0 ;
  wire \CurrentSprite[2]_i_7_n_0 ;
  wire \CurrentSprite[2]_i_8_n_0 ;
  wire \CurrentSprite[2]_i_9_n_0 ;
  wire \CurrentSprite[30]_i_10_n_0 ;
  wire \CurrentSprite[30]_i_11_n_0 ;
  wire \CurrentSprite[30]_i_12_n_0 ;
  wire \CurrentSprite[30]_i_13_n_0 ;
  wire \CurrentSprite[30]_i_14_n_0 ;
  wire \CurrentSprite[30]_i_15_n_0 ;
  wire \CurrentSprite[30]_i_1_n_0 ;
  wire \CurrentSprite[30]_i_2_n_0 ;
  wire \CurrentSprite[30]_i_3_n_0 ;
  wire \CurrentSprite[30]_i_4_n_0 ;
  wire \CurrentSprite[30]_i_5_n_0 ;
  wire \CurrentSprite[30]_i_6_n_0 ;
  wire \CurrentSprite[30]_i_7_n_0 ;
  wire \CurrentSprite[30]_i_8_n_0 ;
  wire \CurrentSprite[30]_i_9_n_0 ;
  wire \CurrentSprite[31]_i_100_n_0 ;
  wire \CurrentSprite[31]_i_102_n_0 ;
  wire \CurrentSprite[31]_i_103_n_0 ;
  wire \CurrentSprite[31]_i_105_n_0 ;
  wire \CurrentSprite[31]_i_106_n_0 ;
  wire \CurrentSprite[31]_i_108_n_0 ;
  wire \CurrentSprite[31]_i_109_n_0 ;
  wire \CurrentSprite[31]_i_10_n_0 ;
  wire \CurrentSprite[31]_i_115_n_0 ;
  wire \CurrentSprite[31]_i_116_n_0 ;
  wire \CurrentSprite[31]_i_118_n_0 ;
  wire \CurrentSprite[31]_i_119_n_0 ;
  wire \CurrentSprite[31]_i_11_n_0 ;
  wire \CurrentSprite[31]_i_124_n_0 ;
  wire \CurrentSprite[31]_i_127_n_0 ;
  wire \CurrentSprite[31]_i_12_n_0 ;
  wire \CurrentSprite[31]_i_137_n_0 ;
  wire \CurrentSprite[31]_i_138_n_0 ;
  wire \CurrentSprite[31]_i_13_n_0 ;
  wire \CurrentSprite[31]_i_140_n_0 ;
  wire \CurrentSprite[31]_i_141_n_0 ;
  wire \CurrentSprite[31]_i_142_n_0 ;
  wire \CurrentSprite[31]_i_147_n_0 ;
  wire \CurrentSprite[31]_i_148_n_0 ;
  wire \CurrentSprite[31]_i_149_n_0 ;
  wire \CurrentSprite[31]_i_154_n_0 ;
  wire \CurrentSprite[31]_i_155_n_0 ;
  wire \CurrentSprite[31]_i_160_n_0 ;
  wire \CurrentSprite[31]_i_161_n_0 ;
  wire \CurrentSprite[31]_i_166_n_0 ;
  wire \CurrentSprite[31]_i_167_n_0 ;
  wire \CurrentSprite[31]_i_168_n_0 ;
  wire \CurrentSprite[31]_i_169_n_0 ;
  wire \CurrentSprite[31]_i_16_n_0 ;
  wire \CurrentSprite[31]_i_171_n_0 ;
  wire \CurrentSprite[31]_i_172_n_0 ;
  wire \CurrentSprite[31]_i_174_n_0 ;
  wire \CurrentSprite[31]_i_175_n_0 ;
  wire \CurrentSprite[31]_i_176_n_0 ;
  wire \CurrentSprite[31]_i_178_n_0 ;
  wire \CurrentSprite[31]_i_179_n_0 ;
  wire \CurrentSprite[31]_i_17_n_0 ;
  wire \CurrentSprite[31]_i_180_n_0 ;
  wire \CurrentSprite[31]_i_181_n_0 ;
  wire \CurrentSprite[31]_i_182_n_0 ;
  wire \CurrentSprite[31]_i_183_n_0 ;
  wire \CurrentSprite[31]_i_184_n_0 ;
  wire \CurrentSprite[31]_i_185_n_0 ;
  wire \CurrentSprite[31]_i_186_n_0 ;
  wire \CurrentSprite[31]_i_187_n_0 ;
  wire \CurrentSprite[31]_i_188_n_0 ;
  wire \CurrentSprite[31]_i_189_n_0 ;
  wire \CurrentSprite[31]_i_18_n_0 ;
  wire \CurrentSprite[31]_i_190_n_0 ;
  wire \CurrentSprite[31]_i_192_n_0 ;
  wire \CurrentSprite[31]_i_193_n_0 ;
  wire \CurrentSprite[31]_i_195_n_0 ;
  wire \CurrentSprite[31]_i_196_n_0 ;
  wire \CurrentSprite[31]_i_198_n_0 ;
  wire \CurrentSprite[31]_i_199_n_0 ;
  wire \CurrentSprite[31]_i_19_n_0 ;
  wire \CurrentSprite[31]_i_201_n_0 ;
  wire \CurrentSprite[31]_i_202_n_0 ;
  wire \CurrentSprite[31]_i_204_n_0 ;
  wire \CurrentSprite[31]_i_205_n_0 ;
  wire \CurrentSprite[31]_i_207_n_0 ;
  wire \CurrentSprite[31]_i_208_n_0 ;
  wire \CurrentSprite[31]_i_20_n_0 ;
  wire \CurrentSprite[31]_i_210_n_0 ;
  wire \CurrentSprite[31]_i_211_n_0 ;
  wire \CurrentSprite[31]_i_213_n_0 ;
  wire \CurrentSprite[31]_i_214_n_0 ;
  wire \CurrentSprite[31]_i_216_n_0 ;
  wire \CurrentSprite[31]_i_217_n_0 ;
  wire \CurrentSprite[31]_i_219_n_0 ;
  wire \CurrentSprite[31]_i_21_n_0 ;
  wire \CurrentSprite[31]_i_220_n_0 ;
  wire \CurrentSprite[31]_i_222_n_0 ;
  wire \CurrentSprite[31]_i_223_n_0 ;
  wire \CurrentSprite[31]_i_225_n_0 ;
  wire \CurrentSprite[31]_i_226_n_0 ;
  wire \CurrentSprite[31]_i_227_n_0 ;
  wire \CurrentSprite[31]_i_228_n_0 ;
  wire \CurrentSprite[31]_i_229_n_0 ;
  wire \CurrentSprite[31]_i_230_n_0 ;
  wire \CurrentSprite[31]_i_231_n_0 ;
  wire \CurrentSprite[31]_i_232_n_0 ;
  wire \CurrentSprite[31]_i_233_n_0 ;
  wire \CurrentSprite[31]_i_234_n_0 ;
  wire \CurrentSprite[31]_i_236_n_0 ;
  wire \CurrentSprite[31]_i_237_n_0 ;
  wire \CurrentSprite[31]_i_238_n_0 ;
  wire \CurrentSprite[31]_i_239_n_0 ;
  wire \CurrentSprite[31]_i_240_n_0 ;
  wire \CurrentSprite[31]_i_241_n_0 ;
  wire \CurrentSprite[31]_i_242_n_0 ;
  wire \CurrentSprite[31]_i_243_n_0 ;
  wire \CurrentSprite[31]_i_244_n_0 ;
  wire \CurrentSprite[31]_i_245_n_0 ;
  wire \CurrentSprite[31]_i_246_n_0 ;
  wire \CurrentSprite[31]_i_247_n_0 ;
  wire \CurrentSprite[31]_i_248_n_0 ;
  wire \CurrentSprite[31]_i_250_n_0 ;
  wire \CurrentSprite[31]_i_251_n_0 ;
  wire \CurrentSprite[31]_i_252_n_0 ;
  wire \CurrentSprite[31]_i_253_n_0 ;
  wire \CurrentSprite[31]_i_254_n_0 ;
  wire \CurrentSprite[31]_i_256_n_0 ;
  wire \CurrentSprite[31]_i_257_n_0 ;
  wire \CurrentSprite[31]_i_259_n_0 ;
  wire \CurrentSprite[31]_i_260_n_0 ;
  wire \CurrentSprite[31]_i_261_n_0 ;
  wire \CurrentSprite[31]_i_262_n_0 ;
  wire \CurrentSprite[31]_i_263_n_0 ;
  wire \CurrentSprite[31]_i_264_n_0 ;
  wire \CurrentSprite[31]_i_265_n_0 ;
  wire \CurrentSprite[31]_i_266_n_0 ;
  wire \CurrentSprite[31]_i_267_n_0 ;
  wire \CurrentSprite[31]_i_268_n_0 ;
  wire \CurrentSprite[31]_i_26_n_0 ;
  wire \CurrentSprite[31]_i_270_n_0 ;
  wire \CurrentSprite[31]_i_271_n_0 ;
  wire \CurrentSprite[31]_i_272_n_0 ;
  wire \CurrentSprite[31]_i_273_n_0 ;
  wire \CurrentSprite[31]_i_274_n_0 ;
  wire \CurrentSprite[31]_i_275_n_0 ;
  wire \CurrentSprite[31]_i_276_n_0 ;
  wire \CurrentSprite[31]_i_277_n_0 ;
  wire \CurrentSprite[31]_i_278_n_0 ;
  wire \CurrentSprite[31]_i_279_n_0 ;
  wire \CurrentSprite[31]_i_280_n_0 ;
  wire \CurrentSprite[31]_i_281_n_0 ;
  wire \CurrentSprite[31]_i_282_n_0 ;
  wire \CurrentSprite[31]_i_284_n_0 ;
  wire \CurrentSprite[31]_i_285_n_0 ;
  wire \CurrentSprite[31]_i_286_n_0 ;
  wire \CurrentSprite[31]_i_287_n_0 ;
  wire \CurrentSprite[31]_i_288_n_0 ;
  wire \CurrentSprite[31]_i_290_n_0 ;
  wire \CurrentSprite[31]_i_291_n_0 ;
  wire \CurrentSprite[31]_i_293_n_0 ;
  wire \CurrentSprite[31]_i_294_n_0 ;
  wire \CurrentSprite[31]_i_296_n_0 ;
  wire \CurrentSprite[31]_i_297_n_0 ;
  wire \CurrentSprite[31]_i_299_n_0 ;
  wire \CurrentSprite[31]_i_2_n_0 ;
  wire \CurrentSprite[31]_i_300_n_0 ;
  wire \CurrentSprite[31]_i_302_n_0 ;
  wire \CurrentSprite[31]_i_303_n_0 ;
  wire \CurrentSprite[31]_i_304_n_0 ;
  wire \CurrentSprite[31]_i_305_n_0 ;
  wire \CurrentSprite[31]_i_306_n_0 ;
  wire \CurrentSprite[31]_i_307_n_0 ;
  wire \CurrentSprite[31]_i_308_n_0 ;
  wire \CurrentSprite[31]_i_309_n_0 ;
  wire \CurrentSprite[31]_i_310_n_0 ;
  wire \CurrentSprite[31]_i_311_n_0 ;
  wire \CurrentSprite[31]_i_312_n_0 ;
  wire \CurrentSprite[31]_i_313_n_0 ;
  wire \CurrentSprite[31]_i_314_n_0 ;
  wire \CurrentSprite[31]_i_316_n_0 ;
  wire \CurrentSprite[31]_i_317_n_0 ;
  wire \CurrentSprite[31]_i_319_n_0 ;
  wire \CurrentSprite[31]_i_31_n_0 ;
  wire \CurrentSprite[31]_i_320_n_0 ;
  wire \CurrentSprite[31]_i_322_n_0 ;
  wire \CurrentSprite[31]_i_323_n_0 ;
  wire \CurrentSprite[31]_i_325_n_0 ;
  wire \CurrentSprite[31]_i_326_n_0 ;
  wire \CurrentSprite[31]_i_328_n_0 ;
  wire \CurrentSprite[31]_i_329_n_0 ;
  wire \CurrentSprite[31]_i_32_n_0 ;
  wire \CurrentSprite[31]_i_331_n_0 ;
  wire \CurrentSprite[31]_i_332_n_0 ;
  wire \CurrentSprite[31]_i_334_n_0 ;
  wire \CurrentSprite[31]_i_335_n_0 ;
  wire \CurrentSprite[31]_i_337_n_0 ;
  wire \CurrentSprite[31]_i_338_n_0 ;
  wire \CurrentSprite[31]_i_340_n_0 ;
  wire \CurrentSprite[31]_i_341_n_0 ;
  wire \CurrentSprite[31]_i_343_n_0 ;
  wire \CurrentSprite[31]_i_344_n_0 ;
  wire \CurrentSprite[31]_i_346_n_0 ;
  wire \CurrentSprite[31]_i_347_n_0 ;
  wire \CurrentSprite[31]_i_349_n_0 ;
  wire \CurrentSprite[31]_i_350_n_0 ;
  wire \CurrentSprite[31]_i_352_n_0 ;
  wire \CurrentSprite[31]_i_353_n_0 ;
  wire \CurrentSprite[31]_i_355_n_0 ;
  wire \CurrentSprite[31]_i_356_n_0 ;
  wire \CurrentSprite[31]_i_358_n_0 ;
  wire \CurrentSprite[31]_i_359_n_0 ;
  wire \CurrentSprite[31]_i_35_n_0 ;
  wire \CurrentSprite[31]_i_360_n_0 ;
  wire \CurrentSprite[31]_i_361_n_0 ;
  wire \CurrentSprite[31]_i_362_n_0 ;
  wire \CurrentSprite[31]_i_363_n_0 ;
  wire \CurrentSprite[31]_i_364_n_0 ;
  wire \CurrentSprite[31]_i_365_n_0 ;
  wire \CurrentSprite[31]_i_366_n_0 ;
  wire \CurrentSprite[31]_i_367_n_0 ;
  wire \CurrentSprite[31]_i_368_n_0 ;
  wire \CurrentSprite[31]_i_369_n_0 ;
  wire \CurrentSprite[31]_i_36_n_0 ;
  wire \CurrentSprite[31]_i_370_n_0 ;
  wire \CurrentSprite[31]_i_372_n_0 ;
  wire \CurrentSprite[31]_i_373_n_0 ;
  wire \CurrentSprite[31]_i_375_n_0 ;
  wire \CurrentSprite[31]_i_376_n_0 ;
  wire \CurrentSprite[31]_i_378_n_0 ;
  wire \CurrentSprite[31]_i_379_n_0 ;
  wire \CurrentSprite[31]_i_37_n_0 ;
  wire \CurrentSprite[31]_i_381_n_0 ;
  wire \CurrentSprite[31]_i_382_n_0 ;
  wire \CurrentSprite[31]_i_384_n_0 ;
  wire \CurrentSprite[31]_i_385_n_0 ;
  wire \CurrentSprite[31]_i_387_n_0 ;
  wire \CurrentSprite[31]_i_388_n_0 ;
  wire \CurrentSprite[31]_i_38_n_0 ;
  wire \CurrentSprite[31]_i_390_n_0 ;
  wire \CurrentSprite[31]_i_391_n_0 ;
  wire \CurrentSprite[31]_i_393_n_0 ;
  wire \CurrentSprite[31]_i_394_n_0 ;
  wire \CurrentSprite[31]_i_396_n_0 ;
  wire \CurrentSprite[31]_i_397_n_0 ;
  wire \CurrentSprite[31]_i_399_n_0 ;
  wire \CurrentSprite[31]_i_39_n_0 ;
  wire \CurrentSprite[31]_i_3_n_0 ;
  wire \CurrentSprite[31]_i_400_n_0 ;
  wire \CurrentSprite[31]_i_402_n_0 ;
  wire \CurrentSprite[31]_i_403_n_0 ;
  wire \CurrentSprite[31]_i_405_n_0 ;
  wire \CurrentSprite[31]_i_406_n_0 ;
  wire \CurrentSprite[31]_i_408_n_0 ;
  wire \CurrentSprite[31]_i_409_n_0 ;
  wire \CurrentSprite[31]_i_40_n_0 ;
  wire \CurrentSprite[31]_i_411_n_0 ;
  wire \CurrentSprite[31]_i_412_n_0 ;
  wire \CurrentSprite[31]_i_414_n_0 ;
  wire \CurrentSprite[31]_i_415_n_0 ;
  wire \CurrentSprite[31]_i_417_n_0 ;
  wire \CurrentSprite[31]_i_418_n_0 ;
  wire \CurrentSprite[31]_i_420_n_0 ;
  wire \CurrentSprite[31]_i_421_n_0 ;
  wire \CurrentSprite[31]_i_422_n_0 ;
  wire \CurrentSprite[31]_i_423_n_0 ;
  wire \CurrentSprite[31]_i_424_n_0 ;
  wire \CurrentSprite[31]_i_425_n_0 ;
  wire \CurrentSprite[31]_i_426_n_0 ;
  wire \CurrentSprite[31]_i_427_n_0 ;
  wire \CurrentSprite[31]_i_428_n_0 ;
  wire \CurrentSprite[31]_i_429_n_0 ;
  wire \CurrentSprite[31]_i_430_n_0 ;
  wire \CurrentSprite[31]_i_431_n_0 ;
  wire \CurrentSprite[31]_i_432_n_0 ;
  wire \CurrentSprite[31]_i_433_n_0 ;
  wire \CurrentSprite[31]_i_434_n_0 ;
  wire \CurrentSprite[31]_i_435_n_0 ;
  wire \CurrentSprite[31]_i_436_n_0 ;
  wire \CurrentSprite[31]_i_437_n_0 ;
  wire \CurrentSprite[31]_i_438_n_0 ;
  wire \CurrentSprite[31]_i_439_n_0 ;
  wire \CurrentSprite[31]_i_43_n_0 ;
  wire \CurrentSprite[31]_i_440_n_0 ;
  wire \CurrentSprite[31]_i_441_n_0 ;
  wire \CurrentSprite[31]_i_442_n_0 ;
  wire \CurrentSprite[31]_i_443_n_0 ;
  wire \CurrentSprite[31]_i_444_n_0 ;
  wire \CurrentSprite[31]_i_446_n_0 ;
  wire \CurrentSprite[31]_i_447_n_0 ;
  wire \CurrentSprite[31]_i_448_n_0 ;
  wire \CurrentSprite[31]_i_449_n_0 ;
  wire \CurrentSprite[31]_i_44_n_0 ;
  wire \CurrentSprite[31]_i_450_n_0 ;
  wire \CurrentSprite[31]_i_451_n_0 ;
  wire \CurrentSprite[31]_i_452_n_0 ;
  wire \CurrentSprite[31]_i_453_n_0 ;
  wire \CurrentSprite[31]_i_454_n_0 ;
  wire \CurrentSprite[31]_i_455_n_0 ;
  wire \CurrentSprite[31]_i_456_n_0 ;
  wire \CurrentSprite[31]_i_457_n_0 ;
  wire \CurrentSprite[31]_i_458_n_0 ;
  wire \CurrentSprite[31]_i_45_n_0 ;
  wire \CurrentSprite[31]_i_460_n_0 ;
  wire \CurrentSprite[31]_i_461_n_0 ;
  wire \CurrentSprite[31]_i_462_n_0 ;
  wire \CurrentSprite[31]_i_463_n_0 ;
  wire \CurrentSprite[31]_i_464_n_0 ;
  wire \CurrentSprite[31]_i_465_n_0 ;
  wire \CurrentSprite[31]_i_466_n_0 ;
  wire \CurrentSprite[31]_i_467_n_0 ;
  wire \CurrentSprite[31]_i_468_n_0 ;
  wire \CurrentSprite[31]_i_469_n_0 ;
  wire \CurrentSprite[31]_i_46_n_0 ;
  wire \CurrentSprite[31]_i_470_n_0 ;
  wire \CurrentSprite[31]_i_471_n_0 ;
  wire \CurrentSprite[31]_i_472_n_0 ;
  wire \CurrentSprite[31]_i_474_n_0 ;
  wire \CurrentSprite[31]_i_475_n_0 ;
  wire \CurrentSprite[31]_i_476_n_0 ;
  wire \CurrentSprite[31]_i_477_n_0 ;
  wire \CurrentSprite[31]_i_478_n_0 ;
  wire \CurrentSprite[31]_i_479_n_0 ;
  wire \CurrentSprite[31]_i_47_n_0 ;
  wire \CurrentSprite[31]_i_480_n_0 ;
  wire \CurrentSprite[31]_i_481_n_0 ;
  wire \CurrentSprite[31]_i_482_n_0 ;
  wire \CurrentSprite[31]_i_483_n_0 ;
  wire \CurrentSprite[31]_i_484_n_0 ;
  wire \CurrentSprite[31]_i_485_n_0 ;
  wire \CurrentSprite[31]_i_486_n_0 ;
  wire \CurrentSprite[31]_i_488_n_0 ;
  wire \CurrentSprite[31]_i_489_n_0 ;
  wire \CurrentSprite[31]_i_48_n_0 ;
  wire \CurrentSprite[31]_i_490_n_0 ;
  wire \CurrentSprite[31]_i_491_n_0 ;
  wire \CurrentSprite[31]_i_492_n_0 ;
  wire \CurrentSprite[31]_i_493_n_0 ;
  wire \CurrentSprite[31]_i_494_n_0 ;
  wire \CurrentSprite[31]_i_495_n_0 ;
  wire \CurrentSprite[31]_i_496_n_0 ;
  wire \CurrentSprite[31]_i_497_n_0 ;
  wire \CurrentSprite[31]_i_498_n_0 ;
  wire \CurrentSprite[31]_i_499_n_0 ;
  wire \CurrentSprite[31]_i_49_n_0 ;
  wire \CurrentSprite[31]_i_4_n_0 ;
  wire \CurrentSprite[31]_i_500_n_0 ;
  wire \CurrentSprite[31]_i_502_n_0 ;
  wire \CurrentSprite[31]_i_503_n_0 ;
  wire \CurrentSprite[31]_i_504_n_0 ;
  wire \CurrentSprite[31]_i_505_n_0 ;
  wire \CurrentSprite[31]_i_506_n_0 ;
  wire \CurrentSprite[31]_i_507_n_0 ;
  wire \CurrentSprite[31]_i_508_n_0 ;
  wire \CurrentSprite[31]_i_509_n_0 ;
  wire \CurrentSprite[31]_i_50_n_0 ;
  wire \CurrentSprite[31]_i_510_n_0 ;
  wire \CurrentSprite[31]_i_511_n_0 ;
  wire \CurrentSprite[31]_i_512_n_0 ;
  wire \CurrentSprite[31]_i_513_n_0 ;
  wire \CurrentSprite[31]_i_514_n_0 ;
  wire \CurrentSprite[31]_i_516_n_0 ;
  wire \CurrentSprite[31]_i_517_n_0 ;
  wire \CurrentSprite[31]_i_518_n_0 ;
  wire \CurrentSprite[31]_i_519_n_0 ;
  wire \CurrentSprite[31]_i_51_n_0 ;
  wire \CurrentSprite[31]_i_520_n_0 ;
  wire \CurrentSprite[31]_i_521_n_0 ;
  wire \CurrentSprite[31]_i_522_n_0 ;
  wire \CurrentSprite[31]_i_523_n_0 ;
  wire \CurrentSprite[31]_i_524_n_0 ;
  wire \CurrentSprite[31]_i_525_n_0 ;
  wire \CurrentSprite[31]_i_526_n_0 ;
  wire \CurrentSprite[31]_i_527_n_0 ;
  wire \CurrentSprite[31]_i_528_n_0 ;
  wire \CurrentSprite[31]_i_529_n_0 ;
  wire \CurrentSprite[31]_i_52_n_0 ;
  wire \CurrentSprite[31]_i_530_n_0 ;
  wire \CurrentSprite[31]_i_531_n_0 ;
  wire \CurrentSprite[31]_i_532_n_0 ;
  wire \CurrentSprite[31]_i_533_n_0 ;
  wire \CurrentSprite[31]_i_534_n_0 ;
  wire \CurrentSprite[31]_i_535_n_0 ;
  wire \CurrentSprite[31]_i_536_n_0 ;
  wire \CurrentSprite[31]_i_538_n_0 ;
  wire \CurrentSprite[31]_i_539_n_0 ;
  wire \CurrentSprite[31]_i_53_n_0 ;
  wire \CurrentSprite[31]_i_540_n_0 ;
  wire \CurrentSprite[31]_i_541_n_0 ;
  wire \CurrentSprite[31]_i_542_n_0 ;
  wire \CurrentSprite[31]_i_543_n_0 ;
  wire \CurrentSprite[31]_i_544_n_0 ;
  wire \CurrentSprite[31]_i_545_n_0 ;
  wire \CurrentSprite[31]_i_546_n_0 ;
  wire \CurrentSprite[31]_i_547_n_0 ;
  wire \CurrentSprite[31]_i_548_n_0 ;
  wire \CurrentSprite[31]_i_549_n_0 ;
  wire \CurrentSprite[31]_i_54_n_0 ;
  wire \CurrentSprite[31]_i_550_n_0 ;
  wire \CurrentSprite[31]_i_551_n_0 ;
  wire \CurrentSprite[31]_i_552_n_0 ;
  wire \CurrentSprite[31]_i_553_n_0 ;
  wire \CurrentSprite[31]_i_554_n_0 ;
  wire \CurrentSprite[31]_i_555_n_0 ;
  wire \CurrentSprite[31]_i_556_n_0 ;
  wire \CurrentSprite[31]_i_557_n_0 ;
  wire \CurrentSprite[31]_i_558_n_0 ;
  wire \CurrentSprite[31]_i_55_n_0 ;
  wire \CurrentSprite[31]_i_560_n_0 ;
  wire \CurrentSprite[31]_i_561_n_0 ;
  wire \CurrentSprite[31]_i_562_n_0 ;
  wire \CurrentSprite[31]_i_563_n_0 ;
  wire \CurrentSprite[31]_i_564_n_0 ;
  wire \CurrentSprite[31]_i_565_n_0 ;
  wire \CurrentSprite[31]_i_566_n_0 ;
  wire \CurrentSprite[31]_i_567_n_0 ;
  wire \CurrentSprite[31]_i_568_n_0 ;
  wire \CurrentSprite[31]_i_569_n_0 ;
  wire \CurrentSprite[31]_i_56_n_0 ;
  wire \CurrentSprite[31]_i_570_n_0 ;
  wire \CurrentSprite[31]_i_571_n_0 ;
  wire \CurrentSprite[31]_i_572_n_0 ;
  wire \CurrentSprite[31]_i_574_n_0 ;
  wire \CurrentSprite[31]_i_575_n_0 ;
  wire \CurrentSprite[31]_i_576_n_0 ;
  wire \CurrentSprite[31]_i_577_n_0 ;
  wire \CurrentSprite[31]_i_578_n_0 ;
  wire \CurrentSprite[31]_i_579_n_0 ;
  wire \CurrentSprite[31]_i_57_n_0 ;
  wire \CurrentSprite[31]_i_580_n_0 ;
  wire \CurrentSprite[31]_i_581_n_0 ;
  wire \CurrentSprite[31]_i_582_n_0 ;
  wire \CurrentSprite[31]_i_583_n_0 ;
  wire \CurrentSprite[31]_i_584_n_0 ;
  wire \CurrentSprite[31]_i_585_n_0 ;
  wire \CurrentSprite[31]_i_586_n_0 ;
  wire \CurrentSprite[31]_i_587_n_0 ;
  wire \CurrentSprite[31]_i_588_n_0 ;
  wire \CurrentSprite[31]_i_589_n_0 ;
  wire \CurrentSprite[31]_i_58_n_0 ;
  wire \CurrentSprite[31]_i_590_n_0 ;
  wire \CurrentSprite[31]_i_592_n_0 ;
  wire \CurrentSprite[31]_i_593_n_0 ;
  wire \CurrentSprite[31]_i_594_n_0 ;
  wire \CurrentSprite[31]_i_595_n_0 ;
  wire \CurrentSprite[31]_i_596_n_0 ;
  wire \CurrentSprite[31]_i_597_n_0 ;
  wire \CurrentSprite[31]_i_598_n_0 ;
  wire \CurrentSprite[31]_i_599_n_0 ;
  wire \CurrentSprite[31]_i_59_n_0 ;
  wire \CurrentSprite[31]_i_5_n_0 ;
  wire \CurrentSprite[31]_i_600_n_0 ;
  wire \CurrentSprite[31]_i_601_n_0 ;
  wire \CurrentSprite[31]_i_602_n_0 ;
  wire \CurrentSprite[31]_i_603_n_0 ;
  wire \CurrentSprite[31]_i_604_n_0 ;
  wire \CurrentSprite[31]_i_606_n_0 ;
  wire \CurrentSprite[31]_i_607_n_0 ;
  wire \CurrentSprite[31]_i_608_n_0 ;
  wire \CurrentSprite[31]_i_609_n_0 ;
  wire \CurrentSprite[31]_i_60_n_0 ;
  wire \CurrentSprite[31]_i_610_n_0 ;
  wire \CurrentSprite[31]_i_611_n_0 ;
  wire \CurrentSprite[31]_i_612_n_0 ;
  wire \CurrentSprite[31]_i_613_n_0 ;
  wire \CurrentSprite[31]_i_614_n_0 ;
  wire \CurrentSprite[31]_i_615_n_0 ;
  wire \CurrentSprite[31]_i_616_n_0 ;
  wire \CurrentSprite[31]_i_617_n_0 ;
  wire \CurrentSprite[31]_i_618_n_0 ;
  wire \CurrentSprite[31]_i_620_n_0 ;
  wire \CurrentSprite[31]_i_621_n_0 ;
  wire \CurrentSprite[31]_i_622_n_0 ;
  wire \CurrentSprite[31]_i_623_n_0 ;
  wire \CurrentSprite[31]_i_624_n_0 ;
  wire \CurrentSprite[31]_i_625_n_0 ;
  wire \CurrentSprite[31]_i_626_n_0 ;
  wire \CurrentSprite[31]_i_627_n_0 ;
  wire \CurrentSprite[31]_i_628_n_0 ;
  wire \CurrentSprite[31]_i_629_n_0 ;
  wire \CurrentSprite[31]_i_630_n_0 ;
  wire \CurrentSprite[31]_i_631_n_0 ;
  wire \CurrentSprite[31]_i_632_n_0 ;
  wire \CurrentSprite[31]_i_634_n_0 ;
  wire \CurrentSprite[31]_i_635_n_0 ;
  wire \CurrentSprite[31]_i_636_n_0 ;
  wire \CurrentSprite[31]_i_637_n_0 ;
  wire \CurrentSprite[31]_i_638_n_0 ;
  wire \CurrentSprite[31]_i_639_n_0 ;
  wire \CurrentSprite[31]_i_63_n_0 ;
  wire \CurrentSprite[31]_i_640_n_0 ;
  wire \CurrentSprite[31]_i_641_n_0 ;
  wire \CurrentSprite[31]_i_642_n_0 ;
  wire \CurrentSprite[31]_i_643_n_0 ;
  wire \CurrentSprite[31]_i_644_n_0 ;
  wire \CurrentSprite[31]_i_645_n_0 ;
  wire \CurrentSprite[31]_i_646_n_0 ;
  wire \CurrentSprite[31]_i_648_n_0 ;
  wire \CurrentSprite[31]_i_649_n_0 ;
  wire \CurrentSprite[31]_i_64_n_0 ;
  wire \CurrentSprite[31]_i_650_n_0 ;
  wire \CurrentSprite[31]_i_651_n_0 ;
  wire \CurrentSprite[31]_i_652_n_0 ;
  wire \CurrentSprite[31]_i_653_n_0 ;
  wire \CurrentSprite[31]_i_654_n_0 ;
  wire \CurrentSprite[31]_i_655_n_0 ;
  wire \CurrentSprite[31]_i_656_n_0 ;
  wire \CurrentSprite[31]_i_657_n_0 ;
  wire \CurrentSprite[31]_i_658_n_0 ;
  wire \CurrentSprite[31]_i_659_n_0 ;
  wire \CurrentSprite[31]_i_660_n_0 ;
  wire \CurrentSprite[31]_i_662_n_0 ;
  wire \CurrentSprite[31]_i_663_n_0 ;
  wire \CurrentSprite[31]_i_664_n_0 ;
  wire \CurrentSprite[31]_i_665_n_0 ;
  wire \CurrentSprite[31]_i_666_n_0 ;
  wire \CurrentSprite[31]_i_667_n_0 ;
  wire \CurrentSprite[31]_i_668_n_0 ;
  wire \CurrentSprite[31]_i_669_n_0 ;
  wire \CurrentSprite[31]_i_66_n_0 ;
  wire \CurrentSprite[31]_i_670_n_0 ;
  wire \CurrentSprite[31]_i_671_n_0 ;
  wire \CurrentSprite[31]_i_672_n_0 ;
  wire \CurrentSprite[31]_i_673_n_0 ;
  wire \CurrentSprite[31]_i_674_n_0 ;
  wire \CurrentSprite[31]_i_676_n_0 ;
  wire \CurrentSprite[31]_i_677_n_0 ;
  wire \CurrentSprite[31]_i_678_n_0 ;
  wire \CurrentSprite[31]_i_679_n_0 ;
  wire \CurrentSprite[31]_i_67_n_0 ;
  wire \CurrentSprite[31]_i_680_n_0 ;
  wire \CurrentSprite[31]_i_681_n_0 ;
  wire \CurrentSprite[31]_i_682_n_0 ;
  wire \CurrentSprite[31]_i_683_n_0 ;
  wire \CurrentSprite[31]_i_684_n_0 ;
  wire \CurrentSprite[31]_i_685_n_0 ;
  wire \CurrentSprite[31]_i_686_n_0 ;
  wire \CurrentSprite[31]_i_687_n_0 ;
  wire \CurrentSprite[31]_i_688_n_0 ;
  wire \CurrentSprite[31]_i_689_n_0 ;
  wire \CurrentSprite[31]_i_690_n_0 ;
  wire \CurrentSprite[31]_i_691_n_0 ;
  wire \CurrentSprite[31]_i_692_n_0 ;
  wire \CurrentSprite[31]_i_694_n_0 ;
  wire \CurrentSprite[31]_i_695_n_0 ;
  wire \CurrentSprite[31]_i_696_n_0 ;
  wire \CurrentSprite[31]_i_697_n_0 ;
  wire \CurrentSprite[31]_i_698_n_0 ;
  wire \CurrentSprite[31]_i_699_n_0 ;
  wire \CurrentSprite[31]_i_69_n_0 ;
  wire \CurrentSprite[31]_i_6_n_0 ;
  wire \CurrentSprite[31]_i_700_n_0 ;
  wire \CurrentSprite[31]_i_701_n_0 ;
  wire \CurrentSprite[31]_i_702_n_0 ;
  wire \CurrentSprite[31]_i_703_n_0 ;
  wire \CurrentSprite[31]_i_704_n_0 ;
  wire \CurrentSprite[31]_i_705_n_0 ;
  wire \CurrentSprite[31]_i_706_n_0 ;
  wire \CurrentSprite[31]_i_708_n_0 ;
  wire \CurrentSprite[31]_i_709_n_0 ;
  wire \CurrentSprite[31]_i_70_n_0 ;
  wire \CurrentSprite[31]_i_710_n_0 ;
  wire \CurrentSprite[31]_i_711_n_0 ;
  wire \CurrentSprite[31]_i_712_n_0 ;
  wire \CurrentSprite[31]_i_713_n_0 ;
  wire \CurrentSprite[31]_i_714_n_0 ;
  wire \CurrentSprite[31]_i_715_n_0 ;
  wire \CurrentSprite[31]_i_716_n_0 ;
  wire \CurrentSprite[31]_i_717_n_0 ;
  wire \CurrentSprite[31]_i_718_n_0 ;
  wire \CurrentSprite[31]_i_719_n_0 ;
  wire \CurrentSprite[31]_i_720_n_0 ;
  wire \CurrentSprite[31]_i_722_n_0 ;
  wire \CurrentSprite[31]_i_723_n_0 ;
  wire \CurrentSprite[31]_i_724_n_0 ;
  wire \CurrentSprite[31]_i_725_n_0 ;
  wire \CurrentSprite[31]_i_726_n_0 ;
  wire \CurrentSprite[31]_i_728_n_0 ;
  wire \CurrentSprite[31]_i_729_n_0 ;
  wire \CurrentSprite[31]_i_730_n_0 ;
  wire \CurrentSprite[31]_i_731_n_0 ;
  wire \CurrentSprite[31]_i_732_n_0 ;
  wire \CurrentSprite[31]_i_733_n_0 ;
  wire \CurrentSprite[31]_i_734_n_0 ;
  wire \CurrentSprite[31]_i_735_n_0 ;
  wire \CurrentSprite[31]_i_736_n_0 ;
  wire \CurrentSprite[31]_i_737_n_0 ;
  wire \CurrentSprite[31]_i_738_n_0 ;
  wire \CurrentSprite[31]_i_739_n_0 ;
  wire \CurrentSprite[31]_i_740_n_0 ;
  wire \CurrentSprite[31]_i_742_n_0 ;
  wire \CurrentSprite[31]_i_743_n_0 ;
  wire \CurrentSprite[31]_i_744_n_0 ;
  wire \CurrentSprite[31]_i_745_n_0 ;
  wire \CurrentSprite[31]_i_746_n_0 ;
  wire \CurrentSprite[31]_i_747_n_0 ;
  wire \CurrentSprite[31]_i_748_n_0 ;
  wire \CurrentSprite[31]_i_749_n_0 ;
  wire \CurrentSprite[31]_i_750_n_0 ;
  wire \CurrentSprite[31]_i_751_n_0 ;
  wire \CurrentSprite[31]_i_752_n_0 ;
  wire \CurrentSprite[31]_i_753_n_0 ;
  wire \CurrentSprite[31]_i_754_n_0 ;
  wire \CurrentSprite[31]_i_755_n_0 ;
  wire \CurrentSprite[31]_i_756_n_0 ;
  wire \CurrentSprite[31]_i_757_n_0 ;
  wire \CurrentSprite[31]_i_758_n_0 ;
  wire \CurrentSprite[31]_i_759_n_0 ;
  wire \CurrentSprite[31]_i_760_n_0 ;
  wire \CurrentSprite[31]_i_761_n_0 ;
  wire \CurrentSprite[31]_i_762_n_0 ;
  wire \CurrentSprite[31]_i_764_n_0 ;
  wire \CurrentSprite[31]_i_765_n_0 ;
  wire \CurrentSprite[31]_i_766_n_0 ;
  wire \CurrentSprite[31]_i_767_n_0 ;
  wire \CurrentSprite[31]_i_768_n_0 ;
  wire \CurrentSprite[31]_i_770_n_0 ;
  wire \CurrentSprite[31]_i_771_n_0 ;
  wire \CurrentSprite[31]_i_772_n_0 ;
  wire \CurrentSprite[31]_i_773_n_0 ;
  wire \CurrentSprite[31]_i_774_n_0 ;
  wire \CurrentSprite[31]_i_775_n_0 ;
  wire \CurrentSprite[31]_i_776_n_0 ;
  wire \CurrentSprite[31]_i_777_n_0 ;
  wire \CurrentSprite[31]_i_778_n_0 ;
  wire \CurrentSprite[31]_i_779_n_0 ;
  wire \CurrentSprite[31]_i_780_n_0 ;
  wire \CurrentSprite[31]_i_781_n_0 ;
  wire \CurrentSprite[31]_i_782_n_0 ;
  wire \CurrentSprite[31]_i_783_n_0 ;
  wire \CurrentSprite[31]_i_784_n_0 ;
  wire \CurrentSprite[31]_i_785_n_0 ;
  wire \CurrentSprite[31]_i_786_n_0 ;
  wire \CurrentSprite[31]_i_787_n_0 ;
  wire \CurrentSprite[31]_i_788_n_0 ;
  wire \CurrentSprite[31]_i_789_n_0 ;
  wire \CurrentSprite[31]_i_790_n_0 ;
  wire \CurrentSprite[31]_i_792_n_0 ;
  wire \CurrentSprite[31]_i_793_n_0 ;
  wire \CurrentSprite[31]_i_794_n_0 ;
  wire \CurrentSprite[31]_i_795_n_0 ;
  wire \CurrentSprite[31]_i_796_n_0 ;
  wire \CurrentSprite[31]_i_797_n_0 ;
  wire \CurrentSprite[31]_i_798_n_0 ;
  wire \CurrentSprite[31]_i_799_n_0 ;
  wire \CurrentSprite[31]_i_79_n_0 ;
  wire \CurrentSprite[31]_i_7_n_0 ;
  wire \CurrentSprite[31]_i_800_n_0 ;
  wire \CurrentSprite[31]_i_801_n_0 ;
  wire \CurrentSprite[31]_i_802_n_0 ;
  wire \CurrentSprite[31]_i_803_n_0 ;
  wire \CurrentSprite[31]_i_804_n_0 ;
  wire \CurrentSprite[31]_i_805_n_0 ;
  wire \CurrentSprite[31]_i_806_n_0 ;
  wire \CurrentSprite[31]_i_807_n_0 ;
  wire \CurrentSprite[31]_i_808_n_0 ;
  wire \CurrentSprite[31]_i_809_n_0 ;
  wire \CurrentSprite[31]_i_810_n_0 ;
  wire \CurrentSprite[31]_i_811_n_0 ;
  wire \CurrentSprite[31]_i_812_n_0 ;
  wire \CurrentSprite[31]_i_813_n_0 ;
  wire \CurrentSprite[31]_i_814_n_0 ;
  wire \CurrentSprite[31]_i_815_n_0 ;
  wire \CurrentSprite[31]_i_816_n_0 ;
  wire \CurrentSprite[31]_i_817_n_0 ;
  wire \CurrentSprite[31]_i_818_n_0 ;
  wire \CurrentSprite[31]_i_819_n_0 ;
  wire \CurrentSprite[31]_i_820_n_0 ;
  wire \CurrentSprite[31]_i_821_n_0 ;
  wire \CurrentSprite[31]_i_822_n_0 ;
  wire \CurrentSprite[31]_i_823_n_0 ;
  wire \CurrentSprite[31]_i_824_n_0 ;
  wire \CurrentSprite[31]_i_825_n_0 ;
  wire \CurrentSprite[31]_i_826_n_0 ;
  wire \CurrentSprite[31]_i_827_n_0 ;
  wire \CurrentSprite[31]_i_828_n_0 ;
  wire \CurrentSprite[31]_i_829_n_0 ;
  wire \CurrentSprite[31]_i_830_n_0 ;
  wire \CurrentSprite[31]_i_831_n_0 ;
  wire \CurrentSprite[31]_i_832_n_0 ;
  wire \CurrentSprite[31]_i_833_n_0 ;
  wire \CurrentSprite[31]_i_834_n_0 ;
  wire \CurrentSprite[31]_i_835_n_0 ;
  wire \CurrentSprite[31]_i_836_n_0 ;
  wire \CurrentSprite[31]_i_837_n_0 ;
  wire \CurrentSprite[31]_i_838_n_0 ;
  wire \CurrentSprite[31]_i_839_n_0 ;
  wire \CurrentSprite[31]_i_840_n_0 ;
  wire \CurrentSprite[31]_i_841_n_0 ;
  wire \CurrentSprite[31]_i_842_n_0 ;
  wire \CurrentSprite[31]_i_843_n_0 ;
  wire \CurrentSprite[31]_i_844_n_0 ;
  wire \CurrentSprite[31]_i_845_n_0 ;
  wire \CurrentSprite[31]_i_846_n_0 ;
  wire \CurrentSprite[31]_i_847_n_0 ;
  wire \CurrentSprite[31]_i_848_n_0 ;
  wire \CurrentSprite[31]_i_849_n_0 ;
  wire \CurrentSprite[31]_i_850_n_0 ;
  wire \CurrentSprite[31]_i_851_n_0 ;
  wire \CurrentSprite[31]_i_852_n_0 ;
  wire \CurrentSprite[31]_i_853_n_0 ;
  wire \CurrentSprite[31]_i_854_n_0 ;
  wire \CurrentSprite[31]_i_855_n_0 ;
  wire \CurrentSprite[31]_i_856_n_0 ;
  wire \CurrentSprite[31]_i_857_n_0 ;
  wire \CurrentSprite[31]_i_858_n_0 ;
  wire \CurrentSprite[31]_i_859_n_0 ;
  wire \CurrentSprite[31]_i_85_n_0 ;
  wire \CurrentSprite[31]_i_860_n_0 ;
  wire \CurrentSprite[31]_i_861_n_0 ;
  wire \CurrentSprite[31]_i_862_n_0 ;
  wire \CurrentSprite[31]_i_863_n_0 ;
  wire \CurrentSprite[31]_i_864_n_0 ;
  wire \CurrentSprite[31]_i_865_n_0 ;
  wire \CurrentSprite[31]_i_866_n_0 ;
  wire \CurrentSprite[31]_i_867_n_0 ;
  wire \CurrentSprite[31]_i_868_n_0 ;
  wire \CurrentSprite[31]_i_869_n_0 ;
  wire \CurrentSprite[31]_i_86_n_0 ;
  wire \CurrentSprite[31]_i_870_n_0 ;
  wire \CurrentSprite[31]_i_871_n_0 ;
  wire \CurrentSprite[31]_i_872_n_0 ;
  wire \CurrentSprite[31]_i_873_n_0 ;
  wire \CurrentSprite[31]_i_874_n_0 ;
  wire \CurrentSprite[31]_i_875_n_0 ;
  wire \CurrentSprite[31]_i_876_n_0 ;
  wire \CurrentSprite[31]_i_877_n_0 ;
  wire \CurrentSprite[31]_i_878_n_0 ;
  wire \CurrentSprite[31]_i_879_n_0 ;
  wire \CurrentSprite[31]_i_880_n_0 ;
  wire \CurrentSprite[31]_i_881_n_0 ;
  wire \CurrentSprite[31]_i_882_n_0 ;
  wire \CurrentSprite[31]_i_883_n_0 ;
  wire \CurrentSprite[31]_i_884_n_0 ;
  wire \CurrentSprite[31]_i_885_n_0 ;
  wire \CurrentSprite[31]_i_886_n_0 ;
  wire \CurrentSprite[31]_i_887_n_0 ;
  wire \CurrentSprite[31]_i_888_n_0 ;
  wire \CurrentSprite[31]_i_889_n_0 ;
  wire \CurrentSprite[31]_i_88_n_0 ;
  wire \CurrentSprite[31]_i_890_n_0 ;
  wire \CurrentSprite[31]_i_891_n_0 ;
  wire \CurrentSprite[31]_i_892_n_0 ;
  wire \CurrentSprite[31]_i_893_n_0 ;
  wire \CurrentSprite[31]_i_894_n_0 ;
  wire \CurrentSprite[31]_i_895_n_0 ;
  wire \CurrentSprite[31]_i_896_n_0 ;
  wire \CurrentSprite[31]_i_89_n_0 ;
  wire \CurrentSprite[31]_i_8_n_0 ;
  wire \CurrentSprite[31]_i_91_n_0 ;
  wire \CurrentSprite[31]_i_92_n_0 ;
  wire \CurrentSprite[31]_i_94_n_0 ;
  wire \CurrentSprite[31]_i_95_n_0 ;
  wire \CurrentSprite[31]_i_99_n_0 ;
  wire \CurrentSprite[31]_i_9_n_0 ;
  wire \CurrentSprite[3]_i_10_n_0 ;
  wire \CurrentSprite[3]_i_11_n_0 ;
  wire \CurrentSprite[3]_i_12_n_0 ;
  wire \CurrentSprite[3]_i_13_n_0 ;
  wire \CurrentSprite[3]_i_14_n_0 ;
  wire \CurrentSprite[3]_i_15_n_0 ;
  wire \CurrentSprite[3]_i_1_n_0 ;
  wire \CurrentSprite[3]_i_2_n_0 ;
  wire \CurrentSprite[3]_i_3_n_0 ;
  wire \CurrentSprite[3]_i_4_n_0 ;
  wire \CurrentSprite[3]_i_5_n_0 ;
  wire \CurrentSprite[3]_i_6_n_0 ;
  wire \CurrentSprite[3]_i_7_n_0 ;
  wire \CurrentSprite[3]_i_8_n_0 ;
  wire \CurrentSprite[3]_i_9_n_0 ;
  wire \CurrentSprite[4]_i_10_n_0 ;
  wire \CurrentSprite[4]_i_11_n_0 ;
  wire \CurrentSprite[4]_i_12_n_0 ;
  wire \CurrentSprite[4]_i_13_n_0 ;
  wire \CurrentSprite[4]_i_14_n_0 ;
  wire \CurrentSprite[4]_i_15_n_0 ;
  wire \CurrentSprite[4]_i_1_n_0 ;
  wire \CurrentSprite[4]_i_2_n_0 ;
  wire \CurrentSprite[4]_i_3_n_0 ;
  wire \CurrentSprite[4]_i_4_n_0 ;
  wire \CurrentSprite[4]_i_5_n_0 ;
  wire \CurrentSprite[4]_i_6_n_0 ;
  wire \CurrentSprite[4]_i_7_n_0 ;
  wire \CurrentSprite[4]_i_8_n_0 ;
  wire \CurrentSprite[4]_i_9_n_0 ;
  wire \CurrentSprite[5]_i_10_n_0 ;
  wire \CurrentSprite[5]_i_11_n_0 ;
  wire \CurrentSprite[5]_i_12_n_0 ;
  wire \CurrentSprite[5]_i_13_n_0 ;
  wire \CurrentSprite[5]_i_14_n_0 ;
  wire \CurrentSprite[5]_i_15_n_0 ;
  wire \CurrentSprite[5]_i_1_n_0 ;
  wire \CurrentSprite[5]_i_2_n_0 ;
  wire \CurrentSprite[5]_i_3_n_0 ;
  wire \CurrentSprite[5]_i_4_n_0 ;
  wire \CurrentSprite[5]_i_5_n_0 ;
  wire \CurrentSprite[5]_i_6_n_0 ;
  wire \CurrentSprite[5]_i_7_n_0 ;
  wire \CurrentSprite[5]_i_8_n_0 ;
  wire \CurrentSprite[5]_i_9_n_0 ;
  wire \CurrentSprite[6]_i_10_n_0 ;
  wire \CurrentSprite[6]_i_11_n_0 ;
  wire \CurrentSprite[6]_i_12_n_0 ;
  wire \CurrentSprite[6]_i_13_n_0 ;
  wire \CurrentSprite[6]_i_14_n_0 ;
  wire \CurrentSprite[6]_i_15_n_0 ;
  wire \CurrentSprite[6]_i_1_n_0 ;
  wire \CurrentSprite[6]_i_2_n_0 ;
  wire \CurrentSprite[6]_i_3_n_0 ;
  wire \CurrentSprite[6]_i_4_n_0 ;
  wire \CurrentSprite[6]_i_5_n_0 ;
  wire \CurrentSprite[6]_i_6_n_0 ;
  wire \CurrentSprite[6]_i_7_n_0 ;
  wire \CurrentSprite[6]_i_8_n_0 ;
  wire \CurrentSprite[6]_i_9_n_0 ;
  wire \CurrentSprite[7]_i_10_n_0 ;
  wire \CurrentSprite[7]_i_11_n_0 ;
  wire \CurrentSprite[7]_i_12_n_0 ;
  wire \CurrentSprite[7]_i_13_n_0 ;
  wire \CurrentSprite[7]_i_14_n_0 ;
  wire \CurrentSprite[7]_i_15_n_0 ;
  wire \CurrentSprite[7]_i_1_n_0 ;
  wire \CurrentSprite[7]_i_2_n_0 ;
  wire \CurrentSprite[7]_i_3_n_0 ;
  wire \CurrentSprite[7]_i_4_n_0 ;
  wire \CurrentSprite[7]_i_5_n_0 ;
  wire \CurrentSprite[7]_i_6_n_0 ;
  wire \CurrentSprite[7]_i_7_n_0 ;
  wire \CurrentSprite[7]_i_8_n_0 ;
  wire \CurrentSprite[7]_i_9_n_0 ;
  wire \CurrentSprite[8]_i_10_n_0 ;
  wire \CurrentSprite[8]_i_11_n_0 ;
  wire \CurrentSprite[8]_i_12_n_0 ;
  wire \CurrentSprite[8]_i_13_n_0 ;
  wire \CurrentSprite[8]_i_14_n_0 ;
  wire \CurrentSprite[8]_i_15_n_0 ;
  wire \CurrentSprite[8]_i_1_n_0 ;
  wire \CurrentSprite[8]_i_2_n_0 ;
  wire \CurrentSprite[8]_i_3_n_0 ;
  wire \CurrentSprite[8]_i_4_n_0 ;
  wire \CurrentSprite[8]_i_5_n_0 ;
  wire \CurrentSprite[8]_i_6_n_0 ;
  wire \CurrentSprite[8]_i_7_n_0 ;
  wire \CurrentSprite[8]_i_8_n_0 ;
  wire \CurrentSprite[8]_i_9_n_0 ;
  wire \CurrentSprite[9]_i_10_n_0 ;
  wire \CurrentSprite[9]_i_11_n_0 ;
  wire \CurrentSprite[9]_i_12_n_0 ;
  wire \CurrentSprite[9]_i_13_n_0 ;
  wire \CurrentSprite[9]_i_14_n_0 ;
  wire \CurrentSprite[9]_i_15_n_0 ;
  wire \CurrentSprite[9]_i_1_n_0 ;
  wire \CurrentSprite[9]_i_2_n_0 ;
  wire \CurrentSprite[9]_i_3_n_0 ;
  wire \CurrentSprite[9]_i_4_n_0 ;
  wire \CurrentSprite[9]_i_5_n_0 ;
  wire \CurrentSprite[9]_i_6_n_0 ;
  wire \CurrentSprite[9]_i_7_n_0 ;
  wire \CurrentSprite[9]_i_8_n_0 ;
  wire \CurrentSprite[9]_i_9_n_0 ;
  wire \CurrentSprite_reg[31]_i_101_n_0 ;
  wire \CurrentSprite_reg[31]_i_101_n_1 ;
  wire \CurrentSprite_reg[31]_i_101_n_2 ;
  wire \CurrentSprite_reg[31]_i_101_n_3 ;
  wire \CurrentSprite_reg[31]_i_104_n_0 ;
  wire \CurrentSprite_reg[31]_i_104_n_1 ;
  wire \CurrentSprite_reg[31]_i_104_n_2 ;
  wire \CurrentSprite_reg[31]_i_104_n_3 ;
  wire \CurrentSprite_reg[31]_i_107_n_0 ;
  wire \CurrentSprite_reg[31]_i_107_n_1 ;
  wire \CurrentSprite_reg[31]_i_107_n_2 ;
  wire \CurrentSprite_reg[31]_i_107_n_3 ;
  wire \CurrentSprite_reg[31]_i_111_n_2 ;
  wire \CurrentSprite_reg[31]_i_111_n_3 ;
  wire \CurrentSprite_reg[31]_i_113_n_2 ;
  wire \CurrentSprite_reg[31]_i_113_n_3 ;
  wire \CurrentSprite_reg[31]_i_114_n_0 ;
  wire \CurrentSprite_reg[31]_i_114_n_1 ;
  wire \CurrentSprite_reg[31]_i_114_n_2 ;
  wire \CurrentSprite_reg[31]_i_114_n_3 ;
  wire \CurrentSprite_reg[31]_i_117_n_0 ;
  wire \CurrentSprite_reg[31]_i_117_n_1 ;
  wire \CurrentSprite_reg[31]_i_117_n_2 ;
  wire \CurrentSprite_reg[31]_i_117_n_3 ;
  wire \CurrentSprite_reg[31]_i_121_n_2 ;
  wire \CurrentSprite_reg[31]_i_121_n_3 ;
  wire \CurrentSprite_reg[31]_i_123_n_2 ;
  wire \CurrentSprite_reg[31]_i_123_n_3 ;
  wire \CurrentSprite_reg[31]_i_126_n_2 ;
  wire \CurrentSprite_reg[31]_i_126_n_3 ;
  wire \CurrentSprite_reg[31]_i_129_n_2 ;
  wire \CurrentSprite_reg[31]_i_129_n_3 ;
  wire \CurrentSprite_reg[31]_i_131_n_2 ;
  wire \CurrentSprite_reg[31]_i_131_n_3 ;
  wire \CurrentSprite_reg[31]_i_133_n_2 ;
  wire \CurrentSprite_reg[31]_i_133_n_3 ;
  wire \CurrentSprite_reg[31]_i_135_n_2 ;
  wire \CurrentSprite_reg[31]_i_135_n_3 ;
  wire \CurrentSprite_reg[31]_i_136_n_0 ;
  wire \CurrentSprite_reg[31]_i_136_n_1 ;
  wire \CurrentSprite_reg[31]_i_136_n_2 ;
  wire \CurrentSprite_reg[31]_i_136_n_3 ;
  wire \CurrentSprite_reg[31]_i_139_n_0 ;
  wire \CurrentSprite_reg[31]_i_139_n_1 ;
  wire \CurrentSprite_reg[31]_i_139_n_2 ;
  wire \CurrentSprite_reg[31]_i_139_n_3 ;
  wire \CurrentSprite_reg[31]_i_144_n_2 ;
  wire \CurrentSprite_reg[31]_i_144_n_3 ;
  wire \CurrentSprite_reg[31]_i_146_n_2 ;
  wire \CurrentSprite_reg[31]_i_146_n_3 ;
  wire \CurrentSprite_reg[31]_i_14_n_2 ;
  wire \CurrentSprite_reg[31]_i_14_n_3 ;
  wire \CurrentSprite_reg[31]_i_151_n_2 ;
  wire \CurrentSprite_reg[31]_i_151_n_3 ;
  wire \CurrentSprite_reg[31]_i_152_n_2 ;
  wire \CurrentSprite_reg[31]_i_152_n_3 ;
  wire \CurrentSprite_reg[31]_i_156_n_2 ;
  wire \CurrentSprite_reg[31]_i_156_n_3 ;
  wire \CurrentSprite_reg[31]_i_159_n_2 ;
  wire \CurrentSprite_reg[31]_i_159_n_3 ;
  wire \CurrentSprite_reg[31]_i_162_n_2 ;
  wire \CurrentSprite_reg[31]_i_162_n_3 ;
  wire \CurrentSprite_reg[31]_i_165_n_2 ;
  wire \CurrentSprite_reg[31]_i_165_n_3 ;
  wire \CurrentSprite_reg[31]_i_170_n_0 ;
  wire \CurrentSprite_reg[31]_i_170_n_1 ;
  wire \CurrentSprite_reg[31]_i_170_n_2 ;
  wire \CurrentSprite_reg[31]_i_170_n_3 ;
  wire \CurrentSprite_reg[31]_i_173_n_0 ;
  wire \CurrentSprite_reg[31]_i_173_n_1 ;
  wire \CurrentSprite_reg[31]_i_173_n_2 ;
  wire \CurrentSprite_reg[31]_i_173_n_3 ;
  wire \CurrentSprite_reg[31]_i_177_n_0 ;
  wire \CurrentSprite_reg[31]_i_177_n_1 ;
  wire \CurrentSprite_reg[31]_i_177_n_2 ;
  wire \CurrentSprite_reg[31]_i_177_n_3 ;
  wire \CurrentSprite_reg[31]_i_191_n_0 ;
  wire \CurrentSprite_reg[31]_i_191_n_1 ;
  wire \CurrentSprite_reg[31]_i_191_n_2 ;
  wire \CurrentSprite_reg[31]_i_191_n_3 ;
  wire \CurrentSprite_reg[31]_i_194_n_0 ;
  wire \CurrentSprite_reg[31]_i_194_n_1 ;
  wire \CurrentSprite_reg[31]_i_194_n_2 ;
  wire \CurrentSprite_reg[31]_i_194_n_3 ;
  wire \CurrentSprite_reg[31]_i_197_n_0 ;
  wire \CurrentSprite_reg[31]_i_197_n_1 ;
  wire \CurrentSprite_reg[31]_i_197_n_2 ;
  wire \CurrentSprite_reg[31]_i_197_n_3 ;
  wire \CurrentSprite_reg[31]_i_200_n_0 ;
  wire \CurrentSprite_reg[31]_i_200_n_1 ;
  wire \CurrentSprite_reg[31]_i_200_n_2 ;
  wire \CurrentSprite_reg[31]_i_200_n_3 ;
  wire \CurrentSprite_reg[31]_i_203_n_0 ;
  wire \CurrentSprite_reg[31]_i_203_n_1 ;
  wire \CurrentSprite_reg[31]_i_203_n_2 ;
  wire \CurrentSprite_reg[31]_i_203_n_3 ;
  wire \CurrentSprite_reg[31]_i_206_n_0 ;
  wire \CurrentSprite_reg[31]_i_206_n_1 ;
  wire \CurrentSprite_reg[31]_i_206_n_2 ;
  wire \CurrentSprite_reg[31]_i_206_n_3 ;
  wire \CurrentSprite_reg[31]_i_209_n_0 ;
  wire \CurrentSprite_reg[31]_i_209_n_1 ;
  wire \CurrentSprite_reg[31]_i_209_n_2 ;
  wire \CurrentSprite_reg[31]_i_209_n_3 ;
  wire \CurrentSprite_reg[31]_i_212_n_0 ;
  wire \CurrentSprite_reg[31]_i_212_n_1 ;
  wire \CurrentSprite_reg[31]_i_212_n_2 ;
  wire \CurrentSprite_reg[31]_i_212_n_3 ;
  wire \CurrentSprite_reg[31]_i_215_n_0 ;
  wire \CurrentSprite_reg[31]_i_215_n_1 ;
  wire \CurrentSprite_reg[31]_i_215_n_2 ;
  wire \CurrentSprite_reg[31]_i_215_n_3 ;
  wire \CurrentSprite_reg[31]_i_218_n_0 ;
  wire \CurrentSprite_reg[31]_i_218_n_1 ;
  wire \CurrentSprite_reg[31]_i_218_n_2 ;
  wire \CurrentSprite_reg[31]_i_218_n_3 ;
  wire \CurrentSprite_reg[31]_i_221_n_0 ;
  wire \CurrentSprite_reg[31]_i_221_n_1 ;
  wire \CurrentSprite_reg[31]_i_221_n_2 ;
  wire \CurrentSprite_reg[31]_i_221_n_3 ;
  wire \CurrentSprite_reg[31]_i_224_n_0 ;
  wire \CurrentSprite_reg[31]_i_224_n_1 ;
  wire \CurrentSprite_reg[31]_i_224_n_2 ;
  wire \CurrentSprite_reg[31]_i_224_n_3 ;
  wire \CurrentSprite_reg[31]_i_235_n_0 ;
  wire \CurrentSprite_reg[31]_i_235_n_1 ;
  wire \CurrentSprite_reg[31]_i_235_n_2 ;
  wire \CurrentSprite_reg[31]_i_235_n_3 ;
  wire \CurrentSprite_reg[31]_i_23_n_2 ;
  wire \CurrentSprite_reg[31]_i_23_n_3 ;
  wire \CurrentSprite_reg[31]_i_249_n_0 ;
  wire \CurrentSprite_reg[31]_i_249_n_1 ;
  wire \CurrentSprite_reg[31]_i_249_n_2 ;
  wire \CurrentSprite_reg[31]_i_249_n_3 ;
  wire \CurrentSprite_reg[31]_i_255_n_0 ;
  wire \CurrentSprite_reg[31]_i_255_n_1 ;
  wire \CurrentSprite_reg[31]_i_255_n_2 ;
  wire \CurrentSprite_reg[31]_i_255_n_3 ;
  wire \CurrentSprite_reg[31]_i_258_n_0 ;
  wire \CurrentSprite_reg[31]_i_258_n_1 ;
  wire \CurrentSprite_reg[31]_i_258_n_2 ;
  wire \CurrentSprite_reg[31]_i_258_n_3 ;
  wire \CurrentSprite_reg[31]_i_25_n_2 ;
  wire \CurrentSprite_reg[31]_i_25_n_3 ;
  wire \CurrentSprite_reg[31]_i_269_n_0 ;
  wire \CurrentSprite_reg[31]_i_269_n_1 ;
  wire \CurrentSprite_reg[31]_i_269_n_2 ;
  wire \CurrentSprite_reg[31]_i_269_n_3 ;
  wire \CurrentSprite_reg[31]_i_283_n_0 ;
  wire \CurrentSprite_reg[31]_i_283_n_1 ;
  wire \CurrentSprite_reg[31]_i_283_n_2 ;
  wire \CurrentSprite_reg[31]_i_283_n_3 ;
  wire \CurrentSprite_reg[31]_i_289_n_0 ;
  wire \CurrentSprite_reg[31]_i_289_n_1 ;
  wire \CurrentSprite_reg[31]_i_289_n_2 ;
  wire \CurrentSprite_reg[31]_i_289_n_3 ;
  wire \CurrentSprite_reg[31]_i_28_n_2 ;
  wire \CurrentSprite_reg[31]_i_28_n_3 ;
  wire \CurrentSprite_reg[31]_i_292_n_0 ;
  wire \CurrentSprite_reg[31]_i_292_n_1 ;
  wire \CurrentSprite_reg[31]_i_292_n_2 ;
  wire \CurrentSprite_reg[31]_i_292_n_3 ;
  wire \CurrentSprite_reg[31]_i_295_n_0 ;
  wire \CurrentSprite_reg[31]_i_295_n_1 ;
  wire \CurrentSprite_reg[31]_i_295_n_2 ;
  wire \CurrentSprite_reg[31]_i_295_n_3 ;
  wire \CurrentSprite_reg[31]_i_298_n_0 ;
  wire \CurrentSprite_reg[31]_i_298_n_1 ;
  wire \CurrentSprite_reg[31]_i_298_n_2 ;
  wire \CurrentSprite_reg[31]_i_298_n_3 ;
  wire \CurrentSprite_reg[31]_i_301_n_0 ;
  wire \CurrentSprite_reg[31]_i_301_n_1 ;
  wire \CurrentSprite_reg[31]_i_301_n_2 ;
  wire \CurrentSprite_reg[31]_i_301_n_3 ;
  wire \CurrentSprite_reg[31]_i_30_n_2 ;
  wire \CurrentSprite_reg[31]_i_30_n_3 ;
  wire \CurrentSprite_reg[31]_i_315_n_0 ;
  wire \CurrentSprite_reg[31]_i_315_n_1 ;
  wire \CurrentSprite_reg[31]_i_315_n_2 ;
  wire \CurrentSprite_reg[31]_i_315_n_3 ;
  wire \CurrentSprite_reg[31]_i_318_n_0 ;
  wire \CurrentSprite_reg[31]_i_318_n_1 ;
  wire \CurrentSprite_reg[31]_i_318_n_2 ;
  wire \CurrentSprite_reg[31]_i_318_n_3 ;
  wire \CurrentSprite_reg[31]_i_321_n_0 ;
  wire \CurrentSprite_reg[31]_i_321_n_1 ;
  wire \CurrentSprite_reg[31]_i_321_n_2 ;
  wire \CurrentSprite_reg[31]_i_321_n_3 ;
  wire \CurrentSprite_reg[31]_i_324_n_0 ;
  wire \CurrentSprite_reg[31]_i_324_n_1 ;
  wire \CurrentSprite_reg[31]_i_324_n_2 ;
  wire \CurrentSprite_reg[31]_i_324_n_3 ;
  wire \CurrentSprite_reg[31]_i_327_n_0 ;
  wire \CurrentSprite_reg[31]_i_327_n_1 ;
  wire \CurrentSprite_reg[31]_i_327_n_2 ;
  wire \CurrentSprite_reg[31]_i_327_n_3 ;
  wire \CurrentSprite_reg[31]_i_330_n_0 ;
  wire \CurrentSprite_reg[31]_i_330_n_1 ;
  wire \CurrentSprite_reg[31]_i_330_n_2 ;
  wire \CurrentSprite_reg[31]_i_330_n_3 ;
  wire \CurrentSprite_reg[31]_i_333_n_0 ;
  wire \CurrentSprite_reg[31]_i_333_n_1 ;
  wire \CurrentSprite_reg[31]_i_333_n_2 ;
  wire \CurrentSprite_reg[31]_i_333_n_3 ;
  wire \CurrentSprite_reg[31]_i_336_n_0 ;
  wire \CurrentSprite_reg[31]_i_336_n_1 ;
  wire \CurrentSprite_reg[31]_i_336_n_2 ;
  wire \CurrentSprite_reg[31]_i_336_n_3 ;
  wire \CurrentSprite_reg[31]_i_339_n_0 ;
  wire \CurrentSprite_reg[31]_i_339_n_1 ;
  wire \CurrentSprite_reg[31]_i_339_n_2 ;
  wire \CurrentSprite_reg[31]_i_339_n_3 ;
  wire \CurrentSprite_reg[31]_i_33_n_2 ;
  wire \CurrentSprite_reg[31]_i_33_n_3 ;
  wire \CurrentSprite_reg[31]_i_342_n_0 ;
  wire \CurrentSprite_reg[31]_i_342_n_1 ;
  wire \CurrentSprite_reg[31]_i_342_n_2 ;
  wire \CurrentSprite_reg[31]_i_342_n_3 ;
  wire \CurrentSprite_reg[31]_i_345_n_0 ;
  wire \CurrentSprite_reg[31]_i_345_n_1 ;
  wire \CurrentSprite_reg[31]_i_345_n_2 ;
  wire \CurrentSprite_reg[31]_i_345_n_3 ;
  wire \CurrentSprite_reg[31]_i_348_n_0 ;
  wire \CurrentSprite_reg[31]_i_348_n_1 ;
  wire \CurrentSprite_reg[31]_i_348_n_2 ;
  wire \CurrentSprite_reg[31]_i_348_n_3 ;
  wire \CurrentSprite_reg[31]_i_351_n_0 ;
  wire \CurrentSprite_reg[31]_i_351_n_1 ;
  wire \CurrentSprite_reg[31]_i_351_n_2 ;
  wire \CurrentSprite_reg[31]_i_351_n_3 ;
  wire \CurrentSprite_reg[31]_i_354_n_0 ;
  wire \CurrentSprite_reg[31]_i_354_n_1 ;
  wire \CurrentSprite_reg[31]_i_354_n_2 ;
  wire \CurrentSprite_reg[31]_i_354_n_3 ;
  wire \CurrentSprite_reg[31]_i_357_n_0 ;
  wire \CurrentSprite_reg[31]_i_357_n_1 ;
  wire \CurrentSprite_reg[31]_i_357_n_2 ;
  wire \CurrentSprite_reg[31]_i_357_n_3 ;
  wire \CurrentSprite_reg[31]_i_371_n_0 ;
  wire \CurrentSprite_reg[31]_i_371_n_1 ;
  wire \CurrentSprite_reg[31]_i_371_n_2 ;
  wire \CurrentSprite_reg[31]_i_371_n_3 ;
  wire \CurrentSprite_reg[31]_i_374_n_0 ;
  wire \CurrentSprite_reg[31]_i_374_n_1 ;
  wire \CurrentSprite_reg[31]_i_374_n_2 ;
  wire \CurrentSprite_reg[31]_i_374_n_3 ;
  wire \CurrentSprite_reg[31]_i_377_n_0 ;
  wire \CurrentSprite_reg[31]_i_377_n_1 ;
  wire \CurrentSprite_reg[31]_i_377_n_2 ;
  wire \CurrentSprite_reg[31]_i_377_n_3 ;
  wire \CurrentSprite_reg[31]_i_380_n_0 ;
  wire \CurrentSprite_reg[31]_i_380_n_1 ;
  wire \CurrentSprite_reg[31]_i_380_n_2 ;
  wire \CurrentSprite_reg[31]_i_380_n_3 ;
  wire \CurrentSprite_reg[31]_i_383_n_0 ;
  wire \CurrentSprite_reg[31]_i_383_n_1 ;
  wire \CurrentSprite_reg[31]_i_383_n_2 ;
  wire \CurrentSprite_reg[31]_i_383_n_3 ;
  wire \CurrentSprite_reg[31]_i_386_n_0 ;
  wire \CurrentSprite_reg[31]_i_386_n_1 ;
  wire \CurrentSprite_reg[31]_i_386_n_2 ;
  wire \CurrentSprite_reg[31]_i_386_n_3 ;
  wire \CurrentSprite_reg[31]_i_389_n_0 ;
  wire \CurrentSprite_reg[31]_i_389_n_1 ;
  wire \CurrentSprite_reg[31]_i_389_n_2 ;
  wire \CurrentSprite_reg[31]_i_389_n_3 ;
  wire \CurrentSprite_reg[31]_i_392_n_0 ;
  wire \CurrentSprite_reg[31]_i_392_n_1 ;
  wire \CurrentSprite_reg[31]_i_392_n_2 ;
  wire \CurrentSprite_reg[31]_i_392_n_3 ;
  wire \CurrentSprite_reg[31]_i_395_n_0 ;
  wire \CurrentSprite_reg[31]_i_395_n_1 ;
  wire \CurrentSprite_reg[31]_i_395_n_2 ;
  wire \CurrentSprite_reg[31]_i_395_n_3 ;
  wire \CurrentSprite_reg[31]_i_398_n_0 ;
  wire \CurrentSprite_reg[31]_i_398_n_1 ;
  wire \CurrentSprite_reg[31]_i_398_n_2 ;
  wire \CurrentSprite_reg[31]_i_398_n_3 ;
  wire \CurrentSprite_reg[31]_i_401_n_0 ;
  wire \CurrentSprite_reg[31]_i_401_n_1 ;
  wire \CurrentSprite_reg[31]_i_401_n_2 ;
  wire \CurrentSprite_reg[31]_i_401_n_3 ;
  wire \CurrentSprite_reg[31]_i_404_n_0 ;
  wire \CurrentSprite_reg[31]_i_404_n_1 ;
  wire \CurrentSprite_reg[31]_i_404_n_2 ;
  wire \CurrentSprite_reg[31]_i_404_n_3 ;
  wire \CurrentSprite_reg[31]_i_407_n_0 ;
  wire \CurrentSprite_reg[31]_i_407_n_1 ;
  wire \CurrentSprite_reg[31]_i_407_n_2 ;
  wire \CurrentSprite_reg[31]_i_407_n_3 ;
  wire \CurrentSprite_reg[31]_i_410_n_0 ;
  wire \CurrentSprite_reg[31]_i_410_n_1 ;
  wire \CurrentSprite_reg[31]_i_410_n_2 ;
  wire \CurrentSprite_reg[31]_i_410_n_3 ;
  wire \CurrentSprite_reg[31]_i_413_n_0 ;
  wire \CurrentSprite_reg[31]_i_413_n_1 ;
  wire \CurrentSprite_reg[31]_i_413_n_2 ;
  wire \CurrentSprite_reg[31]_i_413_n_3 ;
  wire \CurrentSprite_reg[31]_i_416_n_0 ;
  wire \CurrentSprite_reg[31]_i_416_n_1 ;
  wire \CurrentSprite_reg[31]_i_416_n_2 ;
  wire \CurrentSprite_reg[31]_i_416_n_3 ;
  wire \CurrentSprite_reg[31]_i_419_n_0 ;
  wire \CurrentSprite_reg[31]_i_419_n_1 ;
  wire \CurrentSprite_reg[31]_i_419_n_2 ;
  wire \CurrentSprite_reg[31]_i_419_n_3 ;
  wire \CurrentSprite_reg[31]_i_41_n_2 ;
  wire \CurrentSprite_reg[31]_i_41_n_3 ;
  wire \CurrentSprite_reg[31]_i_445_n_0 ;
  wire \CurrentSprite_reg[31]_i_445_n_1 ;
  wire \CurrentSprite_reg[31]_i_445_n_2 ;
  wire \CurrentSprite_reg[31]_i_445_n_3 ;
  wire \CurrentSprite_reg[31]_i_459_n_0 ;
  wire \CurrentSprite_reg[31]_i_459_n_1 ;
  wire \CurrentSprite_reg[31]_i_459_n_2 ;
  wire \CurrentSprite_reg[31]_i_459_n_3 ;
  wire \CurrentSprite_reg[31]_i_473_n_0 ;
  wire \CurrentSprite_reg[31]_i_473_n_1 ;
  wire \CurrentSprite_reg[31]_i_473_n_2 ;
  wire \CurrentSprite_reg[31]_i_473_n_3 ;
  wire \CurrentSprite_reg[31]_i_487_n_0 ;
  wire \CurrentSprite_reg[31]_i_487_n_1 ;
  wire \CurrentSprite_reg[31]_i_487_n_2 ;
  wire \CurrentSprite_reg[31]_i_487_n_3 ;
  wire \CurrentSprite_reg[31]_i_501_n_0 ;
  wire \CurrentSprite_reg[31]_i_501_n_1 ;
  wire \CurrentSprite_reg[31]_i_501_n_2 ;
  wire \CurrentSprite_reg[31]_i_501_n_3 ;
  wire \CurrentSprite_reg[31]_i_515_n_0 ;
  wire \CurrentSprite_reg[31]_i_515_n_1 ;
  wire \CurrentSprite_reg[31]_i_515_n_2 ;
  wire \CurrentSprite_reg[31]_i_515_n_3 ;
  wire \CurrentSprite_reg[31]_i_537_n_0 ;
  wire \CurrentSprite_reg[31]_i_537_n_1 ;
  wire \CurrentSprite_reg[31]_i_537_n_2 ;
  wire \CurrentSprite_reg[31]_i_537_n_3 ;
  wire \CurrentSprite_reg[31]_i_559_n_0 ;
  wire \CurrentSprite_reg[31]_i_559_n_1 ;
  wire \CurrentSprite_reg[31]_i_559_n_2 ;
  wire \CurrentSprite_reg[31]_i_559_n_3 ;
  wire \CurrentSprite_reg[31]_i_573_n_0 ;
  wire \CurrentSprite_reg[31]_i_573_n_1 ;
  wire \CurrentSprite_reg[31]_i_573_n_2 ;
  wire \CurrentSprite_reg[31]_i_573_n_3 ;
  wire \CurrentSprite_reg[31]_i_591_n_0 ;
  wire \CurrentSprite_reg[31]_i_591_n_1 ;
  wire \CurrentSprite_reg[31]_i_591_n_2 ;
  wire \CurrentSprite_reg[31]_i_591_n_3 ;
  wire \CurrentSprite_reg[31]_i_605_n_0 ;
  wire \CurrentSprite_reg[31]_i_605_n_1 ;
  wire \CurrentSprite_reg[31]_i_605_n_2 ;
  wire \CurrentSprite_reg[31]_i_605_n_3 ;
  wire \CurrentSprite_reg[31]_i_619_n_0 ;
  wire \CurrentSprite_reg[31]_i_619_n_1 ;
  wire \CurrentSprite_reg[31]_i_619_n_2 ;
  wire \CurrentSprite_reg[31]_i_619_n_3 ;
  wire \CurrentSprite_reg[31]_i_61_n_2 ;
  wire \CurrentSprite_reg[31]_i_61_n_3 ;
  wire \CurrentSprite_reg[31]_i_633_n_0 ;
  wire \CurrentSprite_reg[31]_i_633_n_1 ;
  wire \CurrentSprite_reg[31]_i_633_n_2 ;
  wire \CurrentSprite_reg[31]_i_633_n_3 ;
  wire \CurrentSprite_reg[31]_i_647_n_0 ;
  wire \CurrentSprite_reg[31]_i_647_n_1 ;
  wire \CurrentSprite_reg[31]_i_647_n_2 ;
  wire \CurrentSprite_reg[31]_i_647_n_3 ;
  wire \CurrentSprite_reg[31]_i_65_n_0 ;
  wire \CurrentSprite_reg[31]_i_65_n_1 ;
  wire \CurrentSprite_reg[31]_i_65_n_2 ;
  wire \CurrentSprite_reg[31]_i_65_n_3 ;
  wire \CurrentSprite_reg[31]_i_661_n_0 ;
  wire \CurrentSprite_reg[31]_i_661_n_1 ;
  wire \CurrentSprite_reg[31]_i_661_n_2 ;
  wire \CurrentSprite_reg[31]_i_661_n_3 ;
  wire \CurrentSprite_reg[31]_i_675_n_0 ;
  wire \CurrentSprite_reg[31]_i_675_n_1 ;
  wire \CurrentSprite_reg[31]_i_675_n_2 ;
  wire \CurrentSprite_reg[31]_i_675_n_3 ;
  wire \CurrentSprite_reg[31]_i_68_n_0 ;
  wire \CurrentSprite_reg[31]_i_68_n_1 ;
  wire \CurrentSprite_reg[31]_i_68_n_2 ;
  wire \CurrentSprite_reg[31]_i_68_n_3 ;
  wire \CurrentSprite_reg[31]_i_693_n_0 ;
  wire \CurrentSprite_reg[31]_i_693_n_1 ;
  wire \CurrentSprite_reg[31]_i_693_n_2 ;
  wire \CurrentSprite_reg[31]_i_693_n_3 ;
  wire \CurrentSprite_reg[31]_i_707_n_0 ;
  wire \CurrentSprite_reg[31]_i_707_n_1 ;
  wire \CurrentSprite_reg[31]_i_707_n_2 ;
  wire \CurrentSprite_reg[31]_i_707_n_3 ;
  wire \CurrentSprite_reg[31]_i_721_n_0 ;
  wire \CurrentSprite_reg[31]_i_721_n_1 ;
  wire \CurrentSprite_reg[31]_i_721_n_2 ;
  wire \CurrentSprite_reg[31]_i_721_n_3 ;
  wire \CurrentSprite_reg[31]_i_727_n_0 ;
  wire \CurrentSprite_reg[31]_i_727_n_1 ;
  wire \CurrentSprite_reg[31]_i_727_n_2 ;
  wire \CurrentSprite_reg[31]_i_727_n_3 ;
  wire \CurrentSprite_reg[31]_i_72_n_2 ;
  wire \CurrentSprite_reg[31]_i_72_n_3 ;
  wire \CurrentSprite_reg[31]_i_741_n_0 ;
  wire \CurrentSprite_reg[31]_i_741_n_1 ;
  wire \CurrentSprite_reg[31]_i_741_n_2 ;
  wire \CurrentSprite_reg[31]_i_741_n_3 ;
  wire \CurrentSprite_reg[31]_i_74_n_2 ;
  wire \CurrentSprite_reg[31]_i_74_n_3 ;
  wire \CurrentSprite_reg[31]_i_763_n_0 ;
  wire \CurrentSprite_reg[31]_i_763_n_1 ;
  wire \CurrentSprite_reg[31]_i_763_n_2 ;
  wire \CurrentSprite_reg[31]_i_763_n_3 ;
  wire \CurrentSprite_reg[31]_i_769_n_0 ;
  wire \CurrentSprite_reg[31]_i_769_n_1 ;
  wire \CurrentSprite_reg[31]_i_769_n_2 ;
  wire \CurrentSprite_reg[31]_i_769_n_3 ;
  wire \CurrentSprite_reg[31]_i_76_n_2 ;
  wire \CurrentSprite_reg[31]_i_76_n_3 ;
  wire \CurrentSprite_reg[31]_i_78_n_2 ;
  wire \CurrentSprite_reg[31]_i_78_n_3 ;
  wire \CurrentSprite_reg[31]_i_791_n_0 ;
  wire \CurrentSprite_reg[31]_i_791_n_1 ;
  wire \CurrentSprite_reg[31]_i_791_n_2 ;
  wire \CurrentSprite_reg[31]_i_791_n_3 ;
  wire \CurrentSprite_reg[31]_i_81_n_2 ;
  wire \CurrentSprite_reg[31]_i_81_n_3 ;
  wire \CurrentSprite_reg[31]_i_83_n_2 ;
  wire \CurrentSprite_reg[31]_i_83_n_3 ;
  wire \CurrentSprite_reg[31]_i_84_n_0 ;
  wire \CurrentSprite_reg[31]_i_84_n_1 ;
  wire \CurrentSprite_reg[31]_i_84_n_2 ;
  wire \CurrentSprite_reg[31]_i_84_n_3 ;
  wire \CurrentSprite_reg[31]_i_87_n_0 ;
  wire \CurrentSprite_reg[31]_i_87_n_1 ;
  wire \CurrentSprite_reg[31]_i_87_n_2 ;
  wire \CurrentSprite_reg[31]_i_87_n_3 ;
  wire \CurrentSprite_reg[31]_i_90_n_0 ;
  wire \CurrentSprite_reg[31]_i_90_n_1 ;
  wire \CurrentSprite_reg[31]_i_90_n_2 ;
  wire \CurrentSprite_reg[31]_i_90_n_3 ;
  wire \CurrentSprite_reg[31]_i_93_n_0 ;
  wire \CurrentSprite_reg[31]_i_93_n_1 ;
  wire \CurrentSprite_reg[31]_i_93_n_2 ;
  wire \CurrentSprite_reg[31]_i_93_n_3 ;
  wire \CurrentSprite_reg[31]_i_97_n_2 ;
  wire \CurrentSprite_reg[31]_i_97_n_3 ;
  wire \CurrentSprite_reg[31]_i_98_n_0 ;
  wire \CurrentSprite_reg[31]_i_98_n_1 ;
  wire \CurrentSprite_reg[31]_i_98_n_2 ;
  wire \CurrentSprite_reg[31]_i_98_n_3 ;
  wire \CurrentSprite_reg_n_0_[10] ;
  wire \CurrentSprite_reg_n_0_[11] ;
  wire \CurrentSprite_reg_n_0_[12] ;
  wire \CurrentSprite_reg_n_0_[13] ;
  wire \CurrentSprite_reg_n_0_[14] ;
  wire \CurrentSprite_reg_n_0_[15] ;
  wire \CurrentSprite_reg_n_0_[16] ;
  wire \CurrentSprite_reg_n_0_[17] ;
  wire \CurrentSprite_reg_n_0_[18] ;
  wire \CurrentSprite_reg_n_0_[19] ;
  wire \CurrentSprite_reg_n_0_[20] ;
  wire \CurrentSprite_reg_n_0_[21] ;
  wire \CurrentSprite_reg_n_0_[22] ;
  wire \CurrentSprite_reg_n_0_[23] ;
  wire \CurrentSprite_reg_n_0_[24] ;
  wire \CurrentSprite_reg_n_0_[25] ;
  wire \CurrentSprite_reg_n_0_[26] ;
  wire \CurrentSprite_reg_n_0_[27] ;
  wire \CurrentSprite_reg_n_0_[28] ;
  wire \CurrentSprite_reg_n_0_[29] ;
  wire \CurrentSprite_reg_n_0_[30] ;
  wire \CurrentSprite_reg_n_0_[31] ;
  wire \CurrentSprite_reg_n_0_[8] ;
  wire \CurrentSprite_reg_n_0_[9] ;
  wire [22:14]L;
  wire [8:0]NextScanline;
  wire \NextScanline[0]_i_1_n_0 ;
  wire \NextScanline[1]_i_1_n_0 ;
  wire \NextScanline[2]_i_1_n_0 ;
  wire \NextScanline[3]_i_1_n_0 ;
  wire \NextScanline[4]_i_1_n_0 ;
  wire \NextScanline[5]_i_1_n_0 ;
  wire \NextScanline[6]_i_1_n_0 ;
  wire \NextScanline[7]_i_1_n_0 ;
  wire \NextScanline[8]_i_1_n_0 ;
  wire \NextScanline[8]_i_2_n_0 ;
  wire \NextScanline[8]_i_3_n_0 ;
  wire \NextScanline[8]_i_4_n_0 ;
  wire \SOAMAddressCounter[0]_i_1_n_0 ;
  wire \SOAMAddressCounter[1]_i_1_n_0 ;
  wire \SOAMAddressCounter[2]_i_1_n_0 ;
  wire \SOAMAddressCounter[3]_i_1_n_0 ;
  wire \SOAMAddressCounter[4]_i_1_n_0 ;
  wire \SOAMAddressCounter[4]_i_2_n_0 ;
  wire \SOAMAddressCounter[4]_i_3_n_0 ;
  wire \SOAMAddressCounter[4]_i_4_n_0 ;
  wire \SOAMAddress[0] ;
  wire \SOAMAddress[1] ;
  wire \SOAMAddress[2] ;
  wire \SOAMAddress[3] ;
  wire \SOAMAddress[4] ;
  wire \SOAMBuffer[0][31]_i_1_n_0 ;
  wire \SOAMBuffer[10][31]_i_1_n_0 ;
  wire \SOAMBuffer[11][31]_i_1_n_0 ;
  wire \SOAMBuffer[12][31]_i_1_n_0 ;
  wire \SOAMBuffer[13][31]_i_1_n_0 ;
  wire \SOAMBuffer[14][31]_i_1_n_0 ;
  wire \SOAMBuffer[15][31]_i_1_n_0 ;
  wire \SOAMBuffer[16][31]_i_1_n_0 ;
  wire \SOAMBuffer[17][31]_i_1_n_0 ;
  wire \SOAMBuffer[18][31]_i_1_n_0 ;
  wire \SOAMBuffer[19][31]_i_1_n_0 ;
  wire \SOAMBuffer[1][31]_i_1_n_0 ;
  wire \SOAMBuffer[20][31]_i_1_n_0 ;
  wire \SOAMBuffer[21][31]_i_1_n_0 ;
  wire \SOAMBuffer[22][31]_i_1_n_0 ;
  wire \SOAMBuffer[23][31]_i_1_n_0 ;
  wire \SOAMBuffer[24][31]_i_1_n_0 ;
  wire \SOAMBuffer[25][31]_i_1_n_0 ;
  wire \SOAMBuffer[26][31]_i_1_n_0 ;
  wire \SOAMBuffer[27][31]_i_1_n_0 ;
  wire \SOAMBuffer[28][31]_i_1_n_0 ;
  wire \SOAMBuffer[29][31]_i_1_n_0 ;
  wire \SOAMBuffer[2][31]_i_1_n_0 ;
  wire \SOAMBuffer[30][31]_i_1_n_0 ;
  wire \SOAMBuffer[31][31]_i_1_n_0 ;
  wire \SOAMBuffer[3][31]_i_1_n_0 ;
  wire \SOAMBuffer[4][31]_i_1_n_0 ;
  wire \SOAMBuffer[5][31]_i_1_n_0 ;
  wire \SOAMBuffer[6][31]_i_1_n_0 ;
  wire \SOAMBuffer[7][31]_i_1_n_0 ;
  wire \SOAMBuffer[8][31]_i_1_n_0 ;
  wire \SOAMBuffer[9][31]_i_1_n_0 ;
  wire [31:0]\SOAMBuffer_reg[0]_30 ;
  wire [31:0]\SOAMBuffer_reg[10]_20 ;
  wire [31:0]\SOAMBuffer_reg[11]_19 ;
  wire [31:0]\SOAMBuffer_reg[12]_18 ;
  wire [31:0]\SOAMBuffer_reg[13]_17 ;
  wire [31:0]\SOAMBuffer_reg[14]_16 ;
  wire [31:0]\SOAMBuffer_reg[15]_15 ;
  wire [31:0]\SOAMBuffer_reg[16]_14 ;
  wire [31:0]\SOAMBuffer_reg[17]_13 ;
  wire [31:0]\SOAMBuffer_reg[18]_12 ;
  wire [31:0]\SOAMBuffer_reg[19]_11 ;
  wire [31:0]\SOAMBuffer_reg[1]_29 ;
  wire [31:0]\SOAMBuffer_reg[20]_10 ;
  wire [31:0]\SOAMBuffer_reg[21]_9 ;
  wire [31:0]\SOAMBuffer_reg[22]_8 ;
  wire [31:0]\SOAMBuffer_reg[23]_7 ;
  wire [31:0]\SOAMBuffer_reg[24]_6 ;
  wire [31:0]\SOAMBuffer_reg[25]_5 ;
  wire [31:0]\SOAMBuffer_reg[26]_4 ;
  wire [31:0]\SOAMBuffer_reg[27]_3 ;
  wire [31:0]\SOAMBuffer_reg[28]_2 ;
  wire [31:0]\SOAMBuffer_reg[29]_1 ;
  wire [31:0]\SOAMBuffer_reg[2]_28 ;
  wire [31:0]\SOAMBuffer_reg[30]_0 ;
  wire [31:0]\SOAMBuffer_reg[3]_27 ;
  wire [31:0]\SOAMBuffer_reg[4]_26 ;
  wire [31:0]\SOAMBuffer_reg[5]_25 ;
  wire [31:0]\SOAMBuffer_reg[6]_24 ;
  wire [31:0]\SOAMBuffer_reg[7]_23 ;
  wire [31:0]\SOAMBuffer_reg[8]_22 ;
  wire [31:0]\SOAMBuffer_reg[9]_21 ;
  wire \SOAMBuffer_reg_n_0_[31][0] ;
  wire \SOAMBuffer_reg_n_0_[31][10] ;
  wire \SOAMBuffer_reg_n_0_[31][11] ;
  wire \SOAMBuffer_reg_n_0_[31][12] ;
  wire \SOAMBuffer_reg_n_0_[31][13] ;
  wire \SOAMBuffer_reg_n_0_[31][1] ;
  wire \SOAMBuffer_reg_n_0_[31][23] ;
  wire \SOAMBuffer_reg_n_0_[31][24] ;
  wire \SOAMBuffer_reg_n_0_[31][25] ;
  wire \SOAMBuffer_reg_n_0_[31][26] ;
  wire \SOAMBuffer_reg_n_0_[31][27] ;
  wire \SOAMBuffer_reg_n_0_[31][28] ;
  wire \SOAMBuffer_reg_n_0_[31][29] ;
  wire \SOAMBuffer_reg_n_0_[31][2] ;
  wire \SOAMBuffer_reg_n_0_[31][30] ;
  wire \SOAMBuffer_reg_n_0_[31][31] ;
  wire \SOAMBuffer_reg_n_0_[31][3] ;
  wire \SOAMBuffer_reg_n_0_[31][4] ;
  wire \SOAMBuffer_reg_n_0_[31][5] ;
  wire \SOAMBuffer_reg_n_0_[31][6] ;
  wire \SOAMBuffer_reg_n_0_[31][7] ;
  wire \SOAMBuffer_reg_n_0_[31][8] ;
  wire \SOAMBuffer_reg_n_0_[31][9] ;
  wire [31:0]SOAMData;
  wire SOAMReadEnable;
  wire SOAMReadEnable_i_1_n_0;
  wire \ScanLineCounter[8]_i_1_n_0 ;
  wire \ScanLineCounter[8]_i_2_n_0 ;
  wire \ScanLineCounter_reg_n_0_[0] ;
  wire \ScanLineCounter_reg_n_0_[1] ;
  wire \ScanLineCounter_reg_n_0_[2] ;
  wire \ScanLineCounter_reg_n_0_[3] ;
  wire \ScanLineCounter_reg_n_0_[4] ;
  wire \ScanLineCounter_reg_n_0_[5] ;
  wire \ScanLineCounter_reg_n_0_[6] ;
  wire \ScanLineCounter_reg_n_0_[7] ;
  wire \ScanLineCounter_reg_n_0_[8] ;
  wire [13:0]SpriteOffset;
  wire [13:6]SpriteOffset0;
  wire \SpriteOffset[0]_i_1_n_0 ;
  wire \SpriteOffset[13]_i_1_n_0 ;
  wire \SpriteOffset[13]_i_2_n_0 ;
  wire \SpriteOffset[13]_i_3_n_0 ;
  wire \SpriteOffset[13]_i_4_n_0 ;
  wire \SpriteOffset[13]_i_5_n_0 ;
  wire \SpriteOffset[13]_i_6_n_0 ;
  wire \SpriteOffset[13]_i_7_n_0 ;
  wire \SpriteOffset[13]_i_8_n_0 ;
  wire \SpriteOffset[13]_i_9_n_0 ;
  wire [15:0]SpriteROMAddr;
  wire [15:2]SpriteROMAddr0;
  wire \SpriteROMAddr[15]_i_1_n_0 ;
  wire \SpriteROMAddr[15]_i_3_n_0 ;
  wire \SpriteROMAddr[15]_i_4_n_0 ;
  wire \SpriteROMAddr[5]_i_2_n_0 ;
  wire \SpriteROMAddr[5]_i_3_n_0 ;
  wire \SpriteROMAddr[5]_i_4_n_0 ;
  wire \SpriteROMAddr_reg[13]_i_1_n_0 ;
  wire \SpriteROMAddr_reg[13]_i_1_n_1 ;
  wire \SpriteROMAddr_reg[13]_i_1_n_2 ;
  wire \SpriteROMAddr_reg[13]_i_1_n_3 ;
  wire \SpriteROMAddr_reg[15]_i_2_n_3 ;
  wire \SpriteROMAddr_reg[5]_i_1_n_0 ;
  wire \SpriteROMAddr_reg[5]_i_1_n_1 ;
  wire \SpriteROMAddr_reg[5]_i_1_n_2 ;
  wire \SpriteROMAddr_reg[5]_i_1_n_3 ;
  wire \SpriteROMAddr_reg[9]_i_1_n_0 ;
  wire \SpriteROMAddr_reg[9]_i_1_n_1 ;
  wire \SpriteROMAddr_reg[9]_i_1_n_2 ;
  wire \SpriteROMAddr_reg[9]_i_1_n_3 ;
  wire [7:0]SpriteROMDatout;
  wire [2:0]SpriteY;
  wire [2:1]SpriteY0;
  wire \SpriteY[0]_i_1_n_0 ;
  wire bufferFull;
  wire bufferFull2_reg_srl2_n_0;
  wire bufferFull3;
  wire clk;
  wire [9:1]data0;
  wire endLineBit;
  wire endLineBit_i_2_n_0;
  wire endLineBit_i_3_n_0;
  wire isBufferReady;
  wire isBufferReady_i_1_n_0;
  wire isEndLine;
  wire \pixelData1_reg_n_0_[0] ;
  wire \pixelData1_reg_n_0_[1] ;
  wire \pixelData1_reg_n_0_[2] ;
  wire \pixelData1_reg_n_0_[3] ;
  wire \pixelData1_reg_n_0_[4] ;
  wire \pixelData1_reg_n_0_[5] ;
  wire \pixelData1_reg_n_0_[6] ;
  wire \pixelData1_reg_n_0_[7] ;
  wire \pixelData4_reg[0]_srl3_n_0 ;
  wire \pixelData4_reg[1]_srl3_n_0 ;
  wire \pixelData4_reg[2]_srl3_n_0 ;
  wire \pixelData4_reg[3]_srl3_n_0 ;
  wire \pixelData4_reg[4]_srl3_n_0 ;
  wire \pixelData4_reg[5]_srl3_n_0 ;
  wire \pixelData4_reg[6]_srl3_n_0 ;
  wire \pixelData4_reg[7]_srl3_i_1_n_0 ;
  wire \pixelData4_reg[7]_srl3_n_0 ;
  wire xCounter;
  wire \xCounter[0]_i_1_n_0 ;
  wire \xCounter[1]_i_1_n_0 ;
  wire \xCounter[1]_i_2_n_0 ;
  wire \xCounter[2]_i_1_n_0 ;
  wire \xCounter[2]_i_2_n_0 ;
  wire \xCounter[2]_i_3_n_0 ;
  wire \xCounter[3]_i_1_n_0 ;
  wire \xCounter[3]_i_2_n_0 ;
  wire \xCounter[4]_i_1_n_0 ;
  wire \xCounter[4]_i_2_n_0 ;
  wire \xCounter[5]_i_1_n_0 ;
  wire \xCounter[5]_i_2_n_0 ;
  wire \xCounter[6]_i_1_n_0 ;
  wire \xCounter[6]_i_2_n_0 ;
  wire \xCounter[7]_i_1_n_0 ;
  wire \xCounter[7]_i_2_n_0 ;
  wire \xCounter[8]_i_1_n_0 ;
  wire \xCounter[8]_i_2_n_0 ;
  wire \xCounter[9]_i_2_n_0 ;
  wire \xCounter[9]_i_3_n_0 ;
  wire \xCounter[9]_i_5_n_0 ;
  wire \xCounter[9]_i_6_n_0 ;
  wire \xCounter[9]_i_7_n_0 ;
  wire \xCounter_reg_n_0_[0] ;
  wire \xCounter_reg_n_0_[1] ;
  wire \xCounter_reg_n_0_[2] ;
  wire \xCounter_reg_n_0_[3] ;
  wire \xCounter_reg_n_0_[4] ;
  wire \xCounter_reg_n_0_[5] ;
  wire \xCounter_reg_n_0_[6] ;
  wire \xCounter_reg_n_0_[7] ;
  wire \xCounter_reg_n_0_[8] ;
  wire \xCounter_reg_n_0_[9] ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_101_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_104_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_107_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_110_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_110_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_111_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_111_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_112_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_112_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_113_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_113_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_114_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_117_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_120_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_120_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_121_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_121_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_122_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_122_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_123_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_123_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_125_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_125_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_126_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_126_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_128_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_128_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_129_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_129_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_130_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_130_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_131_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_131_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_132_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_132_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_133_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_133_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_134_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_134_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_135_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_135_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_136_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_139_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_143_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_143_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_144_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_144_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_145_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_145_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_146_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_146_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_15_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_150_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_150_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_151_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_151_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_152_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_152_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_153_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_153_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_156_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_156_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_157_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_157_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_158_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_158_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_159_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_159_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_162_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_162_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_163_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_163_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_164_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_164_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_165_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_165_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_170_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_173_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_177_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_191_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_194_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_197_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_200_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_203_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_206_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_209_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_212_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_215_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_218_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_22_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_22_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_221_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_224_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_23_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_235_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_24_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_249_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_25_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_255_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_258_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_269_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_27_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_28_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_283_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_289_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_29_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_292_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_295_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_298_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_30_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_301_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_315_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_318_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_321_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_324_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_327_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_33_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_330_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_333_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_336_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_339_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_34_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_342_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_345_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_348_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_351_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_354_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_357_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_371_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_374_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_377_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_380_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_383_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_386_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_389_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_392_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_395_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_398_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_401_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_404_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_407_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_41_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_41_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_410_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_413_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_416_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_419_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_42_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_42_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_445_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_459_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_473_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_487_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_501_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_515_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_537_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_559_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_573_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_591_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_605_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_61_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_61_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_619_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_62_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_62_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_633_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_647_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_65_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_661_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_675_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_68_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_693_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_707_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_71_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_71_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_72_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_72_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_721_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_727_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_73_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_73_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_74_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_74_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_741_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_75_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_75_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_76_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_76_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_763_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_769_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_77_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_77_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_78_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_78_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_791_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_80_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_80_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_81_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_81_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_82_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_82_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_83_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_83_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_84_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_87_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_90_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_93_O_UNCONNECTED ;
  wire [3:1]\NLW_CurrentSprite_reg[31]_i_96_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_96_O_UNCONNECTED ;
  wire [3:2]\NLW_CurrentSprite_reg[31]_i_97_CO_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_97_O_UNCONNECTED ;
  wire [3:0]\NLW_CurrentSprite_reg[31]_i_98_O_UNCONNECTED ;
  wire [3:1]\NLW_SpriteROMAddr_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_SpriteROMAddr_reg[15]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \BufferData[7]_i_1 
       (.I0(bufferFull),
        .O(\BufferData[7]_i_1_n_0 ));
  FDRE \BufferData_reg[0] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[0]_srl3_n_0 ),
        .Q(BufferData[0]),
        .R(1'b0));
  FDRE \BufferData_reg[1] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[1]_srl3_n_0 ),
        .Q(BufferData[1]),
        .R(1'b0));
  FDRE \BufferData_reg[2] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[2]_srl3_n_0 ),
        .Q(BufferData[2]),
        .R(1'b0));
  FDRE \BufferData_reg[3] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[3]_srl3_n_0 ),
        .Q(BufferData[3]),
        .R(1'b0));
  FDRE \BufferData_reg[4] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[4]_srl3_n_0 ),
        .Q(BufferData[4]),
        .R(1'b0));
  FDRE \BufferData_reg[5] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[5]_srl3_n_0 ),
        .Q(BufferData[5]),
        .R(1'b0));
  FDRE \BufferData_reg[6] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[6]_srl3_n_0 ),
        .Q(BufferData[6]),
        .R(1'b0));
  FDRE \BufferData_reg[7] 
       (.C(clk),
        .CE(\BufferData[7]_i_1_n_0 ),
        .D(\pixelData4_reg[7]_srl3_n_0 ),
        .Q(BufferData[7]),
        .R(1'b0));
  FDRE BufferEnableWrite_reg
       (.C(clk),
        .CE(1'b1),
        .D(\BufferData[7]_i_1_n_0 ),
        .Q(BufferEnableWrite),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[0]_i_1 
       (.I0(\CurrentSprite[0]_i_2_n_0 ),
        .I1(\CurrentSprite[0]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[0]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[0]_i_5_n_0 ),
        .O(\CurrentSprite[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[0]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [0]),
        .I3(\SOAMBuffer_reg_n_0_[31][0] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [0]),
        .O(\CurrentSprite[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [0]),
        .I1(\SOAMBuffer_reg[28]_2 [0]),
        .I2(\SOAMBuffer_reg[27]_3 [0]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [0]),
        .I1(\SOAMBuffer_reg[10]_20 [0]),
        .I2(\SOAMBuffer_reg[9]_21 [0]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [0]),
        .I1(\SOAMBuffer_reg[13]_17 [0]),
        .I2(\SOAMBuffer_reg[12]_18 [0]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [0]),
        .I1(\SOAMBuffer_reg[7]_23 [0]),
        .I2(\SOAMBuffer_reg[6]_24 [0]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [0]),
        .I1(\SOAMBuffer_reg[4]_26 [0]),
        .I2(\SOAMBuffer_reg[3]_27 [0]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[0]_i_2 
       (.I0(\CurrentSprite[0]_i_6_n_0 ),
        .I1(\CurrentSprite[0]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[0]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[0]_i_3 
       (.I0(\CurrentSprite[0]_i_9_n_0 ),
        .I1(\CurrentSprite[0]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[0]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[0]_i_4 
       (.I0(\CurrentSprite[0]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[0]_i_13_n_0 ),
        .I4(\CurrentSprite[0]_i_14_n_0 ),
        .O(\CurrentSprite[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[0]_i_5 
       (.I0(\CurrentSprite[0]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [0]),
        .I5(\SOAMBuffer_reg[0]_30 [0]),
        .O(\CurrentSprite[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [0]),
        .I1(\SOAMBuffer_reg[16]_14 [0]),
        .I2(\SOAMBuffer_reg[15]_15 [0]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [0]),
        .I1(\SOAMBuffer_reg[22]_8 [0]),
        .I2(\SOAMBuffer_reg[21]_9 [0]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [0]),
        .I1(\SOAMBuffer_reg[19]_11 [0]),
        .I2(\SOAMBuffer_reg[18]_12 [0]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[0]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [0]),
        .I1(\SOAMBuffer_reg[25]_5 [0]),
        .I2(\SOAMBuffer_reg[24]_6 [0]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[10]_i_1 
       (.I0(\CurrentSprite[10]_i_2_n_0 ),
        .I1(\CurrentSprite[10]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[10]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[10]_i_5_n_0 ),
        .O(\CurrentSprite[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[10]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [10]),
        .I3(\SOAMBuffer_reg_n_0_[31][10] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [10]),
        .O(\CurrentSprite[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [10]),
        .I1(\SOAMBuffer_reg[28]_2 [10]),
        .I2(\SOAMBuffer_reg[27]_3 [10]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [10]),
        .I1(\SOAMBuffer_reg[10]_20 [10]),
        .I2(\SOAMBuffer_reg[9]_21 [10]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [10]),
        .I1(\SOAMBuffer_reg[13]_17 [10]),
        .I2(\SOAMBuffer_reg[12]_18 [10]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [10]),
        .I1(\SOAMBuffer_reg[7]_23 [10]),
        .I2(\SOAMBuffer_reg[6]_24 [10]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [10]),
        .I1(\SOAMBuffer_reg[4]_26 [10]),
        .I2(\SOAMBuffer_reg[3]_27 [10]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[10]_i_2 
       (.I0(\CurrentSprite[10]_i_6_n_0 ),
        .I1(\CurrentSprite[10]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[10]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[10]_i_3 
       (.I0(\CurrentSprite[10]_i_9_n_0 ),
        .I1(\CurrentSprite[10]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[10]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[10]_i_4 
       (.I0(\CurrentSprite[10]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[10]_i_13_n_0 ),
        .I4(\CurrentSprite[10]_i_14_n_0 ),
        .O(\CurrentSprite[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[10]_i_5 
       (.I0(\CurrentSprite[10]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [10]),
        .I5(\SOAMBuffer_reg[0]_30 [10]),
        .O(\CurrentSprite[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [10]),
        .I1(\SOAMBuffer_reg[16]_14 [10]),
        .I2(\SOAMBuffer_reg[15]_15 [10]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [10]),
        .I1(\SOAMBuffer_reg[22]_8 [10]),
        .I2(\SOAMBuffer_reg[21]_9 [10]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [10]),
        .I1(\SOAMBuffer_reg[19]_11 [10]),
        .I2(\SOAMBuffer_reg[18]_12 [10]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[10]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [10]),
        .I1(\SOAMBuffer_reg[25]_5 [10]),
        .I2(\SOAMBuffer_reg[24]_6 [10]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[11]_i_1 
       (.I0(\CurrentSprite[11]_i_2_n_0 ),
        .I1(\CurrentSprite[11]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[11]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[11]_i_5_n_0 ),
        .O(\CurrentSprite[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[11]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [11]),
        .I3(\SOAMBuffer_reg_n_0_[31][11] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [11]),
        .O(\CurrentSprite[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [11]),
        .I1(\SOAMBuffer_reg[28]_2 [11]),
        .I2(\SOAMBuffer_reg[27]_3 [11]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [11]),
        .I1(\SOAMBuffer_reg[10]_20 [11]),
        .I2(\SOAMBuffer_reg[9]_21 [11]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [11]),
        .I1(\SOAMBuffer_reg[13]_17 [11]),
        .I2(\SOAMBuffer_reg[12]_18 [11]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [11]),
        .I1(\SOAMBuffer_reg[7]_23 [11]),
        .I2(\SOAMBuffer_reg[6]_24 [11]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [11]),
        .I1(\SOAMBuffer_reg[4]_26 [11]),
        .I2(\SOAMBuffer_reg[3]_27 [11]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[11]_i_2 
       (.I0(\CurrentSprite[11]_i_6_n_0 ),
        .I1(\CurrentSprite[11]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[11]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[11]_i_3 
       (.I0(\CurrentSprite[11]_i_9_n_0 ),
        .I1(\CurrentSprite[11]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[11]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[11]_i_4 
       (.I0(\CurrentSprite[11]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[11]_i_13_n_0 ),
        .I4(\CurrentSprite[11]_i_14_n_0 ),
        .O(\CurrentSprite[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[11]_i_5 
       (.I0(\CurrentSprite[11]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [11]),
        .I5(\SOAMBuffer_reg[0]_30 [11]),
        .O(\CurrentSprite[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [11]),
        .I1(\SOAMBuffer_reg[16]_14 [11]),
        .I2(\SOAMBuffer_reg[15]_15 [11]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [11]),
        .I1(\SOAMBuffer_reg[22]_8 [11]),
        .I2(\SOAMBuffer_reg[21]_9 [11]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [11]),
        .I1(\SOAMBuffer_reg[19]_11 [11]),
        .I2(\SOAMBuffer_reg[18]_12 [11]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[11]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [11]),
        .I1(\SOAMBuffer_reg[25]_5 [11]),
        .I2(\SOAMBuffer_reg[24]_6 [11]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[12]_i_1 
       (.I0(\CurrentSprite[12]_i_2_n_0 ),
        .I1(\CurrentSprite[12]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[12]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[12]_i_5_n_0 ),
        .O(\CurrentSprite[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[12]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [12]),
        .I3(\SOAMBuffer_reg_n_0_[31][12] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [12]),
        .O(\CurrentSprite[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [12]),
        .I1(\SOAMBuffer_reg[28]_2 [12]),
        .I2(\SOAMBuffer_reg[27]_3 [12]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [12]),
        .I1(\SOAMBuffer_reg[10]_20 [12]),
        .I2(\SOAMBuffer_reg[9]_21 [12]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [12]),
        .I1(\SOAMBuffer_reg[13]_17 [12]),
        .I2(\SOAMBuffer_reg[12]_18 [12]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [12]),
        .I1(\SOAMBuffer_reg[7]_23 [12]),
        .I2(\SOAMBuffer_reg[6]_24 [12]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [12]),
        .I1(\SOAMBuffer_reg[4]_26 [12]),
        .I2(\SOAMBuffer_reg[3]_27 [12]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[12]_i_2 
       (.I0(\CurrentSprite[12]_i_6_n_0 ),
        .I1(\CurrentSprite[12]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[12]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[12]_i_3 
       (.I0(\CurrentSprite[12]_i_9_n_0 ),
        .I1(\CurrentSprite[12]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[12]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[12]_i_4 
       (.I0(\CurrentSprite[12]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[12]_i_13_n_0 ),
        .I4(\CurrentSprite[12]_i_14_n_0 ),
        .O(\CurrentSprite[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[12]_i_5 
       (.I0(\CurrentSprite[12]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [12]),
        .I5(\SOAMBuffer_reg[0]_30 [12]),
        .O(\CurrentSprite[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [12]),
        .I1(\SOAMBuffer_reg[16]_14 [12]),
        .I2(\SOAMBuffer_reg[15]_15 [12]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [12]),
        .I1(\SOAMBuffer_reg[22]_8 [12]),
        .I2(\SOAMBuffer_reg[21]_9 [12]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [12]),
        .I1(\SOAMBuffer_reg[19]_11 [12]),
        .I2(\SOAMBuffer_reg[18]_12 [12]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[12]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [12]),
        .I1(\SOAMBuffer_reg[25]_5 [12]),
        .I2(\SOAMBuffer_reg[24]_6 [12]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[13]_i_1 
       (.I0(\CurrentSprite[13]_i_2_n_0 ),
        .I1(\CurrentSprite[13]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[13]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[13]_i_5_n_0 ),
        .O(\CurrentSprite[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[13]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [13]),
        .I3(\SOAMBuffer_reg_n_0_[31][13] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [13]),
        .O(\CurrentSprite[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [13]),
        .I1(\SOAMBuffer_reg[28]_2 [13]),
        .I2(\SOAMBuffer_reg[27]_3 [13]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [13]),
        .I1(\SOAMBuffer_reg[10]_20 [13]),
        .I2(\SOAMBuffer_reg[9]_21 [13]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [13]),
        .I1(\SOAMBuffer_reg[13]_17 [13]),
        .I2(\SOAMBuffer_reg[12]_18 [13]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [13]),
        .I1(\SOAMBuffer_reg[7]_23 [13]),
        .I2(\SOAMBuffer_reg[6]_24 [13]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [13]),
        .I1(\SOAMBuffer_reg[4]_26 [13]),
        .I2(\SOAMBuffer_reg[3]_27 [13]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[13]_i_2 
       (.I0(\CurrentSprite[13]_i_6_n_0 ),
        .I1(\CurrentSprite[13]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[13]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[13]_i_3 
       (.I0(\CurrentSprite[13]_i_9_n_0 ),
        .I1(\CurrentSprite[13]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[13]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[13]_i_4 
       (.I0(\CurrentSprite[13]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[13]_i_13_n_0 ),
        .I4(\CurrentSprite[13]_i_14_n_0 ),
        .O(\CurrentSprite[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[13]_i_5 
       (.I0(\CurrentSprite[13]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [13]),
        .I5(\SOAMBuffer_reg[0]_30 [13]),
        .O(\CurrentSprite[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [13]),
        .I1(\SOAMBuffer_reg[16]_14 [13]),
        .I2(\SOAMBuffer_reg[15]_15 [13]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [13]),
        .I1(\SOAMBuffer_reg[22]_8 [13]),
        .I2(\SOAMBuffer_reg[21]_9 [13]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [13]),
        .I1(\SOAMBuffer_reg[19]_11 [13]),
        .I2(\SOAMBuffer_reg[18]_12 [13]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[13]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [13]),
        .I1(\SOAMBuffer_reg[25]_5 [13]),
        .I2(\SOAMBuffer_reg[24]_6 [13]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[14]_i_1 
       (.I0(\CurrentSprite[14]_i_2_n_0 ),
        .I1(\CurrentSprite[14]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[14]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[14]_i_5_n_0 ),
        .O(\CurrentSprite[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[14]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [14]),
        .I3(L[14]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [14]),
        .O(\CurrentSprite[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [14]),
        .I1(\SOAMBuffer_reg[28]_2 [14]),
        .I2(\SOAMBuffer_reg[27]_3 [14]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [14]),
        .I1(\SOAMBuffer_reg[10]_20 [14]),
        .I2(\SOAMBuffer_reg[9]_21 [14]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [14]),
        .I1(\SOAMBuffer_reg[13]_17 [14]),
        .I2(\SOAMBuffer_reg[12]_18 [14]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [14]),
        .I1(\SOAMBuffer_reg[7]_23 [14]),
        .I2(\SOAMBuffer_reg[6]_24 [14]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [14]),
        .I1(\SOAMBuffer_reg[4]_26 [14]),
        .I2(\SOAMBuffer_reg[3]_27 [14]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[14]_i_2 
       (.I0(\CurrentSprite[14]_i_6_n_0 ),
        .I1(\CurrentSprite[14]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[14]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[14]_i_3 
       (.I0(\CurrentSprite[14]_i_9_n_0 ),
        .I1(\CurrentSprite[14]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[14]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[14]_i_4 
       (.I0(\CurrentSprite[14]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[14]_i_13_n_0 ),
        .I4(\CurrentSprite[14]_i_14_n_0 ),
        .O(\CurrentSprite[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[14]_i_5 
       (.I0(\CurrentSprite[14]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [14]),
        .I5(\SOAMBuffer_reg[0]_30 [14]),
        .O(\CurrentSprite[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [14]),
        .I1(\SOAMBuffer_reg[16]_14 [14]),
        .I2(\SOAMBuffer_reg[15]_15 [14]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [14]),
        .I1(\SOAMBuffer_reg[22]_8 [14]),
        .I2(\SOAMBuffer_reg[21]_9 [14]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [14]),
        .I1(\SOAMBuffer_reg[19]_11 [14]),
        .I2(\SOAMBuffer_reg[18]_12 [14]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[14]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [14]),
        .I1(\SOAMBuffer_reg[25]_5 [14]),
        .I2(\SOAMBuffer_reg[24]_6 [14]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[15]_i_1 
       (.I0(\CurrentSprite[15]_i_2_n_0 ),
        .I1(\CurrentSprite[15]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[15]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[15]_i_5_n_0 ),
        .O(\CurrentSprite[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[15]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [15]),
        .I3(L[15]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [15]),
        .O(\CurrentSprite[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [15]),
        .I1(\SOAMBuffer_reg[28]_2 [15]),
        .I2(\SOAMBuffer_reg[27]_3 [15]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [15]),
        .I1(\SOAMBuffer_reg[10]_20 [15]),
        .I2(\SOAMBuffer_reg[9]_21 [15]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [15]),
        .I1(\SOAMBuffer_reg[13]_17 [15]),
        .I2(\SOAMBuffer_reg[12]_18 [15]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [15]),
        .I1(\SOAMBuffer_reg[7]_23 [15]),
        .I2(\SOAMBuffer_reg[6]_24 [15]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [15]),
        .I1(\SOAMBuffer_reg[4]_26 [15]),
        .I2(\SOAMBuffer_reg[3]_27 [15]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[15]_i_2 
       (.I0(\CurrentSprite[15]_i_6_n_0 ),
        .I1(\CurrentSprite[15]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[15]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[15]_i_3 
       (.I0(\CurrentSprite[15]_i_9_n_0 ),
        .I1(\CurrentSprite[15]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[15]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[15]_i_4 
       (.I0(\CurrentSprite[15]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[15]_i_13_n_0 ),
        .I4(\CurrentSprite[15]_i_14_n_0 ),
        .O(\CurrentSprite[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[15]_i_5 
       (.I0(\CurrentSprite[15]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [15]),
        .I5(\SOAMBuffer_reg[0]_30 [15]),
        .O(\CurrentSprite[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [15]),
        .I1(\SOAMBuffer_reg[16]_14 [15]),
        .I2(\SOAMBuffer_reg[15]_15 [15]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [15]),
        .I1(\SOAMBuffer_reg[22]_8 [15]),
        .I2(\SOAMBuffer_reg[21]_9 [15]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [15]),
        .I1(\SOAMBuffer_reg[19]_11 [15]),
        .I2(\SOAMBuffer_reg[18]_12 [15]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[15]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [15]),
        .I1(\SOAMBuffer_reg[25]_5 [15]),
        .I2(\SOAMBuffer_reg[24]_6 [15]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[16]_i_1 
       (.I0(\CurrentSprite[16]_i_2_n_0 ),
        .I1(\CurrentSprite[16]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[16]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[16]_i_5_n_0 ),
        .O(\CurrentSprite[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[16]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [16]),
        .I3(L[16]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [16]),
        .O(\CurrentSprite[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [16]),
        .I1(\SOAMBuffer_reg[28]_2 [16]),
        .I2(\SOAMBuffer_reg[27]_3 [16]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [16]),
        .I1(\SOAMBuffer_reg[10]_20 [16]),
        .I2(\SOAMBuffer_reg[9]_21 [16]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [16]),
        .I1(\SOAMBuffer_reg[13]_17 [16]),
        .I2(\SOAMBuffer_reg[12]_18 [16]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[16]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [16]),
        .I1(\SOAMBuffer_reg[7]_23 [16]),
        .I2(\SOAMBuffer_reg[6]_24 [16]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[16]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [16]),
        .I1(\SOAMBuffer_reg[4]_26 [16]),
        .I2(\SOAMBuffer_reg[3]_27 [16]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[16]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[16]_i_2 
       (.I0(\CurrentSprite[16]_i_6_n_0 ),
        .I1(\CurrentSprite[16]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[16]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[16]_i_3 
       (.I0(\CurrentSprite[16]_i_9_n_0 ),
        .I1(\CurrentSprite[16]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[16]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[16]_i_4 
       (.I0(\CurrentSprite[16]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[16]_i_13_n_0 ),
        .I4(\CurrentSprite[16]_i_14_n_0 ),
        .O(\CurrentSprite[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[16]_i_5 
       (.I0(\CurrentSprite[16]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [16]),
        .I5(\SOAMBuffer_reg[0]_30 [16]),
        .O(\CurrentSprite[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [16]),
        .I1(\SOAMBuffer_reg[16]_14 [16]),
        .I2(\SOAMBuffer_reg[15]_15 [16]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [16]),
        .I1(\SOAMBuffer_reg[22]_8 [16]),
        .I2(\SOAMBuffer_reg[21]_9 [16]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [16]),
        .I1(\SOAMBuffer_reg[19]_11 [16]),
        .I2(\SOAMBuffer_reg[18]_12 [16]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[16]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [16]),
        .I1(\SOAMBuffer_reg[25]_5 [16]),
        .I2(\SOAMBuffer_reg[24]_6 [16]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[17]_i_1 
       (.I0(\CurrentSprite[17]_i_2_n_0 ),
        .I1(\CurrentSprite[17]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[17]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[17]_i_5_n_0 ),
        .O(\CurrentSprite[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[17]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [17]),
        .I3(L[17]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [17]),
        .O(\CurrentSprite[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [17]),
        .I1(\SOAMBuffer_reg[28]_2 [17]),
        .I2(\SOAMBuffer_reg[27]_3 [17]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [17]),
        .I1(\SOAMBuffer_reg[10]_20 [17]),
        .I2(\SOAMBuffer_reg[9]_21 [17]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[17]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [17]),
        .I1(\SOAMBuffer_reg[13]_17 [17]),
        .I2(\SOAMBuffer_reg[12]_18 [17]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[17]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [17]),
        .I1(\SOAMBuffer_reg[7]_23 [17]),
        .I2(\SOAMBuffer_reg[6]_24 [17]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [17]),
        .I1(\SOAMBuffer_reg[4]_26 [17]),
        .I2(\SOAMBuffer_reg[3]_27 [17]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[17]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[17]_i_2 
       (.I0(\CurrentSprite[17]_i_6_n_0 ),
        .I1(\CurrentSprite[17]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[17]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[17]_i_3 
       (.I0(\CurrentSprite[17]_i_9_n_0 ),
        .I1(\CurrentSprite[17]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[17]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[17]_i_4 
       (.I0(\CurrentSprite[17]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[17]_i_13_n_0 ),
        .I4(\CurrentSprite[17]_i_14_n_0 ),
        .O(\CurrentSprite[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[17]_i_5 
       (.I0(\CurrentSprite[17]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [17]),
        .I5(\SOAMBuffer_reg[0]_30 [17]),
        .O(\CurrentSprite[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [17]),
        .I1(\SOAMBuffer_reg[16]_14 [17]),
        .I2(\SOAMBuffer_reg[15]_15 [17]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [17]),
        .I1(\SOAMBuffer_reg[22]_8 [17]),
        .I2(\SOAMBuffer_reg[21]_9 [17]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [17]),
        .I1(\SOAMBuffer_reg[19]_11 [17]),
        .I2(\SOAMBuffer_reg[18]_12 [17]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[17]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [17]),
        .I1(\SOAMBuffer_reg[25]_5 [17]),
        .I2(\SOAMBuffer_reg[24]_6 [17]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[18]_i_1 
       (.I0(\CurrentSprite[18]_i_2_n_0 ),
        .I1(\CurrentSprite[18]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[18]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[18]_i_5_n_0 ),
        .O(\CurrentSprite[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[18]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [18]),
        .I3(L[18]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [18]),
        .O(\CurrentSprite[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [18]),
        .I1(\SOAMBuffer_reg[28]_2 [18]),
        .I2(\SOAMBuffer_reg[27]_3 [18]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [18]),
        .I1(\SOAMBuffer_reg[10]_20 [18]),
        .I2(\SOAMBuffer_reg[9]_21 [18]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[18]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [18]),
        .I1(\SOAMBuffer_reg[13]_17 [18]),
        .I2(\SOAMBuffer_reg[12]_18 [18]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[18]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [18]),
        .I1(\SOAMBuffer_reg[7]_23 [18]),
        .I2(\SOAMBuffer_reg[6]_24 [18]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[18]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [18]),
        .I1(\SOAMBuffer_reg[4]_26 [18]),
        .I2(\SOAMBuffer_reg[3]_27 [18]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[18]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[18]_i_2 
       (.I0(\CurrentSprite[18]_i_6_n_0 ),
        .I1(\CurrentSprite[18]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[18]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[18]_i_3 
       (.I0(\CurrentSprite[18]_i_9_n_0 ),
        .I1(\CurrentSprite[18]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[18]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[18]_i_4 
       (.I0(\CurrentSprite[18]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[18]_i_13_n_0 ),
        .I4(\CurrentSprite[18]_i_14_n_0 ),
        .O(\CurrentSprite[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[18]_i_5 
       (.I0(\CurrentSprite[18]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [18]),
        .I5(\SOAMBuffer_reg[0]_30 [18]),
        .O(\CurrentSprite[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [18]),
        .I1(\SOAMBuffer_reg[16]_14 [18]),
        .I2(\SOAMBuffer_reg[15]_15 [18]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [18]),
        .I1(\SOAMBuffer_reg[22]_8 [18]),
        .I2(\SOAMBuffer_reg[21]_9 [18]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [18]),
        .I1(\SOAMBuffer_reg[19]_11 [18]),
        .I2(\SOAMBuffer_reg[18]_12 [18]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[18]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [18]),
        .I1(\SOAMBuffer_reg[25]_5 [18]),
        .I2(\SOAMBuffer_reg[24]_6 [18]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[19]_i_1 
       (.I0(\CurrentSprite[19]_i_2_n_0 ),
        .I1(\CurrentSprite[19]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[19]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[19]_i_5_n_0 ),
        .O(\CurrentSprite[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[19]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [19]),
        .I3(L[19]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [19]),
        .O(\CurrentSprite[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [19]),
        .I1(\SOAMBuffer_reg[28]_2 [19]),
        .I2(\SOAMBuffer_reg[27]_3 [19]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [19]),
        .I1(\SOAMBuffer_reg[10]_20 [19]),
        .I2(\SOAMBuffer_reg[9]_21 [19]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [19]),
        .I1(\SOAMBuffer_reg[13]_17 [19]),
        .I2(\SOAMBuffer_reg[12]_18 [19]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [19]),
        .I1(\SOAMBuffer_reg[7]_23 [19]),
        .I2(\SOAMBuffer_reg[6]_24 [19]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [19]),
        .I1(\SOAMBuffer_reg[4]_26 [19]),
        .I2(\SOAMBuffer_reg[3]_27 [19]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[19]_i_2 
       (.I0(\CurrentSprite[19]_i_6_n_0 ),
        .I1(\CurrentSprite[19]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[19]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[19]_i_3 
       (.I0(\CurrentSprite[19]_i_9_n_0 ),
        .I1(\CurrentSprite[19]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[19]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[19]_i_4 
       (.I0(\CurrentSprite[19]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[19]_i_13_n_0 ),
        .I4(\CurrentSprite[19]_i_14_n_0 ),
        .O(\CurrentSprite[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[19]_i_5 
       (.I0(\CurrentSprite[19]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [19]),
        .I5(\SOAMBuffer_reg[0]_30 [19]),
        .O(\CurrentSprite[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [19]),
        .I1(\SOAMBuffer_reg[16]_14 [19]),
        .I2(\SOAMBuffer_reg[15]_15 [19]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [19]),
        .I1(\SOAMBuffer_reg[22]_8 [19]),
        .I2(\SOAMBuffer_reg[21]_9 [19]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [19]),
        .I1(\SOAMBuffer_reg[19]_11 [19]),
        .I2(\SOAMBuffer_reg[18]_12 [19]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[19]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [19]),
        .I1(\SOAMBuffer_reg[25]_5 [19]),
        .I2(\SOAMBuffer_reg[24]_6 [19]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[1]_i_1 
       (.I0(\CurrentSprite[1]_i_2_n_0 ),
        .I1(\CurrentSprite[1]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[1]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[1]_i_5_n_0 ),
        .O(\CurrentSprite[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[1]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [1]),
        .I3(\SOAMBuffer_reg_n_0_[31][1] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [1]),
        .O(\CurrentSprite[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [1]),
        .I1(\SOAMBuffer_reg[28]_2 [1]),
        .I2(\SOAMBuffer_reg[27]_3 [1]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [1]),
        .I1(\SOAMBuffer_reg[10]_20 [1]),
        .I2(\SOAMBuffer_reg[9]_21 [1]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [1]),
        .I1(\SOAMBuffer_reg[13]_17 [1]),
        .I2(\SOAMBuffer_reg[12]_18 [1]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [1]),
        .I1(\SOAMBuffer_reg[7]_23 [1]),
        .I2(\SOAMBuffer_reg[6]_24 [1]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [1]),
        .I1(\SOAMBuffer_reg[4]_26 [1]),
        .I2(\SOAMBuffer_reg[3]_27 [1]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[1]_i_2 
       (.I0(\CurrentSprite[1]_i_6_n_0 ),
        .I1(\CurrentSprite[1]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[1]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[1]_i_3 
       (.I0(\CurrentSprite[1]_i_9_n_0 ),
        .I1(\CurrentSprite[1]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[1]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[1]_i_4 
       (.I0(\CurrentSprite[1]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[1]_i_13_n_0 ),
        .I4(\CurrentSprite[1]_i_14_n_0 ),
        .O(\CurrentSprite[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[1]_i_5 
       (.I0(\CurrentSprite[1]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [1]),
        .I5(\SOAMBuffer_reg[0]_30 [1]),
        .O(\CurrentSprite[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [1]),
        .I1(\SOAMBuffer_reg[16]_14 [1]),
        .I2(\SOAMBuffer_reg[15]_15 [1]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [1]),
        .I1(\SOAMBuffer_reg[22]_8 [1]),
        .I2(\SOAMBuffer_reg[21]_9 [1]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [1]),
        .I1(\SOAMBuffer_reg[19]_11 [1]),
        .I2(\SOAMBuffer_reg[18]_12 [1]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[1]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [1]),
        .I1(\SOAMBuffer_reg[25]_5 [1]),
        .I2(\SOAMBuffer_reg[24]_6 [1]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[20]_i_1 
       (.I0(\CurrentSprite[20]_i_2_n_0 ),
        .I1(\CurrentSprite[20]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[20]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[20]_i_5_n_0 ),
        .O(\CurrentSprite[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[20]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [20]),
        .I3(L[20]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [20]),
        .O(\CurrentSprite[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [20]),
        .I1(\SOAMBuffer_reg[28]_2 [20]),
        .I2(\SOAMBuffer_reg[27]_3 [20]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [20]),
        .I1(\SOAMBuffer_reg[10]_20 [20]),
        .I2(\SOAMBuffer_reg[9]_21 [20]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [20]),
        .I1(\SOAMBuffer_reg[13]_17 [20]),
        .I2(\SOAMBuffer_reg[12]_18 [20]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [20]),
        .I1(\SOAMBuffer_reg[7]_23 [20]),
        .I2(\SOAMBuffer_reg[6]_24 [20]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[20]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [20]),
        .I1(\SOAMBuffer_reg[4]_26 [20]),
        .I2(\SOAMBuffer_reg[3]_27 [20]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[20]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[20]_i_2 
       (.I0(\CurrentSprite[20]_i_6_n_0 ),
        .I1(\CurrentSprite[20]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[20]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[20]_i_3 
       (.I0(\CurrentSprite[20]_i_9_n_0 ),
        .I1(\CurrentSprite[20]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[20]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[20]_i_4 
       (.I0(\CurrentSprite[20]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[20]_i_13_n_0 ),
        .I4(\CurrentSprite[20]_i_14_n_0 ),
        .O(\CurrentSprite[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[20]_i_5 
       (.I0(\CurrentSprite[20]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [20]),
        .I5(\SOAMBuffer_reg[0]_30 [20]),
        .O(\CurrentSprite[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [20]),
        .I1(\SOAMBuffer_reg[16]_14 [20]),
        .I2(\SOAMBuffer_reg[15]_15 [20]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [20]),
        .I1(\SOAMBuffer_reg[22]_8 [20]),
        .I2(\SOAMBuffer_reg[21]_9 [20]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [20]),
        .I1(\SOAMBuffer_reg[19]_11 [20]),
        .I2(\SOAMBuffer_reg[18]_12 [20]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[20]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [20]),
        .I1(\SOAMBuffer_reg[25]_5 [20]),
        .I2(\SOAMBuffer_reg[24]_6 [20]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[21]_i_1 
       (.I0(\CurrentSprite[21]_i_2_n_0 ),
        .I1(\CurrentSprite[21]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[21]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[21]_i_5_n_0 ),
        .O(\CurrentSprite[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[21]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [21]),
        .I3(L[21]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [21]),
        .O(\CurrentSprite[21]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [21]),
        .I1(\SOAMBuffer_reg[28]_2 [21]),
        .I2(\SOAMBuffer_reg[27]_3 [21]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [21]),
        .I1(\SOAMBuffer_reg[10]_20 [21]),
        .I2(\SOAMBuffer_reg[9]_21 [21]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[21]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [21]),
        .I1(\SOAMBuffer_reg[13]_17 [21]),
        .I2(\SOAMBuffer_reg[12]_18 [21]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[21]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [21]),
        .I1(\SOAMBuffer_reg[7]_23 [21]),
        .I2(\SOAMBuffer_reg[6]_24 [21]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[21]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [21]),
        .I1(\SOAMBuffer_reg[4]_26 [21]),
        .I2(\SOAMBuffer_reg[3]_27 [21]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[21]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[21]_i_2 
       (.I0(\CurrentSprite[21]_i_6_n_0 ),
        .I1(\CurrentSprite[21]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[21]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[21]_i_3 
       (.I0(\CurrentSprite[21]_i_9_n_0 ),
        .I1(\CurrentSprite[21]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[21]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[21]_i_4 
       (.I0(\CurrentSprite[21]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[21]_i_13_n_0 ),
        .I4(\CurrentSprite[21]_i_14_n_0 ),
        .O(\CurrentSprite[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[21]_i_5 
       (.I0(\CurrentSprite[21]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [21]),
        .I5(\SOAMBuffer_reg[0]_30 [21]),
        .O(\CurrentSprite[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [21]),
        .I1(\SOAMBuffer_reg[16]_14 [21]),
        .I2(\SOAMBuffer_reg[15]_15 [21]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [21]),
        .I1(\SOAMBuffer_reg[22]_8 [21]),
        .I2(\SOAMBuffer_reg[21]_9 [21]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [21]),
        .I1(\SOAMBuffer_reg[19]_11 [21]),
        .I2(\SOAMBuffer_reg[18]_12 [21]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[21]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [21]),
        .I1(\SOAMBuffer_reg[25]_5 [21]),
        .I2(\SOAMBuffer_reg[24]_6 [21]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[22]_i_1 
       (.I0(\CurrentSprite[22]_i_2_n_0 ),
        .I1(\CurrentSprite[22]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[22]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[22]_i_5_n_0 ),
        .O(\CurrentSprite[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[22]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [22]),
        .I3(L[22]),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [22]),
        .O(\CurrentSprite[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [22]),
        .I1(\SOAMBuffer_reg[28]_2 [22]),
        .I2(\SOAMBuffer_reg[27]_3 [22]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [22]),
        .I1(\SOAMBuffer_reg[10]_20 [22]),
        .I2(\SOAMBuffer_reg[9]_21 [22]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[22]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [22]),
        .I1(\SOAMBuffer_reg[13]_17 [22]),
        .I2(\SOAMBuffer_reg[12]_18 [22]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[22]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [22]),
        .I1(\SOAMBuffer_reg[7]_23 [22]),
        .I2(\SOAMBuffer_reg[6]_24 [22]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [22]),
        .I1(\SOAMBuffer_reg[4]_26 [22]),
        .I2(\SOAMBuffer_reg[3]_27 [22]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[22]_i_2 
       (.I0(\CurrentSprite[22]_i_6_n_0 ),
        .I1(\CurrentSprite[22]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[22]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[22]_i_3 
       (.I0(\CurrentSprite[22]_i_9_n_0 ),
        .I1(\CurrentSprite[22]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[22]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[22]_i_4 
       (.I0(\CurrentSprite[22]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[22]_i_13_n_0 ),
        .I4(\CurrentSprite[22]_i_14_n_0 ),
        .O(\CurrentSprite[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[22]_i_5 
       (.I0(\CurrentSprite[22]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [22]),
        .I5(\SOAMBuffer_reg[0]_30 [22]),
        .O(\CurrentSprite[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [22]),
        .I1(\SOAMBuffer_reg[16]_14 [22]),
        .I2(\SOAMBuffer_reg[15]_15 [22]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [22]),
        .I1(\SOAMBuffer_reg[22]_8 [22]),
        .I2(\SOAMBuffer_reg[21]_9 [22]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [22]),
        .I1(\SOAMBuffer_reg[19]_11 [22]),
        .I2(\SOAMBuffer_reg[18]_12 [22]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[22]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [22]),
        .I1(\SOAMBuffer_reg[25]_5 [22]),
        .I2(\SOAMBuffer_reg[24]_6 [22]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[23]_i_1 
       (.I0(\CurrentSprite[23]_i_2_n_0 ),
        .I1(\CurrentSprite[23]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[23]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[23]_i_5_n_0 ),
        .O(\CurrentSprite[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[23]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [23]),
        .I3(\SOAMBuffer_reg_n_0_[31][23] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [23]),
        .O(\CurrentSprite[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [23]),
        .I1(\SOAMBuffer_reg[28]_2 [23]),
        .I2(\SOAMBuffer_reg[27]_3 [23]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [23]),
        .I1(\SOAMBuffer_reg[10]_20 [23]),
        .I2(\SOAMBuffer_reg[9]_21 [23]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [23]),
        .I1(\SOAMBuffer_reg[13]_17 [23]),
        .I2(\SOAMBuffer_reg[12]_18 [23]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [23]),
        .I1(\SOAMBuffer_reg[7]_23 [23]),
        .I2(\SOAMBuffer_reg[6]_24 [23]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [23]),
        .I1(\SOAMBuffer_reg[4]_26 [23]),
        .I2(\SOAMBuffer_reg[3]_27 [23]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[23]_i_2 
       (.I0(\CurrentSprite[23]_i_6_n_0 ),
        .I1(\CurrentSprite[23]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[23]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[23]_i_3 
       (.I0(\CurrentSprite[23]_i_9_n_0 ),
        .I1(\CurrentSprite[23]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[23]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[23]_i_4 
       (.I0(\CurrentSprite[23]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[23]_i_13_n_0 ),
        .I4(\CurrentSprite[23]_i_14_n_0 ),
        .O(\CurrentSprite[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[23]_i_5 
       (.I0(\CurrentSprite[23]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [23]),
        .I5(\SOAMBuffer_reg[0]_30 [23]),
        .O(\CurrentSprite[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [23]),
        .I1(\SOAMBuffer_reg[16]_14 [23]),
        .I2(\SOAMBuffer_reg[15]_15 [23]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [23]),
        .I1(\SOAMBuffer_reg[22]_8 [23]),
        .I2(\SOAMBuffer_reg[21]_9 [23]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [23]),
        .I1(\SOAMBuffer_reg[19]_11 [23]),
        .I2(\SOAMBuffer_reg[18]_12 [23]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[23]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [23]),
        .I1(\SOAMBuffer_reg[25]_5 [23]),
        .I2(\SOAMBuffer_reg[24]_6 [23]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[24]_i_1 
       (.I0(\CurrentSprite[24]_i_2_n_0 ),
        .I1(\CurrentSprite[24]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[24]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[24]_i_5_n_0 ),
        .O(\CurrentSprite[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[24]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [24]),
        .I3(\SOAMBuffer_reg_n_0_[31][24] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [24]),
        .O(\CurrentSprite[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [24]),
        .I1(\SOAMBuffer_reg[28]_2 [24]),
        .I2(\SOAMBuffer_reg[27]_3 [24]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [24]),
        .I1(\SOAMBuffer_reg[10]_20 [24]),
        .I2(\SOAMBuffer_reg[9]_21 [24]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [24]),
        .I1(\SOAMBuffer_reg[13]_17 [24]),
        .I2(\SOAMBuffer_reg[12]_18 [24]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [24]),
        .I1(\SOAMBuffer_reg[7]_23 [24]),
        .I2(\SOAMBuffer_reg[6]_24 [24]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [24]),
        .I1(\SOAMBuffer_reg[4]_26 [24]),
        .I2(\SOAMBuffer_reg[3]_27 [24]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[24]_i_2 
       (.I0(\CurrentSprite[24]_i_6_n_0 ),
        .I1(\CurrentSprite[24]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[24]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[24]_i_3 
       (.I0(\CurrentSprite[24]_i_9_n_0 ),
        .I1(\CurrentSprite[24]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[24]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[24]_i_4 
       (.I0(\CurrentSprite[24]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[24]_i_13_n_0 ),
        .I4(\CurrentSprite[24]_i_14_n_0 ),
        .O(\CurrentSprite[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[24]_i_5 
       (.I0(\CurrentSprite[24]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [24]),
        .I5(\SOAMBuffer_reg[0]_30 [24]),
        .O(\CurrentSprite[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [24]),
        .I1(\SOAMBuffer_reg[16]_14 [24]),
        .I2(\SOAMBuffer_reg[15]_15 [24]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [24]),
        .I1(\SOAMBuffer_reg[22]_8 [24]),
        .I2(\SOAMBuffer_reg[21]_9 [24]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [24]),
        .I1(\SOAMBuffer_reg[19]_11 [24]),
        .I2(\SOAMBuffer_reg[18]_12 [24]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[24]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [24]),
        .I1(\SOAMBuffer_reg[25]_5 [24]),
        .I2(\SOAMBuffer_reg[24]_6 [24]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[25]_i_1 
       (.I0(\CurrentSprite[25]_i_2_n_0 ),
        .I1(\CurrentSprite[25]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[25]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[25]_i_5_n_0 ),
        .O(\CurrentSprite[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[25]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [25]),
        .I3(\SOAMBuffer_reg_n_0_[31][25] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [25]),
        .O(\CurrentSprite[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [25]),
        .I1(\SOAMBuffer_reg[28]_2 [25]),
        .I2(\SOAMBuffer_reg[27]_3 [25]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [25]),
        .I1(\SOAMBuffer_reg[10]_20 [25]),
        .I2(\SOAMBuffer_reg[9]_21 [25]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [25]),
        .I1(\SOAMBuffer_reg[13]_17 [25]),
        .I2(\SOAMBuffer_reg[12]_18 [25]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[25]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [25]),
        .I1(\SOAMBuffer_reg[7]_23 [25]),
        .I2(\SOAMBuffer_reg[6]_24 [25]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[25]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [25]),
        .I1(\SOAMBuffer_reg[4]_26 [25]),
        .I2(\SOAMBuffer_reg[3]_27 [25]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[25]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[25]_i_2 
       (.I0(\CurrentSprite[25]_i_6_n_0 ),
        .I1(\CurrentSprite[25]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[25]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[25]_i_3 
       (.I0(\CurrentSprite[25]_i_9_n_0 ),
        .I1(\CurrentSprite[25]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[25]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[25]_i_4 
       (.I0(\CurrentSprite[25]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[25]_i_13_n_0 ),
        .I4(\CurrentSprite[25]_i_14_n_0 ),
        .O(\CurrentSprite[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[25]_i_5 
       (.I0(\CurrentSprite[25]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [25]),
        .I5(\SOAMBuffer_reg[0]_30 [25]),
        .O(\CurrentSprite[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [25]),
        .I1(\SOAMBuffer_reg[16]_14 [25]),
        .I2(\SOAMBuffer_reg[15]_15 [25]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [25]),
        .I1(\SOAMBuffer_reg[22]_8 [25]),
        .I2(\SOAMBuffer_reg[21]_9 [25]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [25]),
        .I1(\SOAMBuffer_reg[19]_11 [25]),
        .I2(\SOAMBuffer_reg[18]_12 [25]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[25]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [25]),
        .I1(\SOAMBuffer_reg[25]_5 [25]),
        .I2(\SOAMBuffer_reg[24]_6 [25]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[26]_i_1 
       (.I0(\CurrentSprite[26]_i_2_n_0 ),
        .I1(\CurrentSprite[26]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[26]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[26]_i_5_n_0 ),
        .O(\CurrentSprite[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[26]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [26]),
        .I3(\SOAMBuffer_reg_n_0_[31][26] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [26]),
        .O(\CurrentSprite[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [26]),
        .I1(\SOAMBuffer_reg[28]_2 [26]),
        .I2(\SOAMBuffer_reg[27]_3 [26]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [26]),
        .I1(\SOAMBuffer_reg[10]_20 [26]),
        .I2(\SOAMBuffer_reg[9]_21 [26]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [26]),
        .I1(\SOAMBuffer_reg[13]_17 [26]),
        .I2(\SOAMBuffer_reg[12]_18 [26]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[26]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [26]),
        .I1(\SOAMBuffer_reg[7]_23 [26]),
        .I2(\SOAMBuffer_reg[6]_24 [26]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [26]),
        .I1(\SOAMBuffer_reg[4]_26 [26]),
        .I2(\SOAMBuffer_reg[3]_27 [26]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[26]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[26]_i_2 
       (.I0(\CurrentSprite[26]_i_6_n_0 ),
        .I1(\CurrentSprite[26]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[26]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[26]_i_3 
       (.I0(\CurrentSprite[26]_i_9_n_0 ),
        .I1(\CurrentSprite[26]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[26]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[26]_i_4 
       (.I0(\CurrentSprite[26]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[26]_i_13_n_0 ),
        .I4(\CurrentSprite[26]_i_14_n_0 ),
        .O(\CurrentSprite[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[26]_i_5 
       (.I0(\CurrentSprite[26]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [26]),
        .I5(\SOAMBuffer_reg[0]_30 [26]),
        .O(\CurrentSprite[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [26]),
        .I1(\SOAMBuffer_reg[16]_14 [26]),
        .I2(\SOAMBuffer_reg[15]_15 [26]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [26]),
        .I1(\SOAMBuffer_reg[22]_8 [26]),
        .I2(\SOAMBuffer_reg[21]_9 [26]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [26]),
        .I1(\SOAMBuffer_reg[19]_11 [26]),
        .I2(\SOAMBuffer_reg[18]_12 [26]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[26]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [26]),
        .I1(\SOAMBuffer_reg[25]_5 [26]),
        .I2(\SOAMBuffer_reg[24]_6 [26]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[27]_i_1 
       (.I0(\CurrentSprite[27]_i_2_n_0 ),
        .I1(\CurrentSprite[27]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[27]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[27]_i_5_n_0 ),
        .O(\CurrentSprite[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[27]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [27]),
        .I3(\SOAMBuffer_reg_n_0_[31][27] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [27]),
        .O(\CurrentSprite[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [27]),
        .I1(\SOAMBuffer_reg[28]_2 [27]),
        .I2(\SOAMBuffer_reg[27]_3 [27]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [27]),
        .I1(\SOAMBuffer_reg[10]_20 [27]),
        .I2(\SOAMBuffer_reg[9]_21 [27]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [27]),
        .I1(\SOAMBuffer_reg[13]_17 [27]),
        .I2(\SOAMBuffer_reg[12]_18 [27]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [27]),
        .I1(\SOAMBuffer_reg[7]_23 [27]),
        .I2(\SOAMBuffer_reg[6]_24 [27]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [27]),
        .I1(\SOAMBuffer_reg[4]_26 [27]),
        .I2(\SOAMBuffer_reg[3]_27 [27]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[27]_i_2 
       (.I0(\CurrentSprite[27]_i_6_n_0 ),
        .I1(\CurrentSprite[27]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[27]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[27]_i_3 
       (.I0(\CurrentSprite[27]_i_9_n_0 ),
        .I1(\CurrentSprite[27]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[27]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[27]_i_4 
       (.I0(\CurrentSprite[27]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[27]_i_13_n_0 ),
        .I4(\CurrentSprite[27]_i_14_n_0 ),
        .O(\CurrentSprite[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[27]_i_5 
       (.I0(\CurrentSprite[27]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [27]),
        .I5(\SOAMBuffer_reg[0]_30 [27]),
        .O(\CurrentSprite[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [27]),
        .I1(\SOAMBuffer_reg[16]_14 [27]),
        .I2(\SOAMBuffer_reg[15]_15 [27]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [27]),
        .I1(\SOAMBuffer_reg[22]_8 [27]),
        .I2(\SOAMBuffer_reg[21]_9 [27]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [27]),
        .I1(\SOAMBuffer_reg[19]_11 [27]),
        .I2(\SOAMBuffer_reg[18]_12 [27]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[27]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [27]),
        .I1(\SOAMBuffer_reg[25]_5 [27]),
        .I2(\SOAMBuffer_reg[24]_6 [27]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[28]_i_1 
       (.I0(\CurrentSprite[28]_i_2_n_0 ),
        .I1(\CurrentSprite[28]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[28]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[28]_i_5_n_0 ),
        .O(\CurrentSprite[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[28]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [28]),
        .I3(\SOAMBuffer_reg_n_0_[31][28] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [28]),
        .O(\CurrentSprite[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [28]),
        .I1(\SOAMBuffer_reg[28]_2 [28]),
        .I2(\SOAMBuffer_reg[27]_3 [28]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [28]),
        .I1(\SOAMBuffer_reg[10]_20 [28]),
        .I2(\SOAMBuffer_reg[9]_21 [28]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [28]),
        .I1(\SOAMBuffer_reg[13]_17 [28]),
        .I2(\SOAMBuffer_reg[12]_18 [28]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[28]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [28]),
        .I1(\SOAMBuffer_reg[7]_23 [28]),
        .I2(\SOAMBuffer_reg[6]_24 [28]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[28]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [28]),
        .I1(\SOAMBuffer_reg[4]_26 [28]),
        .I2(\SOAMBuffer_reg[3]_27 [28]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[28]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[28]_i_2 
       (.I0(\CurrentSprite[28]_i_6_n_0 ),
        .I1(\CurrentSprite[28]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[28]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[28]_i_3 
       (.I0(\CurrentSprite[28]_i_9_n_0 ),
        .I1(\CurrentSprite[28]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[28]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[28]_i_4 
       (.I0(\CurrentSprite[28]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[28]_i_13_n_0 ),
        .I4(\CurrentSprite[28]_i_14_n_0 ),
        .O(\CurrentSprite[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[28]_i_5 
       (.I0(\CurrentSprite[28]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [28]),
        .I5(\SOAMBuffer_reg[0]_30 [28]),
        .O(\CurrentSprite[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [28]),
        .I1(\SOAMBuffer_reg[16]_14 [28]),
        .I2(\SOAMBuffer_reg[15]_15 [28]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [28]),
        .I1(\SOAMBuffer_reg[22]_8 [28]),
        .I2(\SOAMBuffer_reg[21]_9 [28]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [28]),
        .I1(\SOAMBuffer_reg[19]_11 [28]),
        .I2(\SOAMBuffer_reg[18]_12 [28]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[28]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [28]),
        .I1(\SOAMBuffer_reg[25]_5 [28]),
        .I2(\SOAMBuffer_reg[24]_6 [28]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[29]_i_1 
       (.I0(\CurrentSprite[29]_i_2_n_0 ),
        .I1(\CurrentSprite[29]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[29]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[29]_i_5_n_0 ),
        .O(\CurrentSprite[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[29]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [29]),
        .I3(\SOAMBuffer_reg_n_0_[31][29] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [29]),
        .O(\CurrentSprite[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [29]),
        .I1(\SOAMBuffer_reg[28]_2 [29]),
        .I2(\SOAMBuffer_reg[27]_3 [29]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [29]),
        .I1(\SOAMBuffer_reg[10]_20 [29]),
        .I2(\SOAMBuffer_reg[9]_21 [29]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[29]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [29]),
        .I1(\SOAMBuffer_reg[13]_17 [29]),
        .I2(\SOAMBuffer_reg[12]_18 [29]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[29]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [29]),
        .I1(\SOAMBuffer_reg[7]_23 [29]),
        .I2(\SOAMBuffer_reg[6]_24 [29]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[29]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [29]),
        .I1(\SOAMBuffer_reg[4]_26 [29]),
        .I2(\SOAMBuffer_reg[3]_27 [29]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[29]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[29]_i_2 
       (.I0(\CurrentSprite[29]_i_6_n_0 ),
        .I1(\CurrentSprite[29]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[29]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[29]_i_3 
       (.I0(\CurrentSprite[29]_i_9_n_0 ),
        .I1(\CurrentSprite[29]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[29]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[29]_i_4 
       (.I0(\CurrentSprite[29]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[29]_i_13_n_0 ),
        .I4(\CurrentSprite[29]_i_14_n_0 ),
        .O(\CurrentSprite[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[29]_i_5 
       (.I0(\CurrentSprite[29]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [29]),
        .I5(\SOAMBuffer_reg[0]_30 [29]),
        .O(\CurrentSprite[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [29]),
        .I1(\SOAMBuffer_reg[16]_14 [29]),
        .I2(\SOAMBuffer_reg[15]_15 [29]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [29]),
        .I1(\SOAMBuffer_reg[22]_8 [29]),
        .I2(\SOAMBuffer_reg[21]_9 [29]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [29]),
        .I1(\SOAMBuffer_reg[19]_11 [29]),
        .I2(\SOAMBuffer_reg[18]_12 [29]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[29]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [29]),
        .I1(\SOAMBuffer_reg[25]_5 [29]),
        .I2(\SOAMBuffer_reg[24]_6 [29]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[2]_i_1 
       (.I0(\CurrentSprite[2]_i_2_n_0 ),
        .I1(\CurrentSprite[2]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[2]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[2]_i_5_n_0 ),
        .O(\CurrentSprite[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[2]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [2]),
        .I3(\SOAMBuffer_reg_n_0_[31][2] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [2]),
        .O(\CurrentSprite[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [2]),
        .I1(\SOAMBuffer_reg[28]_2 [2]),
        .I2(\SOAMBuffer_reg[27]_3 [2]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [2]),
        .I1(\SOAMBuffer_reg[10]_20 [2]),
        .I2(\SOAMBuffer_reg[9]_21 [2]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [2]),
        .I1(\SOAMBuffer_reg[13]_17 [2]),
        .I2(\SOAMBuffer_reg[12]_18 [2]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [2]),
        .I1(\SOAMBuffer_reg[7]_23 [2]),
        .I2(\SOAMBuffer_reg[6]_24 [2]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [2]),
        .I1(\SOAMBuffer_reg[4]_26 [2]),
        .I2(\SOAMBuffer_reg[3]_27 [2]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[2]_i_2 
       (.I0(\CurrentSprite[2]_i_6_n_0 ),
        .I1(\CurrentSprite[2]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[2]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[2]_i_3 
       (.I0(\CurrentSprite[2]_i_9_n_0 ),
        .I1(\CurrentSprite[2]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[2]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[2]_i_4 
       (.I0(\CurrentSprite[2]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[2]_i_13_n_0 ),
        .I4(\CurrentSprite[2]_i_14_n_0 ),
        .O(\CurrentSprite[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[2]_i_5 
       (.I0(\CurrentSprite[2]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [2]),
        .I5(\SOAMBuffer_reg[0]_30 [2]),
        .O(\CurrentSprite[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [2]),
        .I1(\SOAMBuffer_reg[16]_14 [2]),
        .I2(\SOAMBuffer_reg[15]_15 [2]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [2]),
        .I1(\SOAMBuffer_reg[22]_8 [2]),
        .I2(\SOAMBuffer_reg[21]_9 [2]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [2]),
        .I1(\SOAMBuffer_reg[19]_11 [2]),
        .I2(\SOAMBuffer_reg[18]_12 [2]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[2]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [2]),
        .I1(\SOAMBuffer_reg[25]_5 [2]),
        .I2(\SOAMBuffer_reg[24]_6 [2]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[30]_i_1 
       (.I0(\CurrentSprite[30]_i_2_n_0 ),
        .I1(\CurrentSprite[30]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[30]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[30]_i_5_n_0 ),
        .O(\CurrentSprite[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[30]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [30]),
        .I3(\SOAMBuffer_reg_n_0_[31][30] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [30]),
        .O(\CurrentSprite[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [30]),
        .I1(\SOAMBuffer_reg[28]_2 [30]),
        .I2(\SOAMBuffer_reg[27]_3 [30]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [30]),
        .I1(\SOAMBuffer_reg[10]_20 [30]),
        .I2(\SOAMBuffer_reg[9]_21 [30]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[30]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [30]),
        .I1(\SOAMBuffer_reg[13]_17 [30]),
        .I2(\SOAMBuffer_reg[12]_18 [30]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[30]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [30]),
        .I1(\SOAMBuffer_reg[7]_23 [30]),
        .I2(\SOAMBuffer_reg[6]_24 [30]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[30]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [30]),
        .I1(\SOAMBuffer_reg[4]_26 [30]),
        .I2(\SOAMBuffer_reg[3]_27 [30]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[30]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[30]_i_2 
       (.I0(\CurrentSprite[30]_i_6_n_0 ),
        .I1(\CurrentSprite[30]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[30]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[30]_i_3 
       (.I0(\CurrentSprite[30]_i_9_n_0 ),
        .I1(\CurrentSprite[30]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[30]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[30]_i_4 
       (.I0(\CurrentSprite[30]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[30]_i_13_n_0 ),
        .I4(\CurrentSprite[30]_i_14_n_0 ),
        .O(\CurrentSprite[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[30]_i_5 
       (.I0(\CurrentSprite[30]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [30]),
        .I5(\SOAMBuffer_reg[0]_30 [30]),
        .O(\CurrentSprite[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [30]),
        .I1(\SOAMBuffer_reg[16]_14 [30]),
        .I2(\SOAMBuffer_reg[15]_15 [30]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [30]),
        .I1(\SOAMBuffer_reg[22]_8 [30]),
        .I2(\SOAMBuffer_reg[21]_9 [30]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [30]),
        .I1(\SOAMBuffer_reg[19]_11 [30]),
        .I2(\SOAMBuffer_reg[18]_12 [30]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[30]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [30]),
        .I1(\SOAMBuffer_reg[25]_5 [30]),
        .I2(\SOAMBuffer_reg[24]_6 [30]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \CurrentSprite[31]_i_1 
       (.I0(isBufferReady),
        .I1(\CurrentSprite[31]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_4_n_0 ),
        .I3(\CurrentSprite[31]_i_5_n_0 ),
        .I4(\CurrentSprite[31]_i_6_n_0 ),
        .I5(\CurrentSprite[31]_i_7_n_0 ),
        .O(CurrentSprite));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \CurrentSprite[31]_i_10 
       (.I0(\CurrentSprite[31]_i_55_n_0 ),
        .I1(\CurrentSprite[31]_i_16_n_0 ),
        .I2(CurrentSprite255_in),
        .I3(\CurrentSprite_reg[31]_i_14_n_2 ),
        .I4(\CurrentSprite[31]_i_56_n_0 ),
        .I5(\CurrentSprite[31]_i_57_n_0 ),
        .O(\CurrentSprite[31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_100 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[7]_23 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_100_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_102 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_102_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_103 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[7]_23 [22]),
        .I2(\SOAMBuffer_reg[7]_23 [21]),
        .I3(\CurrentSprite[31]_i_274_n_0 ),
        .O(\CurrentSprite[31]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_105 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[4]_26 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_106 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[4]_26 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_106_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_108 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_108_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_109 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[4]_26 [22]),
        .I2(\SOAMBuffer_reg[4]_26 [21]),
        .I3(\CurrentSprite[31]_i_288_n_0 ),
        .O(\CurrentSprite[31]_i_109_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[31]_i_11 
       (.I0(\CurrentSprite[31]_i_58_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[31]_i_59_n_0 ),
        .I4(\CurrentSprite[31]_i_60_n_0 ),
        .O(\CurrentSprite[31]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_115 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_115_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_116 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[28]_2 [22]),
        .I2(\SOAMBuffer_reg[28]_2 [21]),
        .I3(\CurrentSprite[31]_i_306_n_0 ),
        .O(\CurrentSprite[31]_i_116_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_118 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[28]_2 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_118_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_119 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[28]_2 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    \CurrentSprite[31]_i_12 
       (.I0(\CurrentSprite[31]_i_20_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_30_n_2 ),
        .I2(CurrentSprite282_in),
        .I3(\CurrentSprite_reg[31]_i_61_n_2 ),
        .I4(CurrentSprite285_in),
        .I5(\CurrentSprite[31]_i_63_n_0 ),
        .O(\CurrentSprite[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_124 
       (.I0(CurrentSprite216_in),
        .I1(\CurrentSprite_reg[31]_i_156_n_2 ),
        .O(\CurrentSprite[31]_i_124_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_127 
       (.I0(CurrentSprite222_in),
        .I1(\CurrentSprite_reg[31]_i_159_n_2 ),
        .O(\CurrentSprite[31]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[31]_i_13 
       (.I0(\CurrentSprite[31]_i_64_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [31]),
        .I5(\SOAMBuffer_reg[0]_30 [31]),
        .O(\CurrentSprite[31]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_137 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_137_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_138 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[22]_8 [22]),
        .I2(\SOAMBuffer_reg[22]_8 [21]),
        .I3(\CurrentSprite[31]_i_362_n_0 ),
        .O(\CurrentSprite[31]_i_138_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_140 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[22]_8 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_140_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_141 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[22]_8 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_141_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_142 
       (.I0(CurrentSprite240_in),
        .I1(\CurrentSprite_reg[31]_i_151_n_2 ),
        .O(\CurrentSprite[31]_i_142_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_147 
       (.I0(CurrentSprite243_in),
        .I1(\CurrentSprite_reg[31]_i_152_n_2 ),
        .O(\CurrentSprite[31]_i_147_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_148 
       (.I0(CurrentSprite246_in),
        .I1(\CurrentSprite_reg[31]_i_146_n_2 ),
        .O(\CurrentSprite[31]_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_149 
       (.I0(CurrentSprite228_in),
        .I1(\CurrentSprite_reg[31]_i_41_n_2 ),
        .O(\CurrentSprite[31]_i_149_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_154 
       (.I0(CurrentSprite237_in),
        .I1(\CurrentSprite_reg[31]_i_144_n_2 ),
        .O(\CurrentSprite[31]_i_154_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_155 
       (.I0(CurrentSprite219_in),
        .I1(\CurrentSprite_reg[31]_i_129_n_2 ),
        .O(\CurrentSprite[31]_i_155_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_16 
       (.I0(CurrentSprite258_in),
        .I1(\CurrentSprite_reg[31]_i_72_n_2 ),
        .O(\CurrentSprite[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_160 
       (.I0(CurrentSprite210_in),
        .I1(\CurrentSprite_reg[31]_i_33_n_2 ),
        .O(\CurrentSprite[31]_i_160_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_161 
       (.I0(CurrentSprite213_in),
        .I1(\CurrentSprite_reg[31]_i_126_n_2 ),
        .O(\CurrentSprite[31]_i_161_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_166 
       (.I0(CurrentSprite264_in),
        .I1(\CurrentSprite_reg[31]_i_78_n_2 ),
        .O(\CurrentSprite[31]_i_166_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_167 
       (.I0(CurrentSprite267_in),
        .I1(\CurrentSprite_reg[31]_i_81_n_2 ),
        .O(\CurrentSprite[31]_i_167_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_168 
       (.I0(CurrentSprite255_in),
        .I1(\CurrentSprite_reg[31]_i_14_n_2 ),
        .O(\CurrentSprite[31]_i_168_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_169 
       (.I0(CurrentSprite273_in),
        .I1(\CurrentSprite_reg[31]_i_28_n_2 ),
        .O(\CurrentSprite[31]_i_169_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_17 
       (.I0(CurrentSprite249_in),
        .I1(\CurrentSprite_reg[31]_i_74_n_2 ),
        .O(\CurrentSprite[31]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_171 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_171_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_172 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[3]_27 [22]),
        .I2(\SOAMBuffer_reg[3]_27 [21]),
        .I3(\CurrentSprite[31]_i_424_n_0 ),
        .O(\CurrentSprite[31]_i_172_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_174 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[3]_27 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_174_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_175 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[3]_27 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_175_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_176 
       (.I0(CurrentSprite282_in),
        .I1(\CurrentSprite_reg[31]_i_30_n_2 ),
        .O(\CurrentSprite[31]_i_176_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_178 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[13]_17 [21]),
        .I2(\SOAMBuffer_reg[13]_17 [20]),
        .I3(\SOAMBuffer_reg[13]_17 [18]),
        .I4(\SOAMBuffer_reg[13]_17 [17]),
        .I5(\SOAMBuffer_reg[13]_17 [19]),
        .O(\CurrentSprite[31]_i_178_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_179 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[13]_17 [20]),
        .I2(\SOAMBuffer_reg[13]_17 [19]),
        .I3(\SOAMBuffer_reg[13]_17 [17]),
        .I4(\SOAMBuffer_reg[13]_17 [18]),
        .O(\CurrentSprite[31]_i_179_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_18 
       (.I0(CurrentSprite252_in),
        .I1(\CurrentSprite_reg[31]_i_76_n_2 ),
        .O(\CurrentSprite[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_180 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[13]_17 [19]),
        .I2(\SOAMBuffer_reg[13]_17 [18]),
        .I3(\SOAMBuffer_reg[13]_17 [17]),
        .O(\CurrentSprite[31]_i_180_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_181 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[13]_17 [18]),
        .I2(\SOAMBuffer_reg[13]_17 [17]),
        .O(\CurrentSprite[31]_i_181_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_182 
       (.I0(\SOAMBuffer_reg[13]_17 [20]),
        .I1(\SOAMBuffer_reg[13]_17 [18]),
        .I2(\SOAMBuffer_reg[13]_17 [17]),
        .I3(\SOAMBuffer_reg[13]_17 [19]),
        .O(\CurrentSprite[31]_i_182_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_183 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[13]_17 [20]),
        .I2(\SOAMBuffer_reg[13]_17 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_183_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_184 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[13]_17 [18]),
        .I2(\SOAMBuffer_reg[13]_17 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_184_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_185 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[13]_17 [16]),
        .I2(\SOAMBuffer_reg[13]_17 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_185_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_186 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[13]_17 [14]),
        .I2(\SOAMBuffer_reg[13]_17 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_186_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_187 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[13]_17 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[13]_17 [21]),
        .O(\CurrentSprite[31]_i_187_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_188 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[13]_17 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[13]_17 [19]),
        .O(\CurrentSprite[31]_i_188_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_189 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[13]_17 [16]),
        .I2(\SOAMBuffer_reg[13]_17 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_189_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFFF2)) 
    \CurrentSprite[31]_i_19 
       (.I0(CurrentSprite264_in),
        .I1(\CurrentSprite_reg[31]_i_78_n_2 ),
        .I2(\CurrentSprite[31]_i_56_n_0 ),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(CurrentSprite267_in),
        .I5(\CurrentSprite_reg[31]_i_81_n_2 ),
        .O(\CurrentSprite[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_190 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[13]_17 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[13]_17 [15]),
        .O(\CurrentSprite[31]_i_190_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_192 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[12]_18 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_192_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_193 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[12]_18 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_193_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_195 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_195_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_196 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[12]_18 [22]),
        .I2(\SOAMBuffer_reg[12]_18 [21]),
        .I3(\CurrentSprite[31]_i_450_n_0 ),
        .O(\CurrentSprite[31]_i_196_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_198 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[15]_15 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_198_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_199 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[15]_15 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_199_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[31]_i_2 
       (.I0(\CurrentSprite[31]_i_8_n_0 ),
        .I1(\CurrentSprite[31]_i_9_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[31]_i_11_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[31]_i_13_n_0 ),
        .O(\CurrentSprite[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_20 
       (.I0(CurrentSprite288_in),
        .I1(\CurrentSprite_reg[31]_i_83_n_2 ),
        .O(\CurrentSprite[31]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_201 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_201_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_202 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[15]_15 [22]),
        .I2(\SOAMBuffer_reg[15]_15 [21]),
        .I3(\CurrentSprite[31]_i_464_n_0 ),
        .O(\CurrentSprite[31]_i_202_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_204 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[14]_16 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_204_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_205 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[14]_16 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_205_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_207 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_207_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_208 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[14]_16 [22]),
        .I2(\SOAMBuffer_reg[14]_16 [21]),
        .I3(\CurrentSprite[31]_i_478_n_0 ),
        .O(\CurrentSprite[31]_i_208_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_21 
       (.I0(CurrentSprite285_in),
        .I1(\CurrentSprite_reg[31]_i_61_n_2 ),
        .O(\CurrentSprite[31]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_210 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[10]_20 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_210_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_211 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[10]_20 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_211_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_213 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_213_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_214 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[10]_20 [22]),
        .I2(\SOAMBuffer_reg[10]_20 [21]),
        .I3(\CurrentSprite[31]_i_492_n_0 ),
        .O(\CurrentSprite[31]_i_214_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_216 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[9]_21 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_216_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_217 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[9]_21 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_217_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_219 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_219_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_220 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[9]_21 [22]),
        .I2(\SOAMBuffer_reg[9]_21 [21]),
        .I3(\CurrentSprite[31]_i_506_n_0 ),
        .O(\CurrentSprite[31]_i_220_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_222 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[2]_28 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_222_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_223 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[2]_28 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_223_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_225 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_225_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_226 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[2]_28 [22]),
        .I2(\SOAMBuffer_reg[2]_28 [21]),
        .I3(\CurrentSprite[31]_i_520_n_0 ),
        .O(\CurrentSprite[31]_i_226_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_227 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(L[20]),
        .I2(L[21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_227_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_228 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(L[18]),
        .I2(L[19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_228_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_229 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(L[16]),
        .I2(L[17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_229_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_230 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(L[14]),
        .I2(L[15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_230_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_231 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(L[20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(L[21]),
        .O(\CurrentSprite[31]_i_231_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_232 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(L[18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(L[19]),
        .O(\CurrentSprite[31]_i_232_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_233 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(L[16]),
        .I2(L[17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_233_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_234 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(L[14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(L[15]),
        .O(\CurrentSprite[31]_i_234_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_236 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(L[21]),
        .I2(L[20]),
        .I3(L[18]),
        .I4(L[17]),
        .I5(L[19]),
        .O(\CurrentSprite[31]_i_236_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_237 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(L[20]),
        .I2(L[19]),
        .I3(L[17]),
        .I4(L[18]),
        .O(\CurrentSprite[31]_i_237_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_238 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(L[19]),
        .I2(L[18]),
        .I3(L[17]),
        .O(\CurrentSprite[31]_i_238_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_239 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(L[18]),
        .I2(L[17]),
        .O(\CurrentSprite[31]_i_239_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_240 
       (.I0(L[20]),
        .I1(L[18]),
        .I2(L[17]),
        .I3(L[19]),
        .O(\CurrentSprite[31]_i_240_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_241 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[1]_29 [20]),
        .I2(\SOAMBuffer_reg[1]_29 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_241_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_242 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[1]_29 [18]),
        .I2(\SOAMBuffer_reg[1]_29 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_242_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_243 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[1]_29 [16]),
        .I2(\SOAMBuffer_reg[1]_29 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_243_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_244 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[1]_29 [14]),
        .I2(\SOAMBuffer_reg[1]_29 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_244_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_245 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[1]_29 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[1]_29 [21]),
        .O(\CurrentSprite[31]_i_245_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_246 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[1]_29 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[1]_29 [19]),
        .O(\CurrentSprite[31]_i_246_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_247 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[1]_29 [16]),
        .I2(\SOAMBuffer_reg[1]_29 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_247_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_248 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[1]_29 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[1]_29 [15]),
        .O(\CurrentSprite[31]_i_248_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_250 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[1]_29 [21]),
        .I2(\SOAMBuffer_reg[1]_29 [20]),
        .I3(\SOAMBuffer_reg[1]_29 [18]),
        .I4(\SOAMBuffer_reg[1]_29 [17]),
        .I5(\SOAMBuffer_reg[1]_29 [19]),
        .O(\CurrentSprite[31]_i_250_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_251 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[1]_29 [20]),
        .I2(\SOAMBuffer_reg[1]_29 [19]),
        .I3(\SOAMBuffer_reg[1]_29 [17]),
        .I4(\SOAMBuffer_reg[1]_29 [18]),
        .O(\CurrentSprite[31]_i_251_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_252 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[1]_29 [19]),
        .I2(\SOAMBuffer_reg[1]_29 [18]),
        .I3(\SOAMBuffer_reg[1]_29 [17]),
        .O(\CurrentSprite[31]_i_252_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_253 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[1]_29 [18]),
        .I2(\SOAMBuffer_reg[1]_29 [17]),
        .O(\CurrentSprite[31]_i_253_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_254 
       (.I0(\SOAMBuffer_reg[1]_29 [20]),
        .I1(\SOAMBuffer_reg[1]_29 [18]),
        .I2(\SOAMBuffer_reg[1]_29 [17]),
        .I3(\SOAMBuffer_reg[1]_29 [19]),
        .O(\CurrentSprite[31]_i_254_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_256 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[6]_24 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_256_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_257 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[6]_24 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_257_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_259 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_259_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_26 
       (.I0(CurrentSprite276_in),
        .I1(\CurrentSprite_reg[31]_i_97_n_2 ),
        .O(\CurrentSprite[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_260 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[6]_24 [22]),
        .I2(\SOAMBuffer_reg[6]_24 [21]),
        .I3(\CurrentSprite[31]_i_542_n_0 ),
        .O(\CurrentSprite[31]_i_260_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_261 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[7]_23 [20]),
        .I2(\SOAMBuffer_reg[7]_23 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_261_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_262 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[7]_23 [18]),
        .I2(\SOAMBuffer_reg[7]_23 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_262_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_263 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[7]_23 [16]),
        .I2(\SOAMBuffer_reg[7]_23 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_263_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_264 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[7]_23 [14]),
        .I2(\SOAMBuffer_reg[7]_23 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_264_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_265 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[7]_23 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[7]_23 [21]),
        .O(\CurrentSprite[31]_i_265_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_266 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[7]_23 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[7]_23 [19]),
        .O(\CurrentSprite[31]_i_266_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_267 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[7]_23 [16]),
        .I2(\SOAMBuffer_reg[7]_23 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_267_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_268 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[7]_23 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[7]_23 [15]),
        .O(\CurrentSprite[31]_i_268_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_270 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[7]_23 [21]),
        .I2(\SOAMBuffer_reg[7]_23 [20]),
        .I3(\SOAMBuffer_reg[7]_23 [18]),
        .I4(\SOAMBuffer_reg[7]_23 [17]),
        .I5(\SOAMBuffer_reg[7]_23 [19]),
        .O(\CurrentSprite[31]_i_270_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_271 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[7]_23 [20]),
        .I2(\SOAMBuffer_reg[7]_23 [19]),
        .I3(\SOAMBuffer_reg[7]_23 [17]),
        .I4(\SOAMBuffer_reg[7]_23 [18]),
        .O(\CurrentSprite[31]_i_271_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_272 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[7]_23 [19]),
        .I2(\SOAMBuffer_reg[7]_23 [18]),
        .I3(\SOAMBuffer_reg[7]_23 [17]),
        .O(\CurrentSprite[31]_i_272_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_273 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[7]_23 [18]),
        .I2(\SOAMBuffer_reg[7]_23 [17]),
        .O(\CurrentSprite[31]_i_273_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_274 
       (.I0(\SOAMBuffer_reg[7]_23 [20]),
        .I1(\SOAMBuffer_reg[7]_23 [18]),
        .I2(\SOAMBuffer_reg[7]_23 [17]),
        .I3(\SOAMBuffer_reg[7]_23 [19]),
        .O(\CurrentSprite[31]_i_274_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_275 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[4]_26 [20]),
        .I2(\SOAMBuffer_reg[4]_26 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_275_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_276 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[4]_26 [18]),
        .I2(\SOAMBuffer_reg[4]_26 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_276_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_277 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[4]_26 [16]),
        .I2(\SOAMBuffer_reg[4]_26 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_277_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_278 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[4]_26 [14]),
        .I2(\SOAMBuffer_reg[4]_26 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_278_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_279 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[4]_26 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[4]_26 [21]),
        .O(\CurrentSprite[31]_i_279_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_280 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[4]_26 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[4]_26 [19]),
        .O(\CurrentSprite[31]_i_280_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_281 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[4]_26 [16]),
        .I2(\SOAMBuffer_reg[4]_26 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_281_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_282 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[4]_26 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[4]_26 [15]),
        .O(\CurrentSprite[31]_i_282_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_284 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[4]_26 [21]),
        .I2(\SOAMBuffer_reg[4]_26 [20]),
        .I3(\SOAMBuffer_reg[4]_26 [18]),
        .I4(\SOAMBuffer_reg[4]_26 [17]),
        .I5(\SOAMBuffer_reg[4]_26 [19]),
        .O(\CurrentSprite[31]_i_284_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_285 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[4]_26 [20]),
        .I2(\SOAMBuffer_reg[4]_26 [19]),
        .I3(\SOAMBuffer_reg[4]_26 [17]),
        .I4(\SOAMBuffer_reg[4]_26 [18]),
        .O(\CurrentSprite[31]_i_285_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_286 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[4]_26 [19]),
        .I2(\SOAMBuffer_reg[4]_26 [18]),
        .I3(\SOAMBuffer_reg[4]_26 [17]),
        .O(\CurrentSprite[31]_i_286_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_287 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[4]_26 [18]),
        .I2(\SOAMBuffer_reg[4]_26 [17]),
        .O(\CurrentSprite[31]_i_287_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_288 
       (.I0(\SOAMBuffer_reg[4]_26 [20]),
        .I1(\SOAMBuffer_reg[4]_26 [18]),
        .I2(\SOAMBuffer_reg[4]_26 [17]),
        .I3(\SOAMBuffer_reg[4]_26 [19]),
        .O(\CurrentSprite[31]_i_288_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_290 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[5]_25 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_290_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_291 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[5]_25 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_291_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_293 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_293_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_294 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[5]_25 [22]),
        .I2(\SOAMBuffer_reg[5]_25 [21]),
        .I3(\CurrentSprite[31]_i_564_n_0 ),
        .O(\CurrentSprite[31]_i_294_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_296 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[29]_1 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_296_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_297 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[29]_1 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_297_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_299 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_299_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \CurrentSprite[31]_i_3 
       (.I0(\CurrentSprite_reg[31]_i_14_n_2 ),
        .I1(CurrentSprite255_in),
        .I2(\CurrentSprite[31]_i_16_n_0 ),
        .I3(\CurrentSprite[31]_i_17_n_0 ),
        .I4(\CurrentSprite[31]_i_18_n_0 ),
        .I5(\CurrentSprite[31]_i_19_n_0 ),
        .O(\CurrentSprite[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_300 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[29]_1 [22]),
        .I2(\SOAMBuffer_reg[29]_1 [21]),
        .I3(\CurrentSprite[31]_i_578_n_0 ),
        .O(\CurrentSprite[31]_i_300_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_302 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[28]_2 [21]),
        .I2(\SOAMBuffer_reg[28]_2 [20]),
        .I3(\SOAMBuffer_reg[28]_2 [18]),
        .I4(\SOAMBuffer_reg[28]_2 [17]),
        .I5(\SOAMBuffer_reg[28]_2 [19]),
        .O(\CurrentSprite[31]_i_302_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_303 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[28]_2 [20]),
        .I2(\SOAMBuffer_reg[28]_2 [19]),
        .I3(\SOAMBuffer_reg[28]_2 [17]),
        .I4(\SOAMBuffer_reg[28]_2 [18]),
        .O(\CurrentSprite[31]_i_303_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_304 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[28]_2 [19]),
        .I2(\SOAMBuffer_reg[28]_2 [18]),
        .I3(\SOAMBuffer_reg[28]_2 [17]),
        .O(\CurrentSprite[31]_i_304_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_305 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[28]_2 [18]),
        .I2(\SOAMBuffer_reg[28]_2 [17]),
        .O(\CurrentSprite[31]_i_305_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_306 
       (.I0(\SOAMBuffer_reg[28]_2 [20]),
        .I1(\SOAMBuffer_reg[28]_2 [18]),
        .I2(\SOAMBuffer_reg[28]_2 [17]),
        .I3(\SOAMBuffer_reg[28]_2 [19]),
        .O(\CurrentSprite[31]_i_306_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_307 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[28]_2 [20]),
        .I2(\SOAMBuffer_reg[28]_2 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_307_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_308 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[28]_2 [18]),
        .I2(\SOAMBuffer_reg[28]_2 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_308_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_309 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[28]_2 [16]),
        .I2(\SOAMBuffer_reg[28]_2 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_309_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_31 
       (.I0(CurrentSprite279_in),
        .I1(\CurrentSprite_reg[31]_i_111_n_2 ),
        .O(\CurrentSprite[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_310 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[28]_2 [14]),
        .I2(\SOAMBuffer_reg[28]_2 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_310_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_311 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[28]_2 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[28]_2 [21]),
        .O(\CurrentSprite[31]_i_311_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_312 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[28]_2 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[28]_2 [19]),
        .O(\CurrentSprite[31]_i_312_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_313 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[28]_2 [16]),
        .I2(\SOAMBuffer_reg[28]_2 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_313_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_314 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[28]_2 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[28]_2 [15]),
        .O(\CurrentSprite[31]_i_314_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_316 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[30]_0 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_316_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_317 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[30]_0 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_317_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_319 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_319_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_32 
       (.I0(CurrentSprite27_in),
        .I1(\CurrentSprite_reg[31]_i_113_n_2 ),
        .O(\CurrentSprite[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_320 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[30]_0 [22]),
        .I2(\SOAMBuffer_reg[30]_0 [21]),
        .I3(\CurrentSprite[31]_i_596_n_0 ),
        .O(\CurrentSprite[31]_i_320_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_322 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[0]_30 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_322_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_323 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[0]_30 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_323_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_325 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_325_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_326 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[0]_30 [22]),
        .I2(\SOAMBuffer_reg[0]_30 [21]),
        .I3(\CurrentSprite[31]_i_610_n_0 ),
        .O(\CurrentSprite[31]_i_326_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_328 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[27]_3 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_328_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_329 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[27]_3 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_329_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_331 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_331_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_332 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[27]_3 [22]),
        .I2(\SOAMBuffer_reg[27]_3 [21]),
        .I3(\CurrentSprite[31]_i_624_n_0 ),
        .O(\CurrentSprite[31]_i_332_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_334 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[25]_5 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_334_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_335 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[25]_5 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_335_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_337 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_337_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_338 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[25]_5 [22]),
        .I2(\SOAMBuffer_reg[25]_5 [21]),
        .I3(\CurrentSprite[31]_i_638_n_0 ),
        .O(\CurrentSprite[31]_i_338_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_340 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[21]_9 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_340_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_341 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[21]_9 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_341_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_343 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_343_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_344 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[21]_9 [22]),
        .I2(\SOAMBuffer_reg[21]_9 [21]),
        .I3(\CurrentSprite[31]_i_652_n_0 ),
        .O(\CurrentSprite[31]_i_344_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_346 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[20]_10 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_346_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_347 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[20]_10 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_347_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_349 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_349_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_35 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .O(\CurrentSprite[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_350 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[20]_10 [22]),
        .I2(\SOAMBuffer_reg[20]_10 [21]),
        .I3(\CurrentSprite[31]_i_666_n_0 ),
        .O(\CurrentSprite[31]_i_350_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_352 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[23]_7 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_352_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_353 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[23]_7 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_353_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_355 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_355_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_356 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[23]_7 [22]),
        .I2(\SOAMBuffer_reg[23]_7 [21]),
        .I3(\CurrentSprite[31]_i_680_n_0 ),
        .O(\CurrentSprite[31]_i_356_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_358 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[22]_8 [21]),
        .I2(\SOAMBuffer_reg[22]_8 [20]),
        .I3(\SOAMBuffer_reg[22]_8 [18]),
        .I4(\SOAMBuffer_reg[22]_8 [17]),
        .I5(\SOAMBuffer_reg[22]_8 [19]),
        .O(\CurrentSprite[31]_i_358_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_359 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[22]_8 [20]),
        .I2(\SOAMBuffer_reg[22]_8 [19]),
        .I3(\SOAMBuffer_reg[22]_8 [17]),
        .I4(\SOAMBuffer_reg[22]_8 [18]),
        .O(\CurrentSprite[31]_i_359_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_36 
       (.I0(CurrentSprite294_in),
        .I1(\CurrentSprite_reg[31]_i_123_n_2 ),
        .O(\CurrentSprite[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_360 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[22]_8 [19]),
        .I2(\SOAMBuffer_reg[22]_8 [18]),
        .I3(\SOAMBuffer_reg[22]_8 [17]),
        .O(\CurrentSprite[31]_i_360_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_361 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[22]_8 [18]),
        .I2(\SOAMBuffer_reg[22]_8 [17]),
        .O(\CurrentSprite[31]_i_361_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_362 
       (.I0(\SOAMBuffer_reg[22]_8 [20]),
        .I1(\SOAMBuffer_reg[22]_8 [18]),
        .I2(\SOAMBuffer_reg[22]_8 [17]),
        .I3(\SOAMBuffer_reg[22]_8 [19]),
        .O(\CurrentSprite[31]_i_362_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_363 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[22]_8 [20]),
        .I2(\SOAMBuffer_reg[22]_8 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_363_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_364 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[22]_8 [18]),
        .I2(\SOAMBuffer_reg[22]_8 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_364_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_365 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[22]_8 [16]),
        .I2(\SOAMBuffer_reg[22]_8 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_365_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_366 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[22]_8 [14]),
        .I2(\SOAMBuffer_reg[22]_8 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_366_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_367 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[22]_8 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[22]_8 [21]),
        .O(\CurrentSprite[31]_i_367_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_368 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[22]_8 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[22]_8 [19]),
        .O(\CurrentSprite[31]_i_368_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_369 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[22]_8 [16]),
        .I2(\SOAMBuffer_reg[22]_8 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_369_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \CurrentSprite[31]_i_37 
       (.I0(\CurrentSprite[31]_i_124_n_0 ),
        .I1(CurrentSprite213_in),
        .I2(\CurrentSprite_reg[31]_i_126_n_2 ),
        .I3(\CurrentSprite[31]_i_127_n_0 ),
        .I4(CurrentSprite219_in),
        .I5(\CurrentSprite_reg[31]_i_129_n_2 ),
        .O(\CurrentSprite[31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_370 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[22]_8 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[22]_8 [15]),
        .O(\CurrentSprite[31]_i_370_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_372 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[19]_11 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_372_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_373 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[19]_11 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_373_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_375 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_375_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_376 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[19]_11 [22]),
        .I2(\SOAMBuffer_reg[19]_11 [21]),
        .I3(\CurrentSprite[31]_i_698_n_0 ),
        .O(\CurrentSprite[31]_i_376_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_378 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[16]_14 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_378_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_379 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[16]_14 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_379_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_38 
       (.I0(CurrentSprite231_in),
        .I1(\CurrentSprite_reg[31]_i_131_n_2 ),
        .O(\CurrentSprite[31]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_381 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_381_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_382 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[16]_14 [22]),
        .I2(\SOAMBuffer_reg[16]_14 [21]),
        .I3(\CurrentSprite[31]_i_712_n_0 ),
        .O(\CurrentSprite[31]_i_382_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_384 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[18]_12 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_384_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_385 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[18]_12 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_385_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_387 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_387_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_388 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[18]_12 [22]),
        .I2(\SOAMBuffer_reg[18]_12 [21]),
        .I3(\CurrentSprite[31]_i_726_n_0 ),
        .O(\CurrentSprite[31]_i_388_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_39 
       (.I0(CurrentSprite234_in),
        .I1(\CurrentSprite_reg[31]_i_133_n_2 ),
        .O(\CurrentSprite[31]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_390 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_390_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_391 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[17]_13 [22]),
        .I2(\SOAMBuffer_reg[17]_13 [21]),
        .I3(\CurrentSprite[31]_i_732_n_0 ),
        .O(\CurrentSprite[31]_i_391_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_393 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[17]_13 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_393_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_394 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[17]_13 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_394_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_396 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_396_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_397 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[26]_4 [22]),
        .I2(\SOAMBuffer_reg[26]_4 [21]),
        .I3(\CurrentSprite[31]_i_746_n_0 ),
        .O(\CurrentSprite[31]_i_397_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_399 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[26]_4 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_399_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEEEFEFFFFEEFE)) 
    \CurrentSprite[31]_i_4 
       (.I0(\CurrentSprite[31]_i_20_n_0 ),
        .I1(\CurrentSprite[31]_i_21_n_0 ),
        .I2(CurrentSprite22_in),
        .I3(\CurrentSprite_reg[31]_i_23_n_2 ),
        .I4(CurrentSprite291_in),
        .I5(\CurrentSprite_reg[31]_i_25_n_2 ),
        .O(\CurrentSprite[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_40 
       (.I0(CurrentSprite225_in),
        .I1(\CurrentSprite_reg[31]_i_135_n_2 ),
        .O(\CurrentSprite[31]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_400 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[26]_4 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_400_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_402 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[24]_6 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_402_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_403 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[24]_6 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_403_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_405 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_405_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_406 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[24]_6 [22]),
        .I2(\SOAMBuffer_reg[24]_6 [21]),
        .I3(\CurrentSprite[31]_i_768_n_0 ),
        .O(\CurrentSprite[31]_i_406_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_408 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_408_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_409 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[8]_22 [22]),
        .I2(\SOAMBuffer_reg[8]_22 [21]),
        .I3(\CurrentSprite[31]_i_774_n_0 ),
        .O(\CurrentSprite[31]_i_409_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_411 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[8]_22 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_411_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_412 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[8]_22 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_412_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_414 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[11]_19 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_414_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_415 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[11]_19 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_415_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_417 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_417_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_418 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[11]_19 [22]),
        .I2(\SOAMBuffer_reg[11]_19 [21]),
        .I3(\CurrentSprite[31]_i_796_n_0 ),
        .O(\CurrentSprite[31]_i_418_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_420 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[3]_27 [21]),
        .I2(\SOAMBuffer_reg[3]_27 [20]),
        .I3(\SOAMBuffer_reg[3]_27 [18]),
        .I4(\SOAMBuffer_reg[3]_27 [17]),
        .I5(\SOAMBuffer_reg[3]_27 [19]),
        .O(\CurrentSprite[31]_i_420_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_421 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[3]_27 [20]),
        .I2(\SOAMBuffer_reg[3]_27 [19]),
        .I3(\SOAMBuffer_reg[3]_27 [17]),
        .I4(\SOAMBuffer_reg[3]_27 [18]),
        .O(\CurrentSprite[31]_i_421_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_422 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[3]_27 [19]),
        .I2(\SOAMBuffer_reg[3]_27 [18]),
        .I3(\SOAMBuffer_reg[3]_27 [17]),
        .O(\CurrentSprite[31]_i_422_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_423 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[3]_27 [18]),
        .I2(\SOAMBuffer_reg[3]_27 [17]),
        .O(\CurrentSprite[31]_i_423_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_424 
       (.I0(\SOAMBuffer_reg[3]_27 [20]),
        .I1(\SOAMBuffer_reg[3]_27 [18]),
        .I2(\SOAMBuffer_reg[3]_27 [17]),
        .I3(\SOAMBuffer_reg[3]_27 [19]),
        .O(\CurrentSprite[31]_i_424_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_425 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[3]_27 [20]),
        .I2(\SOAMBuffer_reg[3]_27 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_425_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_426 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[3]_27 [18]),
        .I2(\SOAMBuffer_reg[3]_27 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_426_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_427 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[3]_27 [16]),
        .I2(\SOAMBuffer_reg[3]_27 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_427_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_428 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[3]_27 [14]),
        .I2(\SOAMBuffer_reg[3]_27 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_428_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_429 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[3]_27 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[3]_27 [21]),
        .O(\CurrentSprite[31]_i_429_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAEFFAE)) 
    \CurrentSprite[31]_i_43 
       (.I0(\CurrentSprite[31]_i_142_n_0 ),
        .I1(CurrentSprite237_in),
        .I2(\CurrentSprite_reg[31]_i_144_n_2 ),
        .I3(CurrentSprite246_in),
        .I4(\CurrentSprite_reg[31]_i_146_n_2 ),
        .I5(\CurrentSprite[31]_i_147_n_0 ),
        .O(\CurrentSprite[31]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_430 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[3]_27 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[3]_27 [19]),
        .O(\CurrentSprite[31]_i_430_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_431 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[3]_27 [16]),
        .I2(\SOAMBuffer_reg[3]_27 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_431_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_432 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[3]_27 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[3]_27 [15]),
        .O(\CurrentSprite[31]_i_432_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_433 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[13]_17 [17]),
        .O(\CurrentSprite[31]_i_433_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_434 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[13]_17 [16]),
        .O(\CurrentSprite[31]_i_434_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_435 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[13]_17 [15]),
        .O(\CurrentSprite[31]_i_435_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_436 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[13]_17 [14]),
        .O(\CurrentSprite[31]_i_436_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_437 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[12]_18 [20]),
        .I2(\SOAMBuffer_reg[12]_18 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_437_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_438 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[12]_18 [18]),
        .I2(\SOAMBuffer_reg[12]_18 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_438_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_439 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[12]_18 [16]),
        .I2(\SOAMBuffer_reg[12]_18 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_439_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_44 
       (.I0(\SOAMBuffer_reg[14]_16 [31]),
        .I1(\SOAMBuffer_reg[16]_14 [31]),
        .I2(\SOAMBuffer_reg[15]_15 [31]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[31]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_440 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[12]_18 [14]),
        .I2(\SOAMBuffer_reg[12]_18 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_440_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_441 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[12]_18 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[12]_18 [21]),
        .O(\CurrentSprite[31]_i_441_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_442 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[12]_18 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[12]_18 [19]),
        .O(\CurrentSprite[31]_i_442_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_443 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[12]_18 [16]),
        .I2(\SOAMBuffer_reg[12]_18 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_443_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_444 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[12]_18 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[12]_18 [15]),
        .O(\CurrentSprite[31]_i_444_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_446 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[12]_18 [21]),
        .I2(\SOAMBuffer_reg[12]_18 [20]),
        .I3(\SOAMBuffer_reg[12]_18 [18]),
        .I4(\SOAMBuffer_reg[12]_18 [17]),
        .I5(\SOAMBuffer_reg[12]_18 [19]),
        .O(\CurrentSprite[31]_i_446_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_447 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[12]_18 [20]),
        .I2(\SOAMBuffer_reg[12]_18 [19]),
        .I3(\SOAMBuffer_reg[12]_18 [17]),
        .I4(\SOAMBuffer_reg[12]_18 [18]),
        .O(\CurrentSprite[31]_i_447_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_448 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[12]_18 [19]),
        .I2(\SOAMBuffer_reg[12]_18 [18]),
        .I3(\SOAMBuffer_reg[12]_18 [17]),
        .O(\CurrentSprite[31]_i_448_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_449 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[12]_18 [18]),
        .I2(\SOAMBuffer_reg[12]_18 [17]),
        .O(\CurrentSprite[31]_i_449_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_45 
       (.I0(\SOAMBuffer_reg[20]_10 [31]),
        .I1(\SOAMBuffer_reg[22]_8 [31]),
        .I2(\SOAMBuffer_reg[21]_9 [31]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[31]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_450 
       (.I0(\SOAMBuffer_reg[12]_18 [20]),
        .I1(\SOAMBuffer_reg[12]_18 [18]),
        .I2(\SOAMBuffer_reg[12]_18 [17]),
        .I3(\SOAMBuffer_reg[12]_18 [19]),
        .O(\CurrentSprite[31]_i_450_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_451 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[15]_15 [20]),
        .I2(\SOAMBuffer_reg[15]_15 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_451_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_452 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[15]_15 [18]),
        .I2(\SOAMBuffer_reg[15]_15 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_452_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_453 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[15]_15 [16]),
        .I2(\SOAMBuffer_reg[15]_15 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_453_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_454 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[15]_15 [14]),
        .I2(\SOAMBuffer_reg[15]_15 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_454_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_455 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[15]_15 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[15]_15 [21]),
        .O(\CurrentSprite[31]_i_455_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_456 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[15]_15 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[15]_15 [19]),
        .O(\CurrentSprite[31]_i_456_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_457 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[15]_15 [16]),
        .I2(\SOAMBuffer_reg[15]_15 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_457_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_458 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[15]_15 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[15]_15 [15]),
        .O(\CurrentSprite[31]_i_458_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \CurrentSprite[31]_i_46 
       (.I0(CurrentSprite240_in),
        .I1(\CurrentSprite_reg[31]_i_151_n_2 ),
        .I2(CurrentSprite237_in),
        .I3(\CurrentSprite_reg[31]_i_144_n_2 ),
        .I4(\CurrentSprite_reg[31]_i_152_n_2 ),
        .I5(CurrentSprite243_in),
        .O(\CurrentSprite[31]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_460 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[15]_15 [21]),
        .I2(\SOAMBuffer_reg[15]_15 [20]),
        .I3(\SOAMBuffer_reg[15]_15 [18]),
        .I4(\SOAMBuffer_reg[15]_15 [17]),
        .I5(\SOAMBuffer_reg[15]_15 [19]),
        .O(\CurrentSprite[31]_i_460_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_461 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[15]_15 [20]),
        .I2(\SOAMBuffer_reg[15]_15 [19]),
        .I3(\SOAMBuffer_reg[15]_15 [17]),
        .I4(\SOAMBuffer_reg[15]_15 [18]),
        .O(\CurrentSprite[31]_i_461_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_462 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[15]_15 [19]),
        .I2(\SOAMBuffer_reg[15]_15 [18]),
        .I3(\SOAMBuffer_reg[15]_15 [17]),
        .O(\CurrentSprite[31]_i_462_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_463 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[15]_15 [18]),
        .I2(\SOAMBuffer_reg[15]_15 [17]),
        .O(\CurrentSprite[31]_i_463_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_464 
       (.I0(\SOAMBuffer_reg[15]_15 [20]),
        .I1(\SOAMBuffer_reg[15]_15 [18]),
        .I2(\SOAMBuffer_reg[15]_15 [17]),
        .I3(\SOAMBuffer_reg[15]_15 [19]),
        .O(\CurrentSprite[31]_i_464_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_465 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[14]_16 [20]),
        .I2(\SOAMBuffer_reg[14]_16 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_465_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_466 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[14]_16 [18]),
        .I2(\SOAMBuffer_reg[14]_16 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_466_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_467 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[14]_16 [16]),
        .I2(\SOAMBuffer_reg[14]_16 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_467_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_468 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[14]_16 [14]),
        .I2(\SOAMBuffer_reg[14]_16 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_468_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_469 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[14]_16 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[14]_16 [21]),
        .O(\CurrentSprite[31]_i_469_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \CurrentSprite[31]_i_47 
       (.I0(CurrentSprite249_in),
        .I1(\CurrentSprite_reg[31]_i_74_n_2 ),
        .I2(CurrentSprite246_in),
        .I3(\CurrentSprite_reg[31]_i_146_n_2 ),
        .I4(\CurrentSprite_reg[31]_i_76_n_2 ),
        .I5(CurrentSprite252_in),
        .O(\CurrentSprite[31]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_470 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[14]_16 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[14]_16 [19]),
        .O(\CurrentSprite[31]_i_470_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_471 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[14]_16 [16]),
        .I2(\SOAMBuffer_reg[14]_16 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_471_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_472 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[14]_16 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[14]_16 [15]),
        .O(\CurrentSprite[31]_i_472_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_474 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[14]_16 [21]),
        .I2(\SOAMBuffer_reg[14]_16 [20]),
        .I3(\SOAMBuffer_reg[14]_16 [18]),
        .I4(\SOAMBuffer_reg[14]_16 [17]),
        .I5(\SOAMBuffer_reg[14]_16 [19]),
        .O(\CurrentSprite[31]_i_474_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_475 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[14]_16 [20]),
        .I2(\SOAMBuffer_reg[14]_16 [19]),
        .I3(\SOAMBuffer_reg[14]_16 [17]),
        .I4(\SOAMBuffer_reg[14]_16 [18]),
        .O(\CurrentSprite[31]_i_475_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_476 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[14]_16 [19]),
        .I2(\SOAMBuffer_reg[14]_16 [18]),
        .I3(\SOAMBuffer_reg[14]_16 [17]),
        .O(\CurrentSprite[31]_i_476_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_477 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[14]_16 [18]),
        .I2(\SOAMBuffer_reg[14]_16 [17]),
        .O(\CurrentSprite[31]_i_477_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_478 
       (.I0(\SOAMBuffer_reg[14]_16 [20]),
        .I1(\SOAMBuffer_reg[14]_16 [18]),
        .I2(\SOAMBuffer_reg[14]_16 [17]),
        .I3(\SOAMBuffer_reg[14]_16 [19]),
        .O(\CurrentSprite[31]_i_478_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_479 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[10]_20 [20]),
        .I2(\SOAMBuffer_reg[10]_20 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_479_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_48 
       (.I0(\SOAMBuffer_reg[17]_13 [31]),
        .I1(\SOAMBuffer_reg[19]_11 [31]),
        .I2(\SOAMBuffer_reg[18]_12 [31]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[31]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_480 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[10]_20 [18]),
        .I2(\SOAMBuffer_reg[10]_20 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_480_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_481 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[10]_20 [16]),
        .I2(\SOAMBuffer_reg[10]_20 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_481_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_482 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[10]_20 [14]),
        .I2(\SOAMBuffer_reg[10]_20 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_482_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_483 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[10]_20 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[10]_20 [21]),
        .O(\CurrentSprite[31]_i_483_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_484 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[10]_20 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[10]_20 [19]),
        .O(\CurrentSprite[31]_i_484_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_485 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[10]_20 [16]),
        .I2(\SOAMBuffer_reg[10]_20 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_485_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_486 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[10]_20 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[10]_20 [15]),
        .O(\CurrentSprite[31]_i_486_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_488 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[10]_20 [21]),
        .I2(\SOAMBuffer_reg[10]_20 [20]),
        .I3(\SOAMBuffer_reg[10]_20 [18]),
        .I4(\SOAMBuffer_reg[10]_20 [17]),
        .I5(\SOAMBuffer_reg[10]_20 [19]),
        .O(\CurrentSprite[31]_i_488_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_489 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[10]_20 [20]),
        .I2(\SOAMBuffer_reg[10]_20 [19]),
        .I3(\SOAMBuffer_reg[10]_20 [17]),
        .I4(\SOAMBuffer_reg[10]_20 [18]),
        .O(\CurrentSprite[31]_i_489_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \CurrentSprite[31]_i_49 
       (.I0(\CurrentSprite[31]_i_46_n_0 ),
        .I1(\CurrentSprite[31]_i_38_n_0 ),
        .I2(CurrentSprite228_in),
        .I3(\CurrentSprite_reg[31]_i_41_n_2 ),
        .I4(\CurrentSprite[31]_i_39_n_0 ),
        .I5(\CurrentSprite[31]_i_47_n_0 ),
        .O(\CurrentSprite[31]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_490 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[10]_20 [19]),
        .I2(\SOAMBuffer_reg[10]_20 [18]),
        .I3(\SOAMBuffer_reg[10]_20 [17]),
        .O(\CurrentSprite[31]_i_490_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_491 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[10]_20 [18]),
        .I2(\SOAMBuffer_reg[10]_20 [17]),
        .O(\CurrentSprite[31]_i_491_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_492 
       (.I0(\SOAMBuffer_reg[10]_20 [20]),
        .I1(\SOAMBuffer_reg[10]_20 [18]),
        .I2(\SOAMBuffer_reg[10]_20 [17]),
        .I3(\SOAMBuffer_reg[10]_20 [19]),
        .O(\CurrentSprite[31]_i_492_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_493 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[9]_21 [20]),
        .I2(\SOAMBuffer_reg[9]_21 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_493_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_494 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[9]_21 [18]),
        .I2(\SOAMBuffer_reg[9]_21 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_494_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_495 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[9]_21 [16]),
        .I2(\SOAMBuffer_reg[9]_21 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_495_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_496 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[9]_21 [14]),
        .I2(\SOAMBuffer_reg[9]_21 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_496_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_497 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[9]_21 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[9]_21 [21]),
        .O(\CurrentSprite[31]_i_497_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_498 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[9]_21 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[9]_21 [19]),
        .O(\CurrentSprite[31]_i_498_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_499 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[9]_21 [16]),
        .I2(\SOAMBuffer_reg[9]_21 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_499_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAEFFAE)) 
    \CurrentSprite[31]_i_5 
       (.I0(\CurrentSprite[31]_i_26_n_0 ),
        .I1(CurrentSprite273_in),
        .I2(\CurrentSprite_reg[31]_i_28_n_2 ),
        .I3(CurrentSprite282_in),
        .I4(\CurrentSprite_reg[31]_i_30_n_2 ),
        .I5(\CurrentSprite[31]_i_31_n_0 ),
        .O(\CurrentSprite[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_50 
       (.I0(\SOAMBuffer_reg[23]_7 [31]),
        .I1(\SOAMBuffer_reg[25]_5 [31]),
        .I2(\SOAMBuffer_reg[24]_6 [31]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[31]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_500 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[9]_21 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[9]_21 [15]),
        .O(\CurrentSprite[31]_i_500_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_502 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[9]_21 [21]),
        .I2(\SOAMBuffer_reg[9]_21 [20]),
        .I3(\SOAMBuffer_reg[9]_21 [18]),
        .I4(\SOAMBuffer_reg[9]_21 [17]),
        .I5(\SOAMBuffer_reg[9]_21 [19]),
        .O(\CurrentSprite[31]_i_502_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_503 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[9]_21 [20]),
        .I2(\SOAMBuffer_reg[9]_21 [19]),
        .I3(\SOAMBuffer_reg[9]_21 [17]),
        .I4(\SOAMBuffer_reg[9]_21 [18]),
        .O(\CurrentSprite[31]_i_503_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_504 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[9]_21 [19]),
        .I2(\SOAMBuffer_reg[9]_21 [18]),
        .I3(\SOAMBuffer_reg[9]_21 [17]),
        .O(\CurrentSprite[31]_i_504_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_505 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[9]_21 [18]),
        .I2(\SOAMBuffer_reg[9]_21 [17]),
        .O(\CurrentSprite[31]_i_505_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_506 
       (.I0(\SOAMBuffer_reg[9]_21 [20]),
        .I1(\SOAMBuffer_reg[9]_21 [18]),
        .I2(\SOAMBuffer_reg[9]_21 [17]),
        .I3(\SOAMBuffer_reg[9]_21 [19]),
        .O(\CurrentSprite[31]_i_506_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_507 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[2]_28 [20]),
        .I2(\SOAMBuffer_reg[2]_28 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_507_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_508 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[2]_28 [18]),
        .I2(\SOAMBuffer_reg[2]_28 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_508_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_509 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[2]_28 [16]),
        .I2(\SOAMBuffer_reg[2]_28 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_509_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[31]_i_51 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [31]),
        .I3(\SOAMBuffer_reg_n_0_[31][31] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [31]),
        .O(\CurrentSprite[31]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_510 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[2]_28 [14]),
        .I2(\SOAMBuffer_reg[2]_28 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_510_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_511 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[2]_28 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[2]_28 [21]),
        .O(\CurrentSprite[31]_i_511_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_512 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[2]_28 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[2]_28 [19]),
        .O(\CurrentSprite[31]_i_512_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_513 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[2]_28 [16]),
        .I2(\SOAMBuffer_reg[2]_28 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_513_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_514 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[2]_28 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[2]_28 [15]),
        .O(\CurrentSprite[31]_i_514_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_516 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[2]_28 [21]),
        .I2(\SOAMBuffer_reg[2]_28 [20]),
        .I3(\SOAMBuffer_reg[2]_28 [18]),
        .I4(\SOAMBuffer_reg[2]_28 [17]),
        .I5(\SOAMBuffer_reg[2]_28 [19]),
        .O(\CurrentSprite[31]_i_516_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_517 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[2]_28 [20]),
        .I2(\SOAMBuffer_reg[2]_28 [19]),
        .I3(\SOAMBuffer_reg[2]_28 [17]),
        .I4(\SOAMBuffer_reg[2]_28 [18]),
        .O(\CurrentSprite[31]_i_517_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_518 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[2]_28 [19]),
        .I2(\SOAMBuffer_reg[2]_28 [18]),
        .I3(\SOAMBuffer_reg[2]_28 [17]),
        .O(\CurrentSprite[31]_i_518_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_519 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[2]_28 [18]),
        .I2(\SOAMBuffer_reg[2]_28 [17]),
        .O(\CurrentSprite[31]_i_519_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \CurrentSprite[31]_i_52 
       (.I0(CurrentSprite213_in),
        .I1(\CurrentSprite_reg[31]_i_126_n_2 ),
        .I2(CurrentSprite210_in),
        .I3(\CurrentSprite_reg[31]_i_33_n_2 ),
        .I4(\CurrentSprite_reg[31]_i_156_n_2 ),
        .I5(CurrentSprite216_in),
        .O(\CurrentSprite[31]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_520 
       (.I0(\SOAMBuffer_reg[2]_28 [20]),
        .I1(\SOAMBuffer_reg[2]_28 [18]),
        .I2(\SOAMBuffer_reg[2]_28 [17]),
        .I3(\SOAMBuffer_reg[2]_28 [19]),
        .O(\CurrentSprite[31]_i_520_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_521 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(L[17]),
        .O(\CurrentSprite[31]_i_521_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_522 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(L[16]),
        .O(\CurrentSprite[31]_i_522_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_523 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(L[15]),
        .O(\CurrentSprite[31]_i_523_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_524 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(L[14]),
        .O(\CurrentSprite[31]_i_524_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_525 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[1]_29 [17]),
        .O(\CurrentSprite[31]_i_525_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_526 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[1]_29 [16]),
        .O(\CurrentSprite[31]_i_526_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_527 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[1]_29 [15]),
        .O(\CurrentSprite[31]_i_527_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_528 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[1]_29 [14]),
        .O(\CurrentSprite[31]_i_528_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_529 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[6]_24 [20]),
        .I2(\SOAMBuffer_reg[6]_24 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_529_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \CurrentSprite[31]_i_53 
       (.I0(CurrentSprite222_in),
        .I1(\CurrentSprite_reg[31]_i_159_n_2 ),
        .I2(CurrentSprite219_in),
        .I3(\CurrentSprite_reg[31]_i_129_n_2 ),
        .I4(\CurrentSprite_reg[31]_i_135_n_2 ),
        .I5(CurrentSprite225_in),
        .O(\CurrentSprite[31]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_530 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[6]_24 [18]),
        .I2(\SOAMBuffer_reg[6]_24 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_530_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_531 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[6]_24 [16]),
        .I2(\SOAMBuffer_reg[6]_24 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_531_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_532 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[6]_24 [14]),
        .I2(\SOAMBuffer_reg[6]_24 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_532_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_533 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[6]_24 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[6]_24 [21]),
        .O(\CurrentSprite[31]_i_533_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_534 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[6]_24 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[6]_24 [19]),
        .O(\CurrentSprite[31]_i_534_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_535 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[6]_24 [16]),
        .I2(\SOAMBuffer_reg[6]_24 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_535_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_536 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[6]_24 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[6]_24 [15]),
        .O(\CurrentSprite[31]_i_536_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_538 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[6]_24 [21]),
        .I2(\SOAMBuffer_reg[6]_24 [20]),
        .I3(\SOAMBuffer_reg[6]_24 [18]),
        .I4(\SOAMBuffer_reg[6]_24 [17]),
        .I5(\SOAMBuffer_reg[6]_24 [19]),
        .O(\CurrentSprite[31]_i_538_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_539 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[6]_24 [20]),
        .I2(\SOAMBuffer_reg[6]_24 [19]),
        .I3(\SOAMBuffer_reg[6]_24 [17]),
        .I4(\SOAMBuffer_reg[6]_24 [18]),
        .O(\CurrentSprite[31]_i_539_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_54 
       (.I0(\SOAMBuffer_reg[26]_4 [31]),
        .I1(\SOAMBuffer_reg[28]_2 [31]),
        .I2(\SOAMBuffer_reg[27]_3 [31]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[31]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_540 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[6]_24 [19]),
        .I2(\SOAMBuffer_reg[6]_24 [18]),
        .I3(\SOAMBuffer_reg[6]_24 [17]),
        .O(\CurrentSprite[31]_i_540_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_541 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[6]_24 [18]),
        .I2(\SOAMBuffer_reg[6]_24 [17]),
        .O(\CurrentSprite[31]_i_541_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_542 
       (.I0(\SOAMBuffer_reg[6]_24 [20]),
        .I1(\SOAMBuffer_reg[6]_24 [18]),
        .I2(\SOAMBuffer_reg[6]_24 [17]),
        .I3(\SOAMBuffer_reg[6]_24 [19]),
        .O(\CurrentSprite[31]_i_542_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_543 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[7]_23 [17]),
        .O(\CurrentSprite[31]_i_543_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_544 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[7]_23 [16]),
        .O(\CurrentSprite[31]_i_544_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_545 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[7]_23 [15]),
        .O(\CurrentSprite[31]_i_545_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_546 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[7]_23 [14]),
        .O(\CurrentSprite[31]_i_546_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_547 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[4]_26 [17]),
        .O(\CurrentSprite[31]_i_547_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_548 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[4]_26 [16]),
        .O(\CurrentSprite[31]_i_548_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_549 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[4]_26 [15]),
        .O(\CurrentSprite[31]_i_549_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \CurrentSprite[31]_i_55 
       (.I0(CurrentSprite267_in),
        .I1(\CurrentSprite_reg[31]_i_81_n_2 ),
        .I2(CurrentSprite264_in),
        .I3(\CurrentSprite_reg[31]_i_78_n_2 ),
        .I4(\CurrentSprite_reg[31]_i_162_n_2 ),
        .I5(CurrentSprite270_in),
        .O(\CurrentSprite[31]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_550 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[4]_26 [14]),
        .O(\CurrentSprite[31]_i_550_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_551 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[5]_25 [20]),
        .I2(\SOAMBuffer_reg[5]_25 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_551_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_552 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[5]_25 [18]),
        .I2(\SOAMBuffer_reg[5]_25 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_552_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_553 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[5]_25 [16]),
        .I2(\SOAMBuffer_reg[5]_25 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_553_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_554 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[5]_25 [14]),
        .I2(\SOAMBuffer_reg[5]_25 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_554_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_555 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[5]_25 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[5]_25 [21]),
        .O(\CurrentSprite[31]_i_555_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_556 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[5]_25 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[5]_25 [19]),
        .O(\CurrentSprite[31]_i_556_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_557 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[5]_25 [16]),
        .I2(\SOAMBuffer_reg[5]_25 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_557_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_558 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[5]_25 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[5]_25 [15]),
        .O(\CurrentSprite[31]_i_558_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_56 
       (.I0(CurrentSprite261_in),
        .I1(\CurrentSprite_reg[31]_i_165_n_2 ),
        .O(\CurrentSprite[31]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_560 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[5]_25 [21]),
        .I2(\SOAMBuffer_reg[5]_25 [20]),
        .I3(\SOAMBuffer_reg[5]_25 [18]),
        .I4(\SOAMBuffer_reg[5]_25 [17]),
        .I5(\SOAMBuffer_reg[5]_25 [19]),
        .O(\CurrentSprite[31]_i_560_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_561 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[5]_25 [20]),
        .I2(\SOAMBuffer_reg[5]_25 [19]),
        .I3(\SOAMBuffer_reg[5]_25 [17]),
        .I4(\SOAMBuffer_reg[5]_25 [18]),
        .O(\CurrentSprite[31]_i_561_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_562 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[5]_25 [19]),
        .I2(\SOAMBuffer_reg[5]_25 [18]),
        .I3(\SOAMBuffer_reg[5]_25 [17]),
        .O(\CurrentSprite[31]_i_562_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_563 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[5]_25 [18]),
        .I2(\SOAMBuffer_reg[5]_25 [17]),
        .O(\CurrentSprite[31]_i_563_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_564 
       (.I0(\SOAMBuffer_reg[5]_25 [20]),
        .I1(\SOAMBuffer_reg[5]_25 [18]),
        .I2(\SOAMBuffer_reg[5]_25 [17]),
        .I3(\SOAMBuffer_reg[5]_25 [19]),
        .O(\CurrentSprite[31]_i_564_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_565 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[29]_1 [20]),
        .I2(\SOAMBuffer_reg[29]_1 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_565_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_566 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[29]_1 [18]),
        .I2(\SOAMBuffer_reg[29]_1 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_566_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_567 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[29]_1 [16]),
        .I2(\SOAMBuffer_reg[29]_1 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_567_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_568 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[29]_1 [14]),
        .I2(\SOAMBuffer_reg[29]_1 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_568_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_569 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[29]_1 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[29]_1 [21]),
        .O(\CurrentSprite[31]_i_569_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \CurrentSprite[31]_i_57 
       (.I0(CurrentSprite276_in),
        .I1(\CurrentSprite_reg[31]_i_97_n_2 ),
        .I2(CurrentSprite273_in),
        .I3(\CurrentSprite_reg[31]_i_28_n_2 ),
        .I4(\CurrentSprite_reg[31]_i_111_n_2 ),
        .I5(CurrentSprite279_in),
        .O(\CurrentSprite[31]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_570 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[29]_1 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[29]_1 [19]),
        .O(\CurrentSprite[31]_i_570_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_571 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[29]_1 [16]),
        .I2(\SOAMBuffer_reg[29]_1 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_571_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_572 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[29]_1 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[29]_1 [15]),
        .O(\CurrentSprite[31]_i_572_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_574 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[29]_1 [21]),
        .I2(\SOAMBuffer_reg[29]_1 [20]),
        .I3(\SOAMBuffer_reg[29]_1 [18]),
        .I4(\SOAMBuffer_reg[29]_1 [17]),
        .I5(\SOAMBuffer_reg[29]_1 [19]),
        .O(\CurrentSprite[31]_i_574_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_575 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[29]_1 [20]),
        .I2(\SOAMBuffer_reg[29]_1 [19]),
        .I3(\SOAMBuffer_reg[29]_1 [17]),
        .I4(\SOAMBuffer_reg[29]_1 [18]),
        .O(\CurrentSprite[31]_i_575_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_576 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[29]_1 [19]),
        .I2(\SOAMBuffer_reg[29]_1 [18]),
        .I3(\SOAMBuffer_reg[29]_1 [17]),
        .O(\CurrentSprite[31]_i_576_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_577 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[29]_1 [18]),
        .I2(\SOAMBuffer_reg[29]_1 [17]),
        .O(\CurrentSprite[31]_i_577_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_578 
       (.I0(\SOAMBuffer_reg[29]_1 [20]),
        .I1(\SOAMBuffer_reg[29]_1 [18]),
        .I2(\SOAMBuffer_reg[29]_1 [17]),
        .I3(\SOAMBuffer_reg[29]_1 [19]),
        .O(\CurrentSprite[31]_i_578_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_579 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[28]_2 [17]),
        .O(\CurrentSprite[31]_i_579_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_58 
       (.I0(\SOAMBuffer_reg[8]_22 [31]),
        .I1(\SOAMBuffer_reg[10]_20 [31]),
        .I2(\SOAMBuffer_reg[9]_21 [31]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[31]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_580 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[28]_2 [16]),
        .O(\CurrentSprite[31]_i_580_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_581 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[28]_2 [15]),
        .O(\CurrentSprite[31]_i_581_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_582 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[28]_2 [14]),
        .O(\CurrentSprite[31]_i_582_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_583 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[30]_0 [20]),
        .I2(\SOAMBuffer_reg[30]_0 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_583_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_584 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[30]_0 [18]),
        .I2(\SOAMBuffer_reg[30]_0 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_584_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_585 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[30]_0 [16]),
        .I2(\SOAMBuffer_reg[30]_0 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_585_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_586 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[30]_0 [14]),
        .I2(\SOAMBuffer_reg[30]_0 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_586_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_587 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[30]_0 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[30]_0 [21]),
        .O(\CurrentSprite[31]_i_587_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_588 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[30]_0 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[30]_0 [19]),
        .O(\CurrentSprite[31]_i_588_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_589 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[30]_0 [16]),
        .I2(\SOAMBuffer_reg[30]_0 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_589_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_59 
       (.I0(\SOAMBuffer_reg[11]_19 [31]),
        .I1(\SOAMBuffer_reg[13]_17 [31]),
        .I2(\SOAMBuffer_reg[12]_18 [31]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[31]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_590 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[30]_0 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[30]_0 [15]),
        .O(\CurrentSprite[31]_i_590_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_592 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[30]_0 [21]),
        .I2(\SOAMBuffer_reg[30]_0 [20]),
        .I3(\SOAMBuffer_reg[30]_0 [18]),
        .I4(\SOAMBuffer_reg[30]_0 [17]),
        .I5(\SOAMBuffer_reg[30]_0 [19]),
        .O(\CurrentSprite[31]_i_592_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_593 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[30]_0 [20]),
        .I2(\SOAMBuffer_reg[30]_0 [19]),
        .I3(\SOAMBuffer_reg[30]_0 [17]),
        .I4(\SOAMBuffer_reg[30]_0 [18]),
        .O(\CurrentSprite[31]_i_593_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_594 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[30]_0 [19]),
        .I2(\SOAMBuffer_reg[30]_0 [18]),
        .I3(\SOAMBuffer_reg[30]_0 [17]),
        .O(\CurrentSprite[31]_i_594_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_595 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[30]_0 [18]),
        .I2(\SOAMBuffer_reg[30]_0 [17]),
        .O(\CurrentSprite[31]_i_595_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_596 
       (.I0(\SOAMBuffer_reg[30]_0 [20]),
        .I1(\SOAMBuffer_reg[30]_0 [18]),
        .I2(\SOAMBuffer_reg[30]_0 [17]),
        .I3(\SOAMBuffer_reg[30]_0 [19]),
        .O(\CurrentSprite[31]_i_596_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_597 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[0]_30 [20]),
        .I2(\SOAMBuffer_reg[0]_30 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_597_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_598 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[0]_30 [18]),
        .I2(\SOAMBuffer_reg[0]_30 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_598_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_599 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[0]_30 [16]),
        .I2(\SOAMBuffer_reg[0]_30 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_599_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \CurrentSprite[31]_i_6 
       (.I0(\CurrentSprite[31]_i_32_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_33_n_2 ),
        .I2(CurrentSprite210_in),
        .I3(\CurrentSprite[31]_i_35_n_0 ),
        .I4(\CurrentSprite[31]_i_36_n_0 ),
        .I5(\CurrentSprite[31]_i_37_n_0 ),
        .O(\CurrentSprite[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_60 
       (.I0(\SOAMBuffer_reg[5]_25 [31]),
        .I1(\SOAMBuffer_reg[7]_23 [31]),
        .I2(\SOAMBuffer_reg[6]_24 [31]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[31]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_600 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[0]_30 [14]),
        .I2(\SOAMBuffer_reg[0]_30 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_600_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_601 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[0]_30 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[0]_30 [21]),
        .O(\CurrentSprite[31]_i_601_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_602 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[0]_30 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[0]_30 [19]),
        .O(\CurrentSprite[31]_i_602_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_603 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[0]_30 [16]),
        .I2(\SOAMBuffer_reg[0]_30 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_603_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_604 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[0]_30 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[0]_30 [15]),
        .O(\CurrentSprite[31]_i_604_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_606 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[0]_30 [21]),
        .I2(\SOAMBuffer_reg[0]_30 [20]),
        .I3(\SOAMBuffer_reg[0]_30 [18]),
        .I4(\SOAMBuffer_reg[0]_30 [17]),
        .I5(\SOAMBuffer_reg[0]_30 [19]),
        .O(\CurrentSprite[31]_i_606_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_607 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[0]_30 [20]),
        .I2(\SOAMBuffer_reg[0]_30 [19]),
        .I3(\SOAMBuffer_reg[0]_30 [17]),
        .I4(\SOAMBuffer_reg[0]_30 [18]),
        .O(\CurrentSprite[31]_i_607_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_608 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[0]_30 [19]),
        .I2(\SOAMBuffer_reg[0]_30 [18]),
        .I3(\SOAMBuffer_reg[0]_30 [17]),
        .O(\CurrentSprite[31]_i_608_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_609 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[0]_30 [18]),
        .I2(\SOAMBuffer_reg[0]_30 [17]),
        .O(\CurrentSprite[31]_i_609_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_610 
       (.I0(\SOAMBuffer_reg[0]_30 [20]),
        .I1(\SOAMBuffer_reg[0]_30 [18]),
        .I2(\SOAMBuffer_reg[0]_30 [17]),
        .I3(\SOAMBuffer_reg[0]_30 [19]),
        .O(\CurrentSprite[31]_i_610_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_611 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[27]_3 [20]),
        .I2(\SOAMBuffer_reg[27]_3 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_611_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_612 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[27]_3 [18]),
        .I2(\SOAMBuffer_reg[27]_3 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_612_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_613 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[27]_3 [16]),
        .I2(\SOAMBuffer_reg[27]_3 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_613_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_614 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[27]_3 [14]),
        .I2(\SOAMBuffer_reg[27]_3 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_614_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_615 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[27]_3 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[27]_3 [21]),
        .O(\CurrentSprite[31]_i_615_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_616 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[27]_3 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[27]_3 [19]),
        .O(\CurrentSprite[31]_i_616_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_617 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[27]_3 [16]),
        .I2(\SOAMBuffer_reg[27]_3 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_617_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_618 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[27]_3 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[27]_3 [15]),
        .O(\CurrentSprite[31]_i_618_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_620 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[27]_3 [21]),
        .I2(\SOAMBuffer_reg[27]_3 [20]),
        .I3(\SOAMBuffer_reg[27]_3 [18]),
        .I4(\SOAMBuffer_reg[27]_3 [17]),
        .I5(\SOAMBuffer_reg[27]_3 [19]),
        .O(\CurrentSprite[31]_i_620_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_621 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[27]_3 [20]),
        .I2(\SOAMBuffer_reg[27]_3 [19]),
        .I3(\SOAMBuffer_reg[27]_3 [17]),
        .I4(\SOAMBuffer_reg[27]_3 [18]),
        .O(\CurrentSprite[31]_i_621_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_622 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[27]_3 [19]),
        .I2(\SOAMBuffer_reg[27]_3 [18]),
        .I3(\SOAMBuffer_reg[27]_3 [17]),
        .O(\CurrentSprite[31]_i_622_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_623 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[27]_3 [18]),
        .I2(\SOAMBuffer_reg[27]_3 [17]),
        .O(\CurrentSprite[31]_i_623_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_624 
       (.I0(\SOAMBuffer_reg[27]_3 [20]),
        .I1(\SOAMBuffer_reg[27]_3 [18]),
        .I2(\SOAMBuffer_reg[27]_3 [17]),
        .I3(\SOAMBuffer_reg[27]_3 [19]),
        .O(\CurrentSprite[31]_i_624_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_625 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[25]_5 [20]),
        .I2(\SOAMBuffer_reg[25]_5 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_625_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_626 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[25]_5 [18]),
        .I2(\SOAMBuffer_reg[25]_5 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_626_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_627 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[25]_5 [16]),
        .I2(\SOAMBuffer_reg[25]_5 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_627_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_628 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[25]_5 [14]),
        .I2(\SOAMBuffer_reg[25]_5 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_628_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_629 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[25]_5 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[25]_5 [21]),
        .O(\CurrentSprite[31]_i_629_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \CurrentSprite[31]_i_63 
       (.I0(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I1(CurrentSprite291_in),
        .I2(\CurrentSprite_reg[31]_i_123_n_2 ),
        .I3(CurrentSprite294_in),
        .O(\CurrentSprite[31]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_630 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[25]_5 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[25]_5 [19]),
        .O(\CurrentSprite[31]_i_630_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_631 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[25]_5 [16]),
        .I2(\SOAMBuffer_reg[25]_5 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_631_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_632 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[25]_5 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[25]_5 [15]),
        .O(\CurrentSprite[31]_i_632_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_634 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[25]_5 [21]),
        .I2(\SOAMBuffer_reg[25]_5 [20]),
        .I3(\SOAMBuffer_reg[25]_5 [18]),
        .I4(\SOAMBuffer_reg[25]_5 [17]),
        .I5(\SOAMBuffer_reg[25]_5 [19]),
        .O(\CurrentSprite[31]_i_634_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_635 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[25]_5 [20]),
        .I2(\SOAMBuffer_reg[25]_5 [19]),
        .I3(\SOAMBuffer_reg[25]_5 [17]),
        .I4(\SOAMBuffer_reg[25]_5 [18]),
        .O(\CurrentSprite[31]_i_635_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_636 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[25]_5 [19]),
        .I2(\SOAMBuffer_reg[25]_5 [18]),
        .I3(\SOAMBuffer_reg[25]_5 [17]),
        .O(\CurrentSprite[31]_i_636_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_637 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[25]_5 [18]),
        .I2(\SOAMBuffer_reg[25]_5 [17]),
        .O(\CurrentSprite[31]_i_637_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_638 
       (.I0(\SOAMBuffer_reg[25]_5 [20]),
        .I1(\SOAMBuffer_reg[25]_5 [18]),
        .I2(\SOAMBuffer_reg[25]_5 [17]),
        .I3(\SOAMBuffer_reg[25]_5 [19]),
        .O(\CurrentSprite[31]_i_638_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_639 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[21]_9 [20]),
        .I2(\SOAMBuffer_reg[21]_9 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_639_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[31]_i_64 
       (.I0(\SOAMBuffer_reg[2]_28 [31]),
        .I1(\SOAMBuffer_reg[4]_26 [31]),
        .I2(\SOAMBuffer_reg[3]_27 [31]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[31]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_640 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[21]_9 [18]),
        .I2(\SOAMBuffer_reg[21]_9 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_640_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_641 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[21]_9 [16]),
        .I2(\SOAMBuffer_reg[21]_9 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_641_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_642 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[21]_9 [14]),
        .I2(\SOAMBuffer_reg[21]_9 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_642_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_643 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[21]_9 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[21]_9 [21]),
        .O(\CurrentSprite[31]_i_643_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_644 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[21]_9 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[21]_9 [19]),
        .O(\CurrentSprite[31]_i_644_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_645 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[21]_9 [16]),
        .I2(\SOAMBuffer_reg[21]_9 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_645_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_646 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[21]_9 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[21]_9 [15]),
        .O(\CurrentSprite[31]_i_646_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_648 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[21]_9 [21]),
        .I2(\SOAMBuffer_reg[21]_9 [20]),
        .I3(\SOAMBuffer_reg[21]_9 [18]),
        .I4(\SOAMBuffer_reg[21]_9 [17]),
        .I5(\SOAMBuffer_reg[21]_9 [19]),
        .O(\CurrentSprite[31]_i_648_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_649 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[21]_9 [20]),
        .I2(\SOAMBuffer_reg[21]_9 [19]),
        .I3(\SOAMBuffer_reg[21]_9 [17]),
        .I4(\SOAMBuffer_reg[21]_9 [18]),
        .O(\CurrentSprite[31]_i_649_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_650 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[21]_9 [19]),
        .I2(\SOAMBuffer_reg[21]_9 [18]),
        .I3(\SOAMBuffer_reg[21]_9 [17]),
        .O(\CurrentSprite[31]_i_650_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_651 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[21]_9 [18]),
        .I2(\SOAMBuffer_reg[21]_9 [17]),
        .O(\CurrentSprite[31]_i_651_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_652 
       (.I0(\SOAMBuffer_reg[21]_9 [20]),
        .I1(\SOAMBuffer_reg[21]_9 [18]),
        .I2(\SOAMBuffer_reg[21]_9 [17]),
        .I3(\SOAMBuffer_reg[21]_9 [19]),
        .O(\CurrentSprite[31]_i_652_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_653 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[20]_10 [20]),
        .I2(\SOAMBuffer_reg[20]_10 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_653_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_654 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[20]_10 [18]),
        .I2(\SOAMBuffer_reg[20]_10 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_654_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_655 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[20]_10 [16]),
        .I2(\SOAMBuffer_reg[20]_10 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_655_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_656 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[20]_10 [14]),
        .I2(\SOAMBuffer_reg[20]_10 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_656_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_657 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[20]_10 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[20]_10 [21]),
        .O(\CurrentSprite[31]_i_657_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_658 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[20]_10 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[20]_10 [19]),
        .O(\CurrentSprite[31]_i_658_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_659 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[20]_10 [16]),
        .I2(\SOAMBuffer_reg[20]_10 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_659_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_66 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_660 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[20]_10 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[20]_10 [15]),
        .O(\CurrentSprite[31]_i_660_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_662 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[20]_10 [21]),
        .I2(\SOAMBuffer_reg[20]_10 [20]),
        .I3(\SOAMBuffer_reg[20]_10 [18]),
        .I4(\SOAMBuffer_reg[20]_10 [17]),
        .I5(\SOAMBuffer_reg[20]_10 [19]),
        .O(\CurrentSprite[31]_i_662_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_663 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[20]_10 [20]),
        .I2(\SOAMBuffer_reg[20]_10 [19]),
        .I3(\SOAMBuffer_reg[20]_10 [17]),
        .I4(\SOAMBuffer_reg[20]_10 [18]),
        .O(\CurrentSprite[31]_i_663_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_664 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[20]_10 [19]),
        .I2(\SOAMBuffer_reg[20]_10 [18]),
        .I3(\SOAMBuffer_reg[20]_10 [17]),
        .O(\CurrentSprite[31]_i_664_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_665 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[20]_10 [18]),
        .I2(\SOAMBuffer_reg[20]_10 [17]),
        .O(\CurrentSprite[31]_i_665_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_666 
       (.I0(\SOAMBuffer_reg[20]_10 [20]),
        .I1(\SOAMBuffer_reg[20]_10 [18]),
        .I2(\SOAMBuffer_reg[20]_10 [17]),
        .I3(\SOAMBuffer_reg[20]_10 [19]),
        .O(\CurrentSprite[31]_i_666_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_667 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[23]_7 [20]),
        .I2(\SOAMBuffer_reg[23]_7 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_667_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_668 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[23]_7 [18]),
        .I2(\SOAMBuffer_reg[23]_7 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_668_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_669 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[23]_7 [16]),
        .I2(\SOAMBuffer_reg[23]_7 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_669_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_67 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[13]_17 [22]),
        .I2(\SOAMBuffer_reg[13]_17 [21]),
        .I3(\CurrentSprite[31]_i_182_n_0 ),
        .O(\CurrentSprite[31]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_670 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[23]_7 [14]),
        .I2(\SOAMBuffer_reg[23]_7 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_670_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_671 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[23]_7 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[23]_7 [21]),
        .O(\CurrentSprite[31]_i_671_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_672 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[23]_7 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[23]_7 [19]),
        .O(\CurrentSprite[31]_i_672_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_673 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[23]_7 [16]),
        .I2(\SOAMBuffer_reg[23]_7 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_673_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_674 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[23]_7 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[23]_7 [15]),
        .O(\CurrentSprite[31]_i_674_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_676 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[23]_7 [21]),
        .I2(\SOAMBuffer_reg[23]_7 [20]),
        .I3(\SOAMBuffer_reg[23]_7 [18]),
        .I4(\SOAMBuffer_reg[23]_7 [17]),
        .I5(\SOAMBuffer_reg[23]_7 [19]),
        .O(\CurrentSprite[31]_i_676_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_677 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[23]_7 [20]),
        .I2(\SOAMBuffer_reg[23]_7 [19]),
        .I3(\SOAMBuffer_reg[23]_7 [17]),
        .I4(\SOAMBuffer_reg[23]_7 [18]),
        .O(\CurrentSprite[31]_i_677_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_678 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[23]_7 [19]),
        .I2(\SOAMBuffer_reg[23]_7 [18]),
        .I3(\SOAMBuffer_reg[23]_7 [17]),
        .O(\CurrentSprite[31]_i_678_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_679 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[23]_7 [18]),
        .I2(\SOAMBuffer_reg[23]_7 [17]),
        .O(\CurrentSprite[31]_i_679_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_680 
       (.I0(\SOAMBuffer_reg[23]_7 [20]),
        .I1(\SOAMBuffer_reg[23]_7 [18]),
        .I2(\SOAMBuffer_reg[23]_7 [17]),
        .I3(\SOAMBuffer_reg[23]_7 [19]),
        .O(\CurrentSprite[31]_i_680_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_681 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[22]_8 [17]),
        .O(\CurrentSprite[31]_i_681_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_682 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[22]_8 [16]),
        .O(\CurrentSprite[31]_i_682_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_683 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[22]_8 [15]),
        .O(\CurrentSprite[31]_i_683_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_684 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[22]_8 [14]),
        .O(\CurrentSprite[31]_i_684_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_685 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[19]_11 [20]),
        .I2(\SOAMBuffer_reg[19]_11 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_685_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_686 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[19]_11 [18]),
        .I2(\SOAMBuffer_reg[19]_11 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_686_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_687 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[19]_11 [16]),
        .I2(\SOAMBuffer_reg[19]_11 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_687_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_688 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[19]_11 [14]),
        .I2(\SOAMBuffer_reg[19]_11 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_688_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_689 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[19]_11 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[19]_11 [21]),
        .O(\CurrentSprite[31]_i_689_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_69 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[13]_17 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_690 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[19]_11 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[19]_11 [19]),
        .O(\CurrentSprite[31]_i_690_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_691 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[19]_11 [16]),
        .I2(\SOAMBuffer_reg[19]_11 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_691_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_692 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[19]_11 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[19]_11 [15]),
        .O(\CurrentSprite[31]_i_692_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_694 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[19]_11 [21]),
        .I2(\SOAMBuffer_reg[19]_11 [20]),
        .I3(\SOAMBuffer_reg[19]_11 [18]),
        .I4(\SOAMBuffer_reg[19]_11 [17]),
        .I5(\SOAMBuffer_reg[19]_11 [19]),
        .O(\CurrentSprite[31]_i_694_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_695 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[19]_11 [20]),
        .I2(\SOAMBuffer_reg[19]_11 [19]),
        .I3(\SOAMBuffer_reg[19]_11 [17]),
        .I4(\SOAMBuffer_reg[19]_11 [18]),
        .O(\CurrentSprite[31]_i_695_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_696 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[19]_11 [19]),
        .I2(\SOAMBuffer_reg[19]_11 [18]),
        .I3(\SOAMBuffer_reg[19]_11 [17]),
        .O(\CurrentSprite[31]_i_696_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_697 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[19]_11 [18]),
        .I2(\SOAMBuffer_reg[19]_11 [17]),
        .O(\CurrentSprite[31]_i_697_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_698 
       (.I0(\SOAMBuffer_reg[19]_11 [20]),
        .I1(\SOAMBuffer_reg[19]_11 [18]),
        .I2(\SOAMBuffer_reg[19]_11 [17]),
        .I3(\SOAMBuffer_reg[19]_11 [19]),
        .O(\CurrentSprite[31]_i_698_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_699 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[16]_14 [20]),
        .I2(\SOAMBuffer_reg[16]_14 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_699_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEFE)) 
    \CurrentSprite[31]_i_7 
       (.I0(\CurrentSprite[31]_i_38_n_0 ),
        .I1(\CurrentSprite[31]_i_39_n_0 ),
        .I2(\CurrentSprite[31]_i_40_n_0 ),
        .I3(\CurrentSprite_reg[31]_i_41_n_2 ),
        .I4(CurrentSprite228_in),
        .I5(\CurrentSprite[31]_i_43_n_0 ),
        .O(\CurrentSprite[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_70 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[13]_17 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_700 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[16]_14 [18]),
        .I2(\SOAMBuffer_reg[16]_14 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_700_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_701 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[16]_14 [16]),
        .I2(\SOAMBuffer_reg[16]_14 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_701_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_702 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[16]_14 [14]),
        .I2(\SOAMBuffer_reg[16]_14 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_702_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_703 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[16]_14 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[16]_14 [21]),
        .O(\CurrentSprite[31]_i_703_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_704 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[16]_14 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[16]_14 [19]),
        .O(\CurrentSprite[31]_i_704_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_705 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[16]_14 [16]),
        .I2(\SOAMBuffer_reg[16]_14 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_705_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_706 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[16]_14 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[16]_14 [15]),
        .O(\CurrentSprite[31]_i_706_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_708 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[16]_14 [21]),
        .I2(\SOAMBuffer_reg[16]_14 [20]),
        .I3(\SOAMBuffer_reg[16]_14 [18]),
        .I4(\SOAMBuffer_reg[16]_14 [17]),
        .I5(\SOAMBuffer_reg[16]_14 [19]),
        .O(\CurrentSprite[31]_i_708_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_709 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[16]_14 [20]),
        .I2(\SOAMBuffer_reg[16]_14 [19]),
        .I3(\SOAMBuffer_reg[16]_14 [17]),
        .I4(\SOAMBuffer_reg[16]_14 [18]),
        .O(\CurrentSprite[31]_i_709_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_710 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[16]_14 [19]),
        .I2(\SOAMBuffer_reg[16]_14 [18]),
        .I3(\SOAMBuffer_reg[16]_14 [17]),
        .O(\CurrentSprite[31]_i_710_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_711 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[16]_14 [18]),
        .I2(\SOAMBuffer_reg[16]_14 [17]),
        .O(\CurrentSprite[31]_i_711_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_712 
       (.I0(\SOAMBuffer_reg[16]_14 [20]),
        .I1(\SOAMBuffer_reg[16]_14 [18]),
        .I2(\SOAMBuffer_reg[16]_14 [17]),
        .I3(\SOAMBuffer_reg[16]_14 [19]),
        .O(\CurrentSprite[31]_i_712_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_713 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[18]_12 [20]),
        .I2(\SOAMBuffer_reg[18]_12 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_713_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_714 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[18]_12 [18]),
        .I2(\SOAMBuffer_reg[18]_12 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_714_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_715 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[18]_12 [16]),
        .I2(\SOAMBuffer_reg[18]_12 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_715_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_716 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[18]_12 [14]),
        .I2(\SOAMBuffer_reg[18]_12 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_716_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_717 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[18]_12 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[18]_12 [21]),
        .O(\CurrentSprite[31]_i_717_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_718 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[18]_12 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[18]_12 [19]),
        .O(\CurrentSprite[31]_i_718_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_719 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[18]_12 [16]),
        .I2(\SOAMBuffer_reg[18]_12 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_719_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_720 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[18]_12 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[18]_12 [15]),
        .O(\CurrentSprite[31]_i_720_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_722 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[18]_12 [21]),
        .I2(\SOAMBuffer_reg[18]_12 [20]),
        .I3(\SOAMBuffer_reg[18]_12 [18]),
        .I4(\SOAMBuffer_reg[18]_12 [17]),
        .I5(\SOAMBuffer_reg[18]_12 [19]),
        .O(\CurrentSprite[31]_i_722_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_723 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[18]_12 [20]),
        .I2(\SOAMBuffer_reg[18]_12 [19]),
        .I3(\SOAMBuffer_reg[18]_12 [17]),
        .I4(\SOAMBuffer_reg[18]_12 [18]),
        .O(\CurrentSprite[31]_i_723_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_724 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[18]_12 [19]),
        .I2(\SOAMBuffer_reg[18]_12 [18]),
        .I3(\SOAMBuffer_reg[18]_12 [17]),
        .O(\CurrentSprite[31]_i_724_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_725 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[18]_12 [18]),
        .I2(\SOAMBuffer_reg[18]_12 [17]),
        .O(\CurrentSprite[31]_i_725_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_726 
       (.I0(\SOAMBuffer_reg[18]_12 [20]),
        .I1(\SOAMBuffer_reg[18]_12 [18]),
        .I2(\SOAMBuffer_reg[18]_12 [17]),
        .I3(\SOAMBuffer_reg[18]_12 [19]),
        .O(\CurrentSprite[31]_i_726_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_728 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[17]_13 [21]),
        .I2(\SOAMBuffer_reg[17]_13 [20]),
        .I3(\SOAMBuffer_reg[17]_13 [18]),
        .I4(\SOAMBuffer_reg[17]_13 [17]),
        .I5(\SOAMBuffer_reg[17]_13 [19]),
        .O(\CurrentSprite[31]_i_728_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_729 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[17]_13 [20]),
        .I2(\SOAMBuffer_reg[17]_13 [19]),
        .I3(\SOAMBuffer_reg[17]_13 [17]),
        .I4(\SOAMBuffer_reg[17]_13 [18]),
        .O(\CurrentSprite[31]_i_729_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_730 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[17]_13 [19]),
        .I2(\SOAMBuffer_reg[17]_13 [18]),
        .I3(\SOAMBuffer_reg[17]_13 [17]),
        .O(\CurrentSprite[31]_i_730_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_731 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[17]_13 [18]),
        .I2(\SOAMBuffer_reg[17]_13 [17]),
        .O(\CurrentSprite[31]_i_731_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_732 
       (.I0(\SOAMBuffer_reg[17]_13 [20]),
        .I1(\SOAMBuffer_reg[17]_13 [18]),
        .I2(\SOAMBuffer_reg[17]_13 [17]),
        .I3(\SOAMBuffer_reg[17]_13 [19]),
        .O(\CurrentSprite[31]_i_732_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_733 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[17]_13 [20]),
        .I2(\SOAMBuffer_reg[17]_13 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_733_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_734 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[17]_13 [18]),
        .I2(\SOAMBuffer_reg[17]_13 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_734_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_735 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[17]_13 [16]),
        .I2(\SOAMBuffer_reg[17]_13 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_735_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_736 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[17]_13 [14]),
        .I2(\SOAMBuffer_reg[17]_13 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_736_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_737 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[17]_13 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[17]_13 [21]),
        .O(\CurrentSprite[31]_i_737_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_738 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[17]_13 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[17]_13 [19]),
        .O(\CurrentSprite[31]_i_738_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_739 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[17]_13 [16]),
        .I2(\SOAMBuffer_reg[17]_13 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_739_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_740 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[17]_13 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[17]_13 [15]),
        .O(\CurrentSprite[31]_i_740_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_742 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[26]_4 [21]),
        .I2(\SOAMBuffer_reg[26]_4 [20]),
        .I3(\SOAMBuffer_reg[26]_4 [18]),
        .I4(\SOAMBuffer_reg[26]_4 [17]),
        .I5(\SOAMBuffer_reg[26]_4 [19]),
        .O(\CurrentSprite[31]_i_742_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_743 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[26]_4 [20]),
        .I2(\SOAMBuffer_reg[26]_4 [19]),
        .I3(\SOAMBuffer_reg[26]_4 [17]),
        .I4(\SOAMBuffer_reg[26]_4 [18]),
        .O(\CurrentSprite[31]_i_743_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_744 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[26]_4 [19]),
        .I2(\SOAMBuffer_reg[26]_4 [18]),
        .I3(\SOAMBuffer_reg[26]_4 [17]),
        .O(\CurrentSprite[31]_i_744_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_745 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[26]_4 [18]),
        .I2(\SOAMBuffer_reg[26]_4 [17]),
        .O(\CurrentSprite[31]_i_745_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_746 
       (.I0(\SOAMBuffer_reg[26]_4 [20]),
        .I1(\SOAMBuffer_reg[26]_4 [18]),
        .I2(\SOAMBuffer_reg[26]_4 [17]),
        .I3(\SOAMBuffer_reg[26]_4 [19]),
        .O(\CurrentSprite[31]_i_746_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_747 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[26]_4 [20]),
        .I2(\SOAMBuffer_reg[26]_4 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_747_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_748 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[26]_4 [18]),
        .I2(\SOAMBuffer_reg[26]_4 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_748_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_749 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[26]_4 [16]),
        .I2(\SOAMBuffer_reg[26]_4 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_749_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_750 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[26]_4 [14]),
        .I2(\SOAMBuffer_reg[26]_4 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_750_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_751 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[26]_4 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[26]_4 [21]),
        .O(\CurrentSprite[31]_i_751_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_752 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[26]_4 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[26]_4 [19]),
        .O(\CurrentSprite[31]_i_752_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_753 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[26]_4 [16]),
        .I2(\SOAMBuffer_reg[26]_4 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_753_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_754 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[26]_4 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[26]_4 [15]),
        .O(\CurrentSprite[31]_i_754_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_755 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[24]_6 [20]),
        .I2(\SOAMBuffer_reg[24]_6 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_755_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_756 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[24]_6 [18]),
        .I2(\SOAMBuffer_reg[24]_6 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_756_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_757 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[24]_6 [16]),
        .I2(\SOAMBuffer_reg[24]_6 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_757_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_758 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[24]_6 [14]),
        .I2(\SOAMBuffer_reg[24]_6 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_758_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_759 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[24]_6 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[24]_6 [21]),
        .O(\CurrentSprite[31]_i_759_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_760 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[24]_6 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[24]_6 [19]),
        .O(\CurrentSprite[31]_i_760_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_761 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[24]_6 [16]),
        .I2(\SOAMBuffer_reg[24]_6 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_761_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_762 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[24]_6 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[24]_6 [15]),
        .O(\CurrentSprite[31]_i_762_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_764 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[24]_6 [21]),
        .I2(\SOAMBuffer_reg[24]_6 [20]),
        .I3(\SOAMBuffer_reg[24]_6 [18]),
        .I4(\SOAMBuffer_reg[24]_6 [17]),
        .I5(\SOAMBuffer_reg[24]_6 [19]),
        .O(\CurrentSprite[31]_i_764_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_765 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[24]_6 [20]),
        .I2(\SOAMBuffer_reg[24]_6 [19]),
        .I3(\SOAMBuffer_reg[24]_6 [17]),
        .I4(\SOAMBuffer_reg[24]_6 [18]),
        .O(\CurrentSprite[31]_i_765_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_766 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[24]_6 [19]),
        .I2(\SOAMBuffer_reg[24]_6 [18]),
        .I3(\SOAMBuffer_reg[24]_6 [17]),
        .O(\CurrentSprite[31]_i_766_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_767 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[24]_6 [18]),
        .I2(\SOAMBuffer_reg[24]_6 [17]),
        .O(\CurrentSprite[31]_i_767_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_768 
       (.I0(\SOAMBuffer_reg[24]_6 [20]),
        .I1(\SOAMBuffer_reg[24]_6 [18]),
        .I2(\SOAMBuffer_reg[24]_6 [17]),
        .I3(\SOAMBuffer_reg[24]_6 [19]),
        .O(\CurrentSprite[31]_i_768_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_770 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[8]_22 [21]),
        .I2(\SOAMBuffer_reg[8]_22 [20]),
        .I3(\SOAMBuffer_reg[8]_22 [18]),
        .I4(\SOAMBuffer_reg[8]_22 [17]),
        .I5(\SOAMBuffer_reg[8]_22 [19]),
        .O(\CurrentSprite[31]_i_770_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_771 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[8]_22 [20]),
        .I2(\SOAMBuffer_reg[8]_22 [19]),
        .I3(\SOAMBuffer_reg[8]_22 [17]),
        .I4(\SOAMBuffer_reg[8]_22 [18]),
        .O(\CurrentSprite[31]_i_771_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_772 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[8]_22 [19]),
        .I2(\SOAMBuffer_reg[8]_22 [18]),
        .I3(\SOAMBuffer_reg[8]_22 [17]),
        .O(\CurrentSprite[31]_i_772_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_773 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[8]_22 [18]),
        .I2(\SOAMBuffer_reg[8]_22 [17]),
        .O(\CurrentSprite[31]_i_773_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_774 
       (.I0(\SOAMBuffer_reg[8]_22 [20]),
        .I1(\SOAMBuffer_reg[8]_22 [18]),
        .I2(\SOAMBuffer_reg[8]_22 [17]),
        .I3(\SOAMBuffer_reg[8]_22 [19]),
        .O(\CurrentSprite[31]_i_774_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_775 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[8]_22 [20]),
        .I2(\SOAMBuffer_reg[8]_22 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_775_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_776 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[8]_22 [18]),
        .I2(\SOAMBuffer_reg[8]_22 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_776_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_777 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[8]_22 [16]),
        .I2(\SOAMBuffer_reg[8]_22 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_777_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_778 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[8]_22 [14]),
        .I2(\SOAMBuffer_reg[8]_22 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_778_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_779 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[8]_22 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[8]_22 [21]),
        .O(\CurrentSprite[31]_i_779_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_780 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[8]_22 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[8]_22 [19]),
        .O(\CurrentSprite[31]_i_780_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_781 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[8]_22 [16]),
        .I2(\SOAMBuffer_reg[8]_22 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_781_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_782 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[8]_22 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[8]_22 [15]),
        .O(\CurrentSprite[31]_i_782_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_783 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[11]_19 [20]),
        .I2(\SOAMBuffer_reg[11]_19 [21]),
        .I3(\xCounter_reg_n_0_[7] ),
        .O(\CurrentSprite[31]_i_783_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_784 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[11]_19 [18]),
        .I2(\SOAMBuffer_reg[11]_19 [19]),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(\CurrentSprite[31]_i_784_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_785 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[11]_19 [16]),
        .I2(\SOAMBuffer_reg[11]_19 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_785_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CurrentSprite[31]_i_786 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[11]_19 [14]),
        .I2(\SOAMBuffer_reg[11]_19 [15]),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(\CurrentSprite[31]_i_786_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_787 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[11]_19 [20]),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\SOAMBuffer_reg[11]_19 [21]),
        .O(\CurrentSprite[31]_i_787_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_788 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[11]_19 [18]),
        .I2(\xCounter_reg_n_0_[5] ),
        .I3(\SOAMBuffer_reg[11]_19 [19]),
        .O(\CurrentSprite[31]_i_788_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_789 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[11]_19 [16]),
        .I2(\SOAMBuffer_reg[11]_19 [17]),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(\CurrentSprite[31]_i_789_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \CurrentSprite[31]_i_79 
       (.I0(CurrentSprite270_in),
        .I1(\CurrentSprite_reg[31]_i_162_n_2 ),
        .O(\CurrentSprite[31]_i_79_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CurrentSprite[31]_i_790 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[11]_19 [14]),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\SOAMBuffer_reg[11]_19 [15]),
        .O(\CurrentSprite[31]_i_790_n_0 ));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    \CurrentSprite[31]_i_792 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\SOAMBuffer_reg[11]_19 [21]),
        .I2(\SOAMBuffer_reg[11]_19 [20]),
        .I3(\SOAMBuffer_reg[11]_19 [18]),
        .I4(\SOAMBuffer_reg[11]_19 [17]),
        .I5(\SOAMBuffer_reg[11]_19 [19]),
        .O(\CurrentSprite[31]_i_792_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \CurrentSprite[31]_i_793 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\SOAMBuffer_reg[11]_19 [20]),
        .I2(\SOAMBuffer_reg[11]_19 [19]),
        .I3(\SOAMBuffer_reg[11]_19 [17]),
        .I4(\SOAMBuffer_reg[11]_19 [18]),
        .O(\CurrentSprite[31]_i_793_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_794 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\SOAMBuffer_reg[11]_19 [19]),
        .I2(\SOAMBuffer_reg[11]_19 [18]),
        .I3(\SOAMBuffer_reg[11]_19 [17]),
        .O(\CurrentSprite[31]_i_794_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \CurrentSprite[31]_i_795 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\SOAMBuffer_reg[11]_19 [18]),
        .I2(\SOAMBuffer_reg[11]_19 [17]),
        .O(\CurrentSprite[31]_i_795_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \CurrentSprite[31]_i_796 
       (.I0(\SOAMBuffer_reg[11]_19 [20]),
        .I1(\SOAMBuffer_reg[11]_19 [18]),
        .I2(\SOAMBuffer_reg[11]_19 [17]),
        .I3(\SOAMBuffer_reg[11]_19 [19]),
        .O(\CurrentSprite[31]_i_796_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_797 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[3]_27 [17]),
        .O(\CurrentSprite[31]_i_797_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_798 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[3]_27 [16]),
        .O(\CurrentSprite[31]_i_798_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_799 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[3]_27 [15]),
        .O(\CurrentSprite[31]_i_799_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[31]_i_8 
       (.I0(\CurrentSprite[31]_i_44_n_0 ),
        .I1(\CurrentSprite[31]_i_45_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[31]_i_48_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_800 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[3]_27 [14]),
        .O(\CurrentSprite[31]_i_800_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_801 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[12]_18 [17]),
        .O(\CurrentSprite[31]_i_801_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_802 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[12]_18 [16]),
        .O(\CurrentSprite[31]_i_802_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_803 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[12]_18 [15]),
        .O(\CurrentSprite[31]_i_803_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_804 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[12]_18 [14]),
        .O(\CurrentSprite[31]_i_804_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_805 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[15]_15 [17]),
        .O(\CurrentSprite[31]_i_805_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_806 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[15]_15 [16]),
        .O(\CurrentSprite[31]_i_806_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_807 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[15]_15 [15]),
        .O(\CurrentSprite[31]_i_807_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_808 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[15]_15 [14]),
        .O(\CurrentSprite[31]_i_808_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_809 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[14]_16 [17]),
        .O(\CurrentSprite[31]_i_809_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_810 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[14]_16 [16]),
        .O(\CurrentSprite[31]_i_810_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_811 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[14]_16 [15]),
        .O(\CurrentSprite[31]_i_811_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_812 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[14]_16 [14]),
        .O(\CurrentSprite[31]_i_812_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_813 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[10]_20 [17]),
        .O(\CurrentSprite[31]_i_813_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_814 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[10]_20 [16]),
        .O(\CurrentSprite[31]_i_814_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_815 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[10]_20 [15]),
        .O(\CurrentSprite[31]_i_815_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_816 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[10]_20 [14]),
        .O(\CurrentSprite[31]_i_816_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_817 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[9]_21 [17]),
        .O(\CurrentSprite[31]_i_817_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_818 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[9]_21 [16]),
        .O(\CurrentSprite[31]_i_818_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_819 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[9]_21 [15]),
        .O(\CurrentSprite[31]_i_819_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_820 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[9]_21 [14]),
        .O(\CurrentSprite[31]_i_820_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_821 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[2]_28 [17]),
        .O(\CurrentSprite[31]_i_821_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_822 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[2]_28 [16]),
        .O(\CurrentSprite[31]_i_822_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_823 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[2]_28 [15]),
        .O(\CurrentSprite[31]_i_823_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_824 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[2]_28 [14]),
        .O(\CurrentSprite[31]_i_824_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_825 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[6]_24 [17]),
        .O(\CurrentSprite[31]_i_825_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_826 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[6]_24 [16]),
        .O(\CurrentSprite[31]_i_826_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_827 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[6]_24 [15]),
        .O(\CurrentSprite[31]_i_827_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_828 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[6]_24 [14]),
        .O(\CurrentSprite[31]_i_828_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_829 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[5]_25 [17]),
        .O(\CurrentSprite[31]_i_829_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_830 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[5]_25 [16]),
        .O(\CurrentSprite[31]_i_830_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_831 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[5]_25 [15]),
        .O(\CurrentSprite[31]_i_831_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_832 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[5]_25 [14]),
        .O(\CurrentSprite[31]_i_832_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_833 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[29]_1 [17]),
        .O(\CurrentSprite[31]_i_833_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_834 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[29]_1 [16]),
        .O(\CurrentSprite[31]_i_834_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_835 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[29]_1 [15]),
        .O(\CurrentSprite[31]_i_835_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_836 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[29]_1 [14]),
        .O(\CurrentSprite[31]_i_836_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_837 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[30]_0 [17]),
        .O(\CurrentSprite[31]_i_837_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_838 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[30]_0 [16]),
        .O(\CurrentSprite[31]_i_838_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_839 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[30]_0 [15]),
        .O(\CurrentSprite[31]_i_839_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_840 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[30]_0 [14]),
        .O(\CurrentSprite[31]_i_840_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_841 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[0]_30 [17]),
        .O(\CurrentSprite[31]_i_841_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_842 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[0]_30 [16]),
        .O(\CurrentSprite[31]_i_842_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_843 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[0]_30 [15]),
        .O(\CurrentSprite[31]_i_843_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_844 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[0]_30 [14]),
        .O(\CurrentSprite[31]_i_844_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_845 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[27]_3 [17]),
        .O(\CurrentSprite[31]_i_845_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_846 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[27]_3 [16]),
        .O(\CurrentSprite[31]_i_846_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_847 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[27]_3 [15]),
        .O(\CurrentSprite[31]_i_847_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_848 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[27]_3 [14]),
        .O(\CurrentSprite[31]_i_848_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_849 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[25]_5 [17]),
        .O(\CurrentSprite[31]_i_849_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_85 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(L[22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_850 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[25]_5 [16]),
        .O(\CurrentSprite[31]_i_850_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_851 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[25]_5 [15]),
        .O(\CurrentSprite[31]_i_851_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_852 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[25]_5 [14]),
        .O(\CurrentSprite[31]_i_852_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_853 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[21]_9 [17]),
        .O(\CurrentSprite[31]_i_853_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_854 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[21]_9 [16]),
        .O(\CurrentSprite[31]_i_854_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_855 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[21]_9 [15]),
        .O(\CurrentSprite[31]_i_855_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_856 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[21]_9 [14]),
        .O(\CurrentSprite[31]_i_856_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_857 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[20]_10 [17]),
        .O(\CurrentSprite[31]_i_857_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_858 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[20]_10 [16]),
        .O(\CurrentSprite[31]_i_858_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_859 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[20]_10 [15]),
        .O(\CurrentSprite[31]_i_859_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_86 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(L[22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_860 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[20]_10 [14]),
        .O(\CurrentSprite[31]_i_860_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_861 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[23]_7 [17]),
        .O(\CurrentSprite[31]_i_861_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_862 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[23]_7 [16]),
        .O(\CurrentSprite[31]_i_862_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_863 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[23]_7 [15]),
        .O(\CurrentSprite[31]_i_863_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_864 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[23]_7 [14]),
        .O(\CurrentSprite[31]_i_864_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_865 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[19]_11 [17]),
        .O(\CurrentSprite[31]_i_865_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_866 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[19]_11 [16]),
        .O(\CurrentSprite[31]_i_866_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_867 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[19]_11 [15]),
        .O(\CurrentSprite[31]_i_867_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_868 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[19]_11 [14]),
        .O(\CurrentSprite[31]_i_868_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_869 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[16]_14 [17]),
        .O(\CurrentSprite[31]_i_869_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_870 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[16]_14 [16]),
        .O(\CurrentSprite[31]_i_870_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_871 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[16]_14 [15]),
        .O(\CurrentSprite[31]_i_871_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_872 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[16]_14 [14]),
        .O(\CurrentSprite[31]_i_872_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_873 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[18]_12 [17]),
        .O(\CurrentSprite[31]_i_873_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_874 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[18]_12 [16]),
        .O(\CurrentSprite[31]_i_874_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_875 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[18]_12 [15]),
        .O(\CurrentSprite[31]_i_875_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_876 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[18]_12 [14]),
        .O(\CurrentSprite[31]_i_876_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_877 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[17]_13 [17]),
        .O(\CurrentSprite[31]_i_877_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_878 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[17]_13 [16]),
        .O(\CurrentSprite[31]_i_878_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_879 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[17]_13 [15]),
        .O(\CurrentSprite[31]_i_879_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_88 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_880 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[17]_13 [14]),
        .O(\CurrentSprite[31]_i_880_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_881 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[26]_4 [17]),
        .O(\CurrentSprite[31]_i_881_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_882 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[26]_4 [16]),
        .O(\CurrentSprite[31]_i_882_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_883 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[26]_4 [15]),
        .O(\CurrentSprite[31]_i_883_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_884 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[26]_4 [14]),
        .O(\CurrentSprite[31]_i_884_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_885 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[24]_6 [17]),
        .O(\CurrentSprite[31]_i_885_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_886 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[24]_6 [16]),
        .O(\CurrentSprite[31]_i_886_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_887 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[24]_6 [15]),
        .O(\CurrentSprite[31]_i_887_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_888 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[24]_6 [14]),
        .O(\CurrentSprite[31]_i_888_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_889 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[8]_22 [17]),
        .O(\CurrentSprite[31]_i_889_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_89 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(L[22]),
        .I2(L[21]),
        .I3(\CurrentSprite[31]_i_240_n_0 ),
        .O(\CurrentSprite[31]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_890 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[8]_22 [16]),
        .O(\CurrentSprite[31]_i_890_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_891 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[8]_22 [15]),
        .O(\CurrentSprite[31]_i_891_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_892 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[8]_22 [14]),
        .O(\CurrentSprite[31]_i_892_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrentSprite[31]_i_893 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\SOAMBuffer_reg[11]_19 [17]),
        .O(\CurrentSprite[31]_i_893_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_894 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\SOAMBuffer_reg[11]_19 [16]),
        .O(\CurrentSprite[31]_i_894_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_895 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\SOAMBuffer_reg[11]_19 [15]),
        .O(\CurrentSprite[31]_i_895_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \CurrentSprite[31]_i_896 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\SOAMBuffer_reg[11]_19 [14]),
        .O(\CurrentSprite[31]_i_896_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[31]_i_9 
       (.I0(\CurrentSprite[31]_i_50_n_0 ),
        .I1(\CurrentSprite[31]_i_51_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[31]_i_54_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_91 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[1]_29 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_91_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \CurrentSprite[31]_i_92 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[1]_29 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_92_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrentSprite[31]_i_94 
       (.I0(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \CurrentSprite[31]_i_95 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[1]_29 [22]),
        .I2(\SOAMBuffer_reg[1]_29 [21]),
        .I3(\CurrentSprite[31]_i_254_n_0 ),
        .O(\CurrentSprite[31]_i_95_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \CurrentSprite[31]_i_99 
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\SOAMBuffer_reg[7]_23 [22]),
        .I2(\xCounter_reg_n_0_[9] ),
        .O(\CurrentSprite[31]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[3]_i_1 
       (.I0(\CurrentSprite[3]_i_2_n_0 ),
        .I1(\CurrentSprite[3]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[3]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[3]_i_5_n_0 ),
        .O(\CurrentSprite[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[3]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [3]),
        .I3(\SOAMBuffer_reg_n_0_[31][3] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [3]),
        .O(\CurrentSprite[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [3]),
        .I1(\SOAMBuffer_reg[28]_2 [3]),
        .I2(\SOAMBuffer_reg[27]_3 [3]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [3]),
        .I1(\SOAMBuffer_reg[10]_20 [3]),
        .I2(\SOAMBuffer_reg[9]_21 [3]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [3]),
        .I1(\SOAMBuffer_reg[13]_17 [3]),
        .I2(\SOAMBuffer_reg[12]_18 [3]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [3]),
        .I1(\SOAMBuffer_reg[7]_23 [3]),
        .I2(\SOAMBuffer_reg[6]_24 [3]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [3]),
        .I1(\SOAMBuffer_reg[4]_26 [3]),
        .I2(\SOAMBuffer_reg[3]_27 [3]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[3]_i_2 
       (.I0(\CurrentSprite[3]_i_6_n_0 ),
        .I1(\CurrentSprite[3]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[3]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[3]_i_3 
       (.I0(\CurrentSprite[3]_i_9_n_0 ),
        .I1(\CurrentSprite[3]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[3]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[3]_i_4 
       (.I0(\CurrentSprite[3]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[3]_i_13_n_0 ),
        .I4(\CurrentSprite[3]_i_14_n_0 ),
        .O(\CurrentSprite[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[3]_i_5 
       (.I0(\CurrentSprite[3]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [3]),
        .I5(\SOAMBuffer_reg[0]_30 [3]),
        .O(\CurrentSprite[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [3]),
        .I1(\SOAMBuffer_reg[16]_14 [3]),
        .I2(\SOAMBuffer_reg[15]_15 [3]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [3]),
        .I1(\SOAMBuffer_reg[22]_8 [3]),
        .I2(\SOAMBuffer_reg[21]_9 [3]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [3]),
        .I1(\SOAMBuffer_reg[19]_11 [3]),
        .I2(\SOAMBuffer_reg[18]_12 [3]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[3]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [3]),
        .I1(\SOAMBuffer_reg[25]_5 [3]),
        .I2(\SOAMBuffer_reg[24]_6 [3]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[4]_i_1 
       (.I0(\CurrentSprite[4]_i_2_n_0 ),
        .I1(\CurrentSprite[4]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[4]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[4]_i_5_n_0 ),
        .O(\CurrentSprite[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[4]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [4]),
        .I3(\SOAMBuffer_reg_n_0_[31][4] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [4]),
        .O(\CurrentSprite[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [4]),
        .I1(\SOAMBuffer_reg[28]_2 [4]),
        .I2(\SOAMBuffer_reg[27]_3 [4]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [4]),
        .I1(\SOAMBuffer_reg[10]_20 [4]),
        .I2(\SOAMBuffer_reg[9]_21 [4]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [4]),
        .I1(\SOAMBuffer_reg[13]_17 [4]),
        .I2(\SOAMBuffer_reg[12]_18 [4]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [4]),
        .I1(\SOAMBuffer_reg[7]_23 [4]),
        .I2(\SOAMBuffer_reg[6]_24 [4]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [4]),
        .I1(\SOAMBuffer_reg[4]_26 [4]),
        .I2(\SOAMBuffer_reg[3]_27 [4]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[4]_i_2 
       (.I0(\CurrentSprite[4]_i_6_n_0 ),
        .I1(\CurrentSprite[4]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[4]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[4]_i_3 
       (.I0(\CurrentSprite[4]_i_9_n_0 ),
        .I1(\CurrentSprite[4]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[4]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[4]_i_4 
       (.I0(\CurrentSprite[4]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[4]_i_13_n_0 ),
        .I4(\CurrentSprite[4]_i_14_n_0 ),
        .O(\CurrentSprite[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[4]_i_5 
       (.I0(\CurrentSprite[4]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [4]),
        .I5(\SOAMBuffer_reg[0]_30 [4]),
        .O(\CurrentSprite[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [4]),
        .I1(\SOAMBuffer_reg[16]_14 [4]),
        .I2(\SOAMBuffer_reg[15]_15 [4]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [4]),
        .I1(\SOAMBuffer_reg[22]_8 [4]),
        .I2(\SOAMBuffer_reg[21]_9 [4]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [4]),
        .I1(\SOAMBuffer_reg[19]_11 [4]),
        .I2(\SOAMBuffer_reg[18]_12 [4]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[4]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [4]),
        .I1(\SOAMBuffer_reg[25]_5 [4]),
        .I2(\SOAMBuffer_reg[24]_6 [4]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[5]_i_1 
       (.I0(\CurrentSprite[5]_i_2_n_0 ),
        .I1(\CurrentSprite[5]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[5]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[5]_i_5_n_0 ),
        .O(\CurrentSprite[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[5]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [5]),
        .I3(\SOAMBuffer_reg_n_0_[31][5] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [5]),
        .O(\CurrentSprite[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [5]),
        .I1(\SOAMBuffer_reg[28]_2 [5]),
        .I2(\SOAMBuffer_reg[27]_3 [5]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [5]),
        .I1(\SOAMBuffer_reg[10]_20 [5]),
        .I2(\SOAMBuffer_reg[9]_21 [5]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [5]),
        .I1(\SOAMBuffer_reg[13]_17 [5]),
        .I2(\SOAMBuffer_reg[12]_18 [5]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [5]),
        .I1(\SOAMBuffer_reg[7]_23 [5]),
        .I2(\SOAMBuffer_reg[6]_24 [5]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [5]),
        .I1(\SOAMBuffer_reg[4]_26 [5]),
        .I2(\SOAMBuffer_reg[3]_27 [5]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[5]_i_2 
       (.I0(\CurrentSprite[5]_i_6_n_0 ),
        .I1(\CurrentSprite[5]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[5]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[5]_i_3 
       (.I0(\CurrentSprite[5]_i_9_n_0 ),
        .I1(\CurrentSprite[5]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[5]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[5]_i_4 
       (.I0(\CurrentSprite[5]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[5]_i_13_n_0 ),
        .I4(\CurrentSprite[5]_i_14_n_0 ),
        .O(\CurrentSprite[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[5]_i_5 
       (.I0(\CurrentSprite[5]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [5]),
        .I5(\SOAMBuffer_reg[0]_30 [5]),
        .O(\CurrentSprite[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [5]),
        .I1(\SOAMBuffer_reg[16]_14 [5]),
        .I2(\SOAMBuffer_reg[15]_15 [5]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [5]),
        .I1(\SOAMBuffer_reg[22]_8 [5]),
        .I2(\SOAMBuffer_reg[21]_9 [5]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [5]),
        .I1(\SOAMBuffer_reg[19]_11 [5]),
        .I2(\SOAMBuffer_reg[18]_12 [5]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[5]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [5]),
        .I1(\SOAMBuffer_reg[25]_5 [5]),
        .I2(\SOAMBuffer_reg[24]_6 [5]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[6]_i_1 
       (.I0(\CurrentSprite[6]_i_2_n_0 ),
        .I1(\CurrentSprite[6]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[6]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[6]_i_5_n_0 ),
        .O(\CurrentSprite[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[6]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [6]),
        .I3(\SOAMBuffer_reg_n_0_[31][6] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [6]),
        .O(\CurrentSprite[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [6]),
        .I1(\SOAMBuffer_reg[28]_2 [6]),
        .I2(\SOAMBuffer_reg[27]_3 [6]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [6]),
        .I1(\SOAMBuffer_reg[10]_20 [6]),
        .I2(\SOAMBuffer_reg[9]_21 [6]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [6]),
        .I1(\SOAMBuffer_reg[13]_17 [6]),
        .I2(\SOAMBuffer_reg[12]_18 [6]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [6]),
        .I1(\SOAMBuffer_reg[7]_23 [6]),
        .I2(\SOAMBuffer_reg[6]_24 [6]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [6]),
        .I1(\SOAMBuffer_reg[4]_26 [6]),
        .I2(\SOAMBuffer_reg[3]_27 [6]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[6]_i_2 
       (.I0(\CurrentSprite[6]_i_6_n_0 ),
        .I1(\CurrentSprite[6]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[6]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[6]_i_3 
       (.I0(\CurrentSprite[6]_i_9_n_0 ),
        .I1(\CurrentSprite[6]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[6]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[6]_i_4 
       (.I0(\CurrentSprite[6]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[6]_i_13_n_0 ),
        .I4(\CurrentSprite[6]_i_14_n_0 ),
        .O(\CurrentSprite[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[6]_i_5 
       (.I0(\CurrentSprite[6]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [6]),
        .I5(\SOAMBuffer_reg[0]_30 [6]),
        .O(\CurrentSprite[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [6]),
        .I1(\SOAMBuffer_reg[16]_14 [6]),
        .I2(\SOAMBuffer_reg[15]_15 [6]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [6]),
        .I1(\SOAMBuffer_reg[22]_8 [6]),
        .I2(\SOAMBuffer_reg[21]_9 [6]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [6]),
        .I1(\SOAMBuffer_reg[19]_11 [6]),
        .I2(\SOAMBuffer_reg[18]_12 [6]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[6]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [6]),
        .I1(\SOAMBuffer_reg[25]_5 [6]),
        .I2(\SOAMBuffer_reg[24]_6 [6]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[7]_i_1 
       (.I0(\CurrentSprite[7]_i_2_n_0 ),
        .I1(\CurrentSprite[7]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[7]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[7]_i_5_n_0 ),
        .O(\CurrentSprite[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[7]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [7]),
        .I3(\SOAMBuffer_reg_n_0_[31][7] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [7]),
        .O(\CurrentSprite[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [7]),
        .I1(\SOAMBuffer_reg[28]_2 [7]),
        .I2(\SOAMBuffer_reg[27]_3 [7]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [7]),
        .I1(\SOAMBuffer_reg[10]_20 [7]),
        .I2(\SOAMBuffer_reg[9]_21 [7]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [7]),
        .I1(\SOAMBuffer_reg[13]_17 [7]),
        .I2(\SOAMBuffer_reg[12]_18 [7]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [7]),
        .I1(\SOAMBuffer_reg[7]_23 [7]),
        .I2(\SOAMBuffer_reg[6]_24 [7]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [7]),
        .I1(\SOAMBuffer_reg[4]_26 [7]),
        .I2(\SOAMBuffer_reg[3]_27 [7]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[7]_i_2 
       (.I0(\CurrentSprite[7]_i_6_n_0 ),
        .I1(\CurrentSprite[7]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[7]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[7]_i_3 
       (.I0(\CurrentSprite[7]_i_9_n_0 ),
        .I1(\CurrentSprite[7]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[7]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[7]_i_4 
       (.I0(\CurrentSprite[7]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[7]_i_13_n_0 ),
        .I4(\CurrentSprite[7]_i_14_n_0 ),
        .O(\CurrentSprite[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[7]_i_5 
       (.I0(\CurrentSprite[7]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [7]),
        .I5(\SOAMBuffer_reg[0]_30 [7]),
        .O(\CurrentSprite[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [7]),
        .I1(\SOAMBuffer_reg[16]_14 [7]),
        .I2(\SOAMBuffer_reg[15]_15 [7]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [7]),
        .I1(\SOAMBuffer_reg[22]_8 [7]),
        .I2(\SOAMBuffer_reg[21]_9 [7]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [7]),
        .I1(\SOAMBuffer_reg[19]_11 [7]),
        .I2(\SOAMBuffer_reg[18]_12 [7]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[7]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [7]),
        .I1(\SOAMBuffer_reg[25]_5 [7]),
        .I2(\SOAMBuffer_reg[24]_6 [7]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[8]_i_1 
       (.I0(\CurrentSprite[8]_i_2_n_0 ),
        .I1(\CurrentSprite[8]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[8]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[8]_i_5_n_0 ),
        .O(\CurrentSprite[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[8]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [8]),
        .I3(\SOAMBuffer_reg_n_0_[31][8] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [8]),
        .O(\CurrentSprite[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [8]),
        .I1(\SOAMBuffer_reg[28]_2 [8]),
        .I2(\SOAMBuffer_reg[27]_3 [8]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [8]),
        .I1(\SOAMBuffer_reg[10]_20 [8]),
        .I2(\SOAMBuffer_reg[9]_21 [8]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [8]),
        .I1(\SOAMBuffer_reg[13]_17 [8]),
        .I2(\SOAMBuffer_reg[12]_18 [8]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [8]),
        .I1(\SOAMBuffer_reg[7]_23 [8]),
        .I2(\SOAMBuffer_reg[6]_24 [8]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [8]),
        .I1(\SOAMBuffer_reg[4]_26 [8]),
        .I2(\SOAMBuffer_reg[3]_27 [8]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[8]_i_2 
       (.I0(\CurrentSprite[8]_i_6_n_0 ),
        .I1(\CurrentSprite[8]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[8]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[8]_i_3 
       (.I0(\CurrentSprite[8]_i_9_n_0 ),
        .I1(\CurrentSprite[8]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[8]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[8]_i_4 
       (.I0(\CurrentSprite[8]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[8]_i_13_n_0 ),
        .I4(\CurrentSprite[8]_i_14_n_0 ),
        .O(\CurrentSprite[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[8]_i_5 
       (.I0(\CurrentSprite[8]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [8]),
        .I5(\SOAMBuffer_reg[0]_30 [8]),
        .O(\CurrentSprite[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [8]),
        .I1(\SOAMBuffer_reg[16]_14 [8]),
        .I2(\SOAMBuffer_reg[15]_15 [8]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [8]),
        .I1(\SOAMBuffer_reg[22]_8 [8]),
        .I2(\SOAMBuffer_reg[21]_9 [8]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [8]),
        .I1(\SOAMBuffer_reg[19]_11 [8]),
        .I2(\SOAMBuffer_reg[18]_12 [8]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[8]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [8]),
        .I1(\SOAMBuffer_reg[25]_5 [8]),
        .I2(\SOAMBuffer_reg[24]_6 [8]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0E0000FE0E)) 
    \CurrentSprite[9]_i_1 
       (.I0(\CurrentSprite[9]_i_2_n_0 ),
        .I1(\CurrentSprite[9]_i_3_n_0 ),
        .I2(\CurrentSprite[31]_i_10_n_0 ),
        .I3(\CurrentSprite[9]_i_4_n_0 ),
        .I4(\CurrentSprite[31]_i_12_n_0 ),
        .I5(\CurrentSprite[9]_i_5_n_0 ),
        .O(\CurrentSprite[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD200000FD20)) 
    \CurrentSprite[9]_i_10 
       (.I0(CurrentSprite24_in),
        .I1(\CurrentSprite_reg[31]_i_121_n_2 ),
        .I2(\SOAMBuffer_reg[30]_0 [9]),
        .I3(\SOAMBuffer_reg_n_0_[31][9] ),
        .I4(\CurrentSprite[31]_i_32_n_0 ),
        .I5(\SOAMBuffer_reg[29]_1 [9]),
        .O(\CurrentSprite[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_11 
       (.I0(\SOAMBuffer_reg[26]_4 [9]),
        .I1(\SOAMBuffer_reg[28]_2 [9]),
        .I2(\SOAMBuffer_reg[27]_3 [9]),
        .I3(\CurrentSprite[31]_i_124_n_0 ),
        .I4(\CurrentSprite[31]_i_160_n_0 ),
        .I5(\CurrentSprite[31]_i_161_n_0 ),
        .O(\CurrentSprite[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_12 
       (.I0(\SOAMBuffer_reg[8]_22 [9]),
        .I1(\SOAMBuffer_reg[10]_20 [9]),
        .I2(\SOAMBuffer_reg[9]_21 [9]),
        .I3(\CurrentSprite[31]_i_79_n_0 ),
        .I4(\CurrentSprite[31]_i_166_n_0 ),
        .I5(\CurrentSprite[31]_i_167_n_0 ),
        .O(\CurrentSprite[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_13 
       (.I0(\SOAMBuffer_reg[11]_19 [9]),
        .I1(\SOAMBuffer_reg[13]_17 [9]),
        .I2(\SOAMBuffer_reg[12]_18 [9]),
        .I3(\CurrentSprite[31]_i_56_n_0 ),
        .I4(\CurrentSprite[31]_i_168_n_0 ),
        .I5(\CurrentSprite[31]_i_16_n_0 ),
        .O(\CurrentSprite[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_14 
       (.I0(\SOAMBuffer_reg[5]_25 [9]),
        .I1(\SOAMBuffer_reg[7]_23 [9]),
        .I2(\SOAMBuffer_reg[6]_24 [9]),
        .I3(\CurrentSprite[31]_i_31_n_0 ),
        .I4(\CurrentSprite[31]_i_169_n_0 ),
        .I5(\CurrentSprite[31]_i_26_n_0 ),
        .O(\CurrentSprite[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_15 
       (.I0(\SOAMBuffer_reg[2]_28 [9]),
        .I1(\SOAMBuffer_reg[4]_26 [9]),
        .I2(\SOAMBuffer_reg[3]_27 [9]),
        .I3(\CurrentSprite[31]_i_20_n_0 ),
        .I4(\CurrentSprite[31]_i_176_n_0 ),
        .I5(\CurrentSprite[31]_i_21_n_0 ),
        .O(\CurrentSprite[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAAE00000000)) 
    \CurrentSprite[9]_i_2 
       (.I0(\CurrentSprite[9]_i_6_n_0 ),
        .I1(\CurrentSprite[9]_i_7_n_0 ),
        .I2(\CurrentSprite[31]_i_46_n_0 ),
        .I3(\CurrentSprite[31]_i_47_n_0 ),
        .I4(\CurrentSprite[9]_i_8_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFAAAE)) 
    \CurrentSprite[9]_i_3 
       (.I0(\CurrentSprite[9]_i_9_n_0 ),
        .I1(\CurrentSprite[9]_i_10_n_0 ),
        .I2(\CurrentSprite[31]_i_52_n_0 ),
        .I3(\CurrentSprite[31]_i_53_n_0 ),
        .I4(\CurrentSprite[9]_i_11_n_0 ),
        .I5(\CurrentSprite[31]_i_49_n_0 ),
        .O(\CurrentSprite[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2322)) 
    \CurrentSprite[9]_i_4 
       (.I0(\CurrentSprite[9]_i_12_n_0 ),
        .I1(\CurrentSprite[31]_i_57_n_0 ),
        .I2(\CurrentSprite[31]_i_55_n_0 ),
        .I3(\CurrentSprite[9]_i_13_n_0 ),
        .I4(\CurrentSprite[9]_i_14_n_0 ),
        .O(\CurrentSprite[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFF8A00BA008A)) 
    \CurrentSprite[9]_i_5 
       (.I0(\CurrentSprite[9]_i_15_n_0 ),
        .I1(\CurrentSprite_reg[31]_i_25_n_2 ),
        .I2(CurrentSprite291_in),
        .I3(\CurrentSprite[31]_i_36_n_0 ),
        .I4(\SOAMBuffer_reg[1]_29 [9]),
        .I5(\SOAMBuffer_reg[0]_30 [9]),
        .O(\CurrentSprite[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_6 
       (.I0(\SOAMBuffer_reg[14]_16 [9]),
        .I1(\SOAMBuffer_reg[16]_14 [9]),
        .I2(\SOAMBuffer_reg[15]_15 [9]),
        .I3(\CurrentSprite[31]_i_18_n_0 ),
        .I4(\CurrentSprite[31]_i_148_n_0 ),
        .I5(\CurrentSprite[31]_i_17_n_0 ),
        .O(\CurrentSprite[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_7 
       (.I0(\SOAMBuffer_reg[20]_10 [9]),
        .I1(\SOAMBuffer_reg[22]_8 [9]),
        .I2(\SOAMBuffer_reg[21]_9 [9]),
        .I3(\CurrentSprite[31]_i_39_n_0 ),
        .I4(\CurrentSprite[31]_i_149_n_0 ),
        .I5(\CurrentSprite[31]_i_38_n_0 ),
        .O(\CurrentSprite[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_8 
       (.I0(\SOAMBuffer_reg[17]_13 [9]),
        .I1(\SOAMBuffer_reg[19]_11 [9]),
        .I2(\SOAMBuffer_reg[18]_12 [9]),
        .I3(\CurrentSprite[31]_i_147_n_0 ),
        .I4(\CurrentSprite[31]_i_154_n_0 ),
        .I5(\CurrentSprite[31]_i_142_n_0 ),
        .O(\CurrentSprite[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAF0AAF0AACCAA00)) 
    \CurrentSprite[9]_i_9 
       (.I0(\SOAMBuffer_reg[23]_7 [9]),
        .I1(\SOAMBuffer_reg[25]_5 [9]),
        .I2(\SOAMBuffer_reg[24]_6 [9]),
        .I3(\CurrentSprite[31]_i_40_n_0 ),
        .I4(\CurrentSprite[31]_i_155_n_0 ),
        .I5(\CurrentSprite[31]_i_127_n_0 ),
        .O(\CurrentSprite[9]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[0] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[0]_i_1_n_0 ),
        .Q(SpriteOffset0[6]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[10] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[10]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[10] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[11] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[11]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[11] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[12] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[12]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[12] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[13] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[13]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[13] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[14] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[14]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[14] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[15] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[15]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[15] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[16] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[16]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[16] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[17] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[17]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[17] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[18] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[18]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[18] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[19] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[19]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[19] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[1] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[1]_i_1_n_0 ),
        .Q(SpriteOffset0[7]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[20] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[20]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[20] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[21] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[21]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[21] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[22] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[22]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[22] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[23] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[23]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[23] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[24] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[24]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[24] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[25] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[25]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[25] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[26] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[26]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[26] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[27] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[27]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[27] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[28] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[28]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[28] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[29] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[29]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[29] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[2] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[2]_i_1_n_0 ),
        .Q(SpriteOffset0[8]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[30] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[30]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[30] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[31] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[31]_i_2_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[31] ),
        .S(CurrentSprite));
  CARRY4 \CurrentSprite_reg[31]_i_101 
       (.CI(\CurrentSprite_reg[31]_i_269_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_101_n_0 ,\CurrentSprite_reg[31]_i_101_n_1 ,\CurrentSprite_reg[31]_i_101_n_2 ,\CurrentSprite_reg[31]_i_101_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_101_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_270_n_0 ,\CurrentSprite[31]_i_271_n_0 ,\CurrentSprite[31]_i_272_n_0 ,\CurrentSprite[31]_i_273_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_104 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_104_n_0 ,\CurrentSprite_reg[31]_i_104_n_1 ,\CurrentSprite_reg[31]_i_104_n_2 ,\CurrentSprite_reg[31]_i_104_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_275_n_0 ,\CurrentSprite[31]_i_276_n_0 ,\CurrentSprite[31]_i_277_n_0 ,\CurrentSprite[31]_i_278_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_104_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_279_n_0 ,\CurrentSprite[31]_i_280_n_0 ,\CurrentSprite[31]_i_281_n_0 ,\CurrentSprite[31]_i_282_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_107 
       (.CI(\CurrentSprite_reg[31]_i_283_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_107_n_0 ,\CurrentSprite_reg[31]_i_107_n_1 ,\CurrentSprite_reg[31]_i_107_n_2 ,\CurrentSprite_reg[31]_i_107_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_107_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_284_n_0 ,\CurrentSprite[31]_i_285_n_0 ,\CurrentSprite[31]_i_286_n_0 ,\CurrentSprite[31]_i_287_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_110 
       (.CI(\CurrentSprite_reg[31]_i_289_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_110_CO_UNCONNECTED [3:1],CurrentSprite279_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_290_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_110_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_291_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_111 
       (.CI(\CurrentSprite_reg[31]_i_292_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_111_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_111_n_2 ,\CurrentSprite_reg[31]_i_111_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_111_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_293_n_0 ,\CurrentSprite[31]_i_294_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_112 
       (.CI(\CurrentSprite_reg[31]_i_295_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_112_CO_UNCONNECTED [3:1],CurrentSprite27_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_296_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_112_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_297_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_113 
       (.CI(\CurrentSprite_reg[31]_i_298_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_113_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_113_n_2 ,\CurrentSprite_reg[31]_i_113_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_113_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_299_n_0 ,\CurrentSprite[31]_i_300_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_114 
       (.CI(\CurrentSprite_reg[31]_i_301_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_114_n_0 ,\CurrentSprite_reg[31]_i_114_n_1 ,\CurrentSprite_reg[31]_i_114_n_2 ,\CurrentSprite_reg[31]_i_114_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_114_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_302_n_0 ,\CurrentSprite[31]_i_303_n_0 ,\CurrentSprite[31]_i_304_n_0 ,\CurrentSprite[31]_i_305_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_117 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_117_n_0 ,\CurrentSprite_reg[31]_i_117_n_1 ,\CurrentSprite_reg[31]_i_117_n_2 ,\CurrentSprite_reg[31]_i_117_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_307_n_0 ,\CurrentSprite[31]_i_308_n_0 ,\CurrentSprite[31]_i_309_n_0 ,\CurrentSprite[31]_i_310_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_117_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_311_n_0 ,\CurrentSprite[31]_i_312_n_0 ,\CurrentSprite[31]_i_313_n_0 ,\CurrentSprite[31]_i_314_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_120 
       (.CI(\CurrentSprite_reg[31]_i_315_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_120_CO_UNCONNECTED [3:1],CurrentSprite24_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_316_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_120_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_317_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_121 
       (.CI(\CurrentSprite_reg[31]_i_318_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_121_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_121_n_2 ,\CurrentSprite_reg[31]_i_121_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_121_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_319_n_0 ,\CurrentSprite[31]_i_320_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_122 
       (.CI(\CurrentSprite_reg[31]_i_321_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_122_CO_UNCONNECTED [3:1],CurrentSprite294_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_322_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_122_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_323_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_123 
       (.CI(\CurrentSprite_reg[31]_i_324_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_123_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_123_n_2 ,\CurrentSprite_reg[31]_i_123_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_123_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_325_n_0 ,\CurrentSprite[31]_i_326_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_125 
       (.CI(\CurrentSprite_reg[31]_i_327_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_125_CO_UNCONNECTED [3:1],CurrentSprite213_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_328_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_125_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_329_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_126 
       (.CI(\CurrentSprite_reg[31]_i_330_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_126_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_126_n_2 ,\CurrentSprite_reg[31]_i_126_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_126_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_331_n_0 ,\CurrentSprite[31]_i_332_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_128 
       (.CI(\CurrentSprite_reg[31]_i_333_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_128_CO_UNCONNECTED [3:1],CurrentSprite219_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_334_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_128_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_335_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_129 
       (.CI(\CurrentSprite_reg[31]_i_336_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_129_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_129_n_2 ,\CurrentSprite_reg[31]_i_129_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_129_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_337_n_0 ,\CurrentSprite[31]_i_338_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_130 
       (.CI(\CurrentSprite_reg[31]_i_339_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_130_CO_UNCONNECTED [3:1],CurrentSprite231_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_340_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_130_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_341_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_131 
       (.CI(\CurrentSprite_reg[31]_i_342_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_131_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_131_n_2 ,\CurrentSprite_reg[31]_i_131_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_131_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_343_n_0 ,\CurrentSprite[31]_i_344_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_132 
       (.CI(\CurrentSprite_reg[31]_i_345_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_132_CO_UNCONNECTED [3:1],CurrentSprite234_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_346_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_132_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_347_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_133 
       (.CI(\CurrentSprite_reg[31]_i_348_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_133_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_133_n_2 ,\CurrentSprite_reg[31]_i_133_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_133_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_349_n_0 ,\CurrentSprite[31]_i_350_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_134 
       (.CI(\CurrentSprite_reg[31]_i_351_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_134_CO_UNCONNECTED [3:1],CurrentSprite225_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_352_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_134_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_353_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_135 
       (.CI(\CurrentSprite_reg[31]_i_354_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_135_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_135_n_2 ,\CurrentSprite_reg[31]_i_135_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_135_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_355_n_0 ,\CurrentSprite[31]_i_356_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_136 
       (.CI(\CurrentSprite_reg[31]_i_357_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_136_n_0 ,\CurrentSprite_reg[31]_i_136_n_1 ,\CurrentSprite_reg[31]_i_136_n_2 ,\CurrentSprite_reg[31]_i_136_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_136_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_358_n_0 ,\CurrentSprite[31]_i_359_n_0 ,\CurrentSprite[31]_i_360_n_0 ,\CurrentSprite[31]_i_361_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_139 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_139_n_0 ,\CurrentSprite_reg[31]_i_139_n_1 ,\CurrentSprite_reg[31]_i_139_n_2 ,\CurrentSprite_reg[31]_i_139_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_363_n_0 ,\CurrentSprite[31]_i_364_n_0 ,\CurrentSprite[31]_i_365_n_0 ,\CurrentSprite[31]_i_366_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_139_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_367_n_0 ,\CurrentSprite[31]_i_368_n_0 ,\CurrentSprite[31]_i_369_n_0 ,\CurrentSprite[31]_i_370_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_14 
       (.CI(\CurrentSprite_reg[31]_i_65_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_14_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_14_n_2 ,\CurrentSprite_reg[31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_14_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_66_n_0 ,\CurrentSprite[31]_i_67_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_143 
       (.CI(\CurrentSprite_reg[31]_i_371_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_143_CO_UNCONNECTED [3:1],CurrentSprite237_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_372_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_143_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_373_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_144 
       (.CI(\CurrentSprite_reg[31]_i_374_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_144_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_144_n_2 ,\CurrentSprite_reg[31]_i_144_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_144_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_375_n_0 ,\CurrentSprite[31]_i_376_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_145 
       (.CI(\CurrentSprite_reg[31]_i_377_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_145_CO_UNCONNECTED [3:1],CurrentSprite246_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_378_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_145_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_379_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_146 
       (.CI(\CurrentSprite_reg[31]_i_380_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_146_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_146_n_2 ,\CurrentSprite_reg[31]_i_146_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_146_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_381_n_0 ,\CurrentSprite[31]_i_382_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_15 
       (.CI(\CurrentSprite_reg[31]_i_68_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_15_CO_UNCONNECTED [3:1],CurrentSprite255_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_69_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_15_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_70_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_150 
       (.CI(\CurrentSprite_reg[31]_i_383_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_150_CO_UNCONNECTED [3:1],CurrentSprite240_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_384_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_150_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_385_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_151 
       (.CI(\CurrentSprite_reg[31]_i_386_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_151_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_151_n_2 ,\CurrentSprite_reg[31]_i_151_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_151_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_387_n_0 ,\CurrentSprite[31]_i_388_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_152 
       (.CI(\CurrentSprite_reg[31]_i_389_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_152_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_152_n_2 ,\CurrentSprite_reg[31]_i_152_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_152_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_390_n_0 ,\CurrentSprite[31]_i_391_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_153 
       (.CI(\CurrentSprite_reg[31]_i_392_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_153_CO_UNCONNECTED [3:1],CurrentSprite243_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_393_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_153_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_394_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_156 
       (.CI(\CurrentSprite_reg[31]_i_395_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_156_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_156_n_2 ,\CurrentSprite_reg[31]_i_156_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_156_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_396_n_0 ,\CurrentSprite[31]_i_397_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_157 
       (.CI(\CurrentSprite_reg[31]_i_398_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_157_CO_UNCONNECTED [3:1],CurrentSprite216_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_399_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_157_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_400_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_158 
       (.CI(\CurrentSprite_reg[31]_i_401_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_158_CO_UNCONNECTED [3:1],CurrentSprite222_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_402_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_158_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_403_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_159 
       (.CI(\CurrentSprite_reg[31]_i_404_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_159_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_159_n_2 ,\CurrentSprite_reg[31]_i_159_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_159_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_405_n_0 ,\CurrentSprite[31]_i_406_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_162 
       (.CI(\CurrentSprite_reg[31]_i_407_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_162_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_162_n_2 ,\CurrentSprite_reg[31]_i_162_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_162_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_408_n_0 ,\CurrentSprite[31]_i_409_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_163 
       (.CI(\CurrentSprite_reg[31]_i_410_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_163_CO_UNCONNECTED [3:1],CurrentSprite270_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_411_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_163_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_412_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_164 
       (.CI(\CurrentSprite_reg[31]_i_413_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_164_CO_UNCONNECTED [3:1],CurrentSprite261_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_414_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_164_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_415_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_165 
       (.CI(\CurrentSprite_reg[31]_i_416_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_165_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_165_n_2 ,\CurrentSprite_reg[31]_i_165_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_165_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_417_n_0 ,\CurrentSprite[31]_i_418_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_170 
       (.CI(\CurrentSprite_reg[31]_i_419_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_170_n_0 ,\CurrentSprite_reg[31]_i_170_n_1 ,\CurrentSprite_reg[31]_i_170_n_2 ,\CurrentSprite_reg[31]_i_170_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_170_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_420_n_0 ,\CurrentSprite[31]_i_421_n_0 ,\CurrentSprite[31]_i_422_n_0 ,\CurrentSprite[31]_i_423_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_173 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_173_n_0 ,\CurrentSprite_reg[31]_i_173_n_1 ,\CurrentSprite_reg[31]_i_173_n_2 ,\CurrentSprite_reg[31]_i_173_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_425_n_0 ,\CurrentSprite[31]_i_426_n_0 ,\CurrentSprite[31]_i_427_n_0 ,\CurrentSprite[31]_i_428_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_173_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_429_n_0 ,\CurrentSprite[31]_i_430_n_0 ,\CurrentSprite[31]_i_431_n_0 ,\CurrentSprite[31]_i_432_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_177 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_177_n_0 ,\CurrentSprite_reg[31]_i_177_n_1 ,\CurrentSprite_reg[31]_i_177_n_2 ,\CurrentSprite_reg[31]_i_177_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_177_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_433_n_0 ,\CurrentSprite[31]_i_434_n_0 ,\CurrentSprite[31]_i_435_n_0 ,\CurrentSprite[31]_i_436_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_191 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_191_n_0 ,\CurrentSprite_reg[31]_i_191_n_1 ,\CurrentSprite_reg[31]_i_191_n_2 ,\CurrentSprite_reg[31]_i_191_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_437_n_0 ,\CurrentSprite[31]_i_438_n_0 ,\CurrentSprite[31]_i_439_n_0 ,\CurrentSprite[31]_i_440_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_191_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_441_n_0 ,\CurrentSprite[31]_i_442_n_0 ,\CurrentSprite[31]_i_443_n_0 ,\CurrentSprite[31]_i_444_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_194 
       (.CI(\CurrentSprite_reg[31]_i_445_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_194_n_0 ,\CurrentSprite_reg[31]_i_194_n_1 ,\CurrentSprite_reg[31]_i_194_n_2 ,\CurrentSprite_reg[31]_i_194_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_194_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_446_n_0 ,\CurrentSprite[31]_i_447_n_0 ,\CurrentSprite[31]_i_448_n_0 ,\CurrentSprite[31]_i_449_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_197 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_197_n_0 ,\CurrentSprite_reg[31]_i_197_n_1 ,\CurrentSprite_reg[31]_i_197_n_2 ,\CurrentSprite_reg[31]_i_197_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_451_n_0 ,\CurrentSprite[31]_i_452_n_0 ,\CurrentSprite[31]_i_453_n_0 ,\CurrentSprite[31]_i_454_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_197_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_455_n_0 ,\CurrentSprite[31]_i_456_n_0 ,\CurrentSprite[31]_i_457_n_0 ,\CurrentSprite[31]_i_458_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_200 
       (.CI(\CurrentSprite_reg[31]_i_459_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_200_n_0 ,\CurrentSprite_reg[31]_i_200_n_1 ,\CurrentSprite_reg[31]_i_200_n_2 ,\CurrentSprite_reg[31]_i_200_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_200_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_460_n_0 ,\CurrentSprite[31]_i_461_n_0 ,\CurrentSprite[31]_i_462_n_0 ,\CurrentSprite[31]_i_463_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_203 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_203_n_0 ,\CurrentSprite_reg[31]_i_203_n_1 ,\CurrentSprite_reg[31]_i_203_n_2 ,\CurrentSprite_reg[31]_i_203_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_465_n_0 ,\CurrentSprite[31]_i_466_n_0 ,\CurrentSprite[31]_i_467_n_0 ,\CurrentSprite[31]_i_468_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_203_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_469_n_0 ,\CurrentSprite[31]_i_470_n_0 ,\CurrentSprite[31]_i_471_n_0 ,\CurrentSprite[31]_i_472_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_206 
       (.CI(\CurrentSprite_reg[31]_i_473_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_206_n_0 ,\CurrentSprite_reg[31]_i_206_n_1 ,\CurrentSprite_reg[31]_i_206_n_2 ,\CurrentSprite_reg[31]_i_206_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_206_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_474_n_0 ,\CurrentSprite[31]_i_475_n_0 ,\CurrentSprite[31]_i_476_n_0 ,\CurrentSprite[31]_i_477_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_209 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_209_n_0 ,\CurrentSprite_reg[31]_i_209_n_1 ,\CurrentSprite_reg[31]_i_209_n_2 ,\CurrentSprite_reg[31]_i_209_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_479_n_0 ,\CurrentSprite[31]_i_480_n_0 ,\CurrentSprite[31]_i_481_n_0 ,\CurrentSprite[31]_i_482_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_209_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_483_n_0 ,\CurrentSprite[31]_i_484_n_0 ,\CurrentSprite[31]_i_485_n_0 ,\CurrentSprite[31]_i_486_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_212 
       (.CI(\CurrentSprite_reg[31]_i_487_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_212_n_0 ,\CurrentSprite_reg[31]_i_212_n_1 ,\CurrentSprite_reg[31]_i_212_n_2 ,\CurrentSprite_reg[31]_i_212_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_212_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_488_n_0 ,\CurrentSprite[31]_i_489_n_0 ,\CurrentSprite[31]_i_490_n_0 ,\CurrentSprite[31]_i_491_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_215 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_215_n_0 ,\CurrentSprite_reg[31]_i_215_n_1 ,\CurrentSprite_reg[31]_i_215_n_2 ,\CurrentSprite_reg[31]_i_215_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_493_n_0 ,\CurrentSprite[31]_i_494_n_0 ,\CurrentSprite[31]_i_495_n_0 ,\CurrentSprite[31]_i_496_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_215_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_497_n_0 ,\CurrentSprite[31]_i_498_n_0 ,\CurrentSprite[31]_i_499_n_0 ,\CurrentSprite[31]_i_500_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_218 
       (.CI(\CurrentSprite_reg[31]_i_501_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_218_n_0 ,\CurrentSprite_reg[31]_i_218_n_1 ,\CurrentSprite_reg[31]_i_218_n_2 ,\CurrentSprite_reg[31]_i_218_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_218_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_502_n_0 ,\CurrentSprite[31]_i_503_n_0 ,\CurrentSprite[31]_i_504_n_0 ,\CurrentSprite[31]_i_505_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_22 
       (.CI(\CurrentSprite_reg[31]_i_84_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_22_CO_UNCONNECTED [3:1],CurrentSprite22_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_85_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_22_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_86_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_221 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_221_n_0 ,\CurrentSprite_reg[31]_i_221_n_1 ,\CurrentSprite_reg[31]_i_221_n_2 ,\CurrentSprite_reg[31]_i_221_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_507_n_0 ,\CurrentSprite[31]_i_508_n_0 ,\CurrentSprite[31]_i_509_n_0 ,\CurrentSprite[31]_i_510_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_221_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_511_n_0 ,\CurrentSprite[31]_i_512_n_0 ,\CurrentSprite[31]_i_513_n_0 ,\CurrentSprite[31]_i_514_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_224 
       (.CI(\CurrentSprite_reg[31]_i_515_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_224_n_0 ,\CurrentSprite_reg[31]_i_224_n_1 ,\CurrentSprite_reg[31]_i_224_n_2 ,\CurrentSprite_reg[31]_i_224_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_224_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_516_n_0 ,\CurrentSprite[31]_i_517_n_0 ,\CurrentSprite[31]_i_518_n_0 ,\CurrentSprite[31]_i_519_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_23 
       (.CI(\CurrentSprite_reg[31]_i_87_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_23_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_23_n_2 ,\CurrentSprite_reg[31]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_23_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_88_n_0 ,\CurrentSprite[31]_i_89_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_235 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_235_n_0 ,\CurrentSprite_reg[31]_i_235_n_1 ,\CurrentSprite_reg[31]_i_235_n_2 ,\CurrentSprite_reg[31]_i_235_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_235_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_521_n_0 ,\CurrentSprite[31]_i_522_n_0 ,\CurrentSprite[31]_i_523_n_0 ,\CurrentSprite[31]_i_524_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_24 
       (.CI(\CurrentSprite_reg[31]_i_90_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_24_CO_UNCONNECTED [3:1],CurrentSprite291_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_91_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_24_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_92_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_249 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_249_n_0 ,\CurrentSprite_reg[31]_i_249_n_1 ,\CurrentSprite_reg[31]_i_249_n_2 ,\CurrentSprite_reg[31]_i_249_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_249_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_525_n_0 ,\CurrentSprite[31]_i_526_n_0 ,\CurrentSprite[31]_i_527_n_0 ,\CurrentSprite[31]_i_528_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_25 
       (.CI(\CurrentSprite_reg[31]_i_93_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_25_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_25_n_2 ,\CurrentSprite_reg[31]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_25_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_94_n_0 ,\CurrentSprite[31]_i_95_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_255 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_255_n_0 ,\CurrentSprite_reg[31]_i_255_n_1 ,\CurrentSprite_reg[31]_i_255_n_2 ,\CurrentSprite_reg[31]_i_255_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_529_n_0 ,\CurrentSprite[31]_i_530_n_0 ,\CurrentSprite[31]_i_531_n_0 ,\CurrentSprite[31]_i_532_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_255_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_533_n_0 ,\CurrentSprite[31]_i_534_n_0 ,\CurrentSprite[31]_i_535_n_0 ,\CurrentSprite[31]_i_536_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_258 
       (.CI(\CurrentSprite_reg[31]_i_537_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_258_n_0 ,\CurrentSprite_reg[31]_i_258_n_1 ,\CurrentSprite_reg[31]_i_258_n_2 ,\CurrentSprite_reg[31]_i_258_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_258_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_538_n_0 ,\CurrentSprite[31]_i_539_n_0 ,\CurrentSprite[31]_i_540_n_0 ,\CurrentSprite[31]_i_541_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_269 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_269_n_0 ,\CurrentSprite_reg[31]_i_269_n_1 ,\CurrentSprite_reg[31]_i_269_n_2 ,\CurrentSprite_reg[31]_i_269_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_269_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_543_n_0 ,\CurrentSprite[31]_i_544_n_0 ,\CurrentSprite[31]_i_545_n_0 ,\CurrentSprite[31]_i_546_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_27 
       (.CI(\CurrentSprite_reg[31]_i_98_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_27_CO_UNCONNECTED [3:1],CurrentSprite273_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_99_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_27_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_100_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_28 
       (.CI(\CurrentSprite_reg[31]_i_101_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_28_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_28_n_2 ,\CurrentSprite_reg[31]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_28_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_102_n_0 ,\CurrentSprite[31]_i_103_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_283 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_283_n_0 ,\CurrentSprite_reg[31]_i_283_n_1 ,\CurrentSprite_reg[31]_i_283_n_2 ,\CurrentSprite_reg[31]_i_283_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_283_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_547_n_0 ,\CurrentSprite[31]_i_548_n_0 ,\CurrentSprite[31]_i_549_n_0 ,\CurrentSprite[31]_i_550_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_289 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_289_n_0 ,\CurrentSprite_reg[31]_i_289_n_1 ,\CurrentSprite_reg[31]_i_289_n_2 ,\CurrentSprite_reg[31]_i_289_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_551_n_0 ,\CurrentSprite[31]_i_552_n_0 ,\CurrentSprite[31]_i_553_n_0 ,\CurrentSprite[31]_i_554_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_289_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_555_n_0 ,\CurrentSprite[31]_i_556_n_0 ,\CurrentSprite[31]_i_557_n_0 ,\CurrentSprite[31]_i_558_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_29 
       (.CI(\CurrentSprite_reg[31]_i_104_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_29_CO_UNCONNECTED [3:1],CurrentSprite282_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_105_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_29_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_106_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_292 
       (.CI(\CurrentSprite_reg[31]_i_559_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_292_n_0 ,\CurrentSprite_reg[31]_i_292_n_1 ,\CurrentSprite_reg[31]_i_292_n_2 ,\CurrentSprite_reg[31]_i_292_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_292_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_560_n_0 ,\CurrentSprite[31]_i_561_n_0 ,\CurrentSprite[31]_i_562_n_0 ,\CurrentSprite[31]_i_563_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_295 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_295_n_0 ,\CurrentSprite_reg[31]_i_295_n_1 ,\CurrentSprite_reg[31]_i_295_n_2 ,\CurrentSprite_reg[31]_i_295_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_565_n_0 ,\CurrentSprite[31]_i_566_n_0 ,\CurrentSprite[31]_i_567_n_0 ,\CurrentSprite[31]_i_568_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_295_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_569_n_0 ,\CurrentSprite[31]_i_570_n_0 ,\CurrentSprite[31]_i_571_n_0 ,\CurrentSprite[31]_i_572_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_298 
       (.CI(\CurrentSprite_reg[31]_i_573_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_298_n_0 ,\CurrentSprite_reg[31]_i_298_n_1 ,\CurrentSprite_reg[31]_i_298_n_2 ,\CurrentSprite_reg[31]_i_298_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_298_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_574_n_0 ,\CurrentSprite[31]_i_575_n_0 ,\CurrentSprite[31]_i_576_n_0 ,\CurrentSprite[31]_i_577_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_30 
       (.CI(\CurrentSprite_reg[31]_i_107_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_30_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_30_n_2 ,\CurrentSprite_reg[31]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_30_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_108_n_0 ,\CurrentSprite[31]_i_109_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_301 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_301_n_0 ,\CurrentSprite_reg[31]_i_301_n_1 ,\CurrentSprite_reg[31]_i_301_n_2 ,\CurrentSprite_reg[31]_i_301_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_301_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_579_n_0 ,\CurrentSprite[31]_i_580_n_0 ,\CurrentSprite[31]_i_581_n_0 ,\CurrentSprite[31]_i_582_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_315 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_315_n_0 ,\CurrentSprite_reg[31]_i_315_n_1 ,\CurrentSprite_reg[31]_i_315_n_2 ,\CurrentSprite_reg[31]_i_315_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_583_n_0 ,\CurrentSprite[31]_i_584_n_0 ,\CurrentSprite[31]_i_585_n_0 ,\CurrentSprite[31]_i_586_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_315_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_587_n_0 ,\CurrentSprite[31]_i_588_n_0 ,\CurrentSprite[31]_i_589_n_0 ,\CurrentSprite[31]_i_590_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_318 
       (.CI(\CurrentSprite_reg[31]_i_591_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_318_n_0 ,\CurrentSprite_reg[31]_i_318_n_1 ,\CurrentSprite_reg[31]_i_318_n_2 ,\CurrentSprite_reg[31]_i_318_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_318_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_592_n_0 ,\CurrentSprite[31]_i_593_n_0 ,\CurrentSprite[31]_i_594_n_0 ,\CurrentSprite[31]_i_595_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_321 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_321_n_0 ,\CurrentSprite_reg[31]_i_321_n_1 ,\CurrentSprite_reg[31]_i_321_n_2 ,\CurrentSprite_reg[31]_i_321_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_597_n_0 ,\CurrentSprite[31]_i_598_n_0 ,\CurrentSprite[31]_i_599_n_0 ,\CurrentSprite[31]_i_600_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_321_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_601_n_0 ,\CurrentSprite[31]_i_602_n_0 ,\CurrentSprite[31]_i_603_n_0 ,\CurrentSprite[31]_i_604_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_324 
       (.CI(\CurrentSprite_reg[31]_i_605_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_324_n_0 ,\CurrentSprite_reg[31]_i_324_n_1 ,\CurrentSprite_reg[31]_i_324_n_2 ,\CurrentSprite_reg[31]_i_324_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_324_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_606_n_0 ,\CurrentSprite[31]_i_607_n_0 ,\CurrentSprite[31]_i_608_n_0 ,\CurrentSprite[31]_i_609_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_327 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_327_n_0 ,\CurrentSprite_reg[31]_i_327_n_1 ,\CurrentSprite_reg[31]_i_327_n_2 ,\CurrentSprite_reg[31]_i_327_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_611_n_0 ,\CurrentSprite[31]_i_612_n_0 ,\CurrentSprite[31]_i_613_n_0 ,\CurrentSprite[31]_i_614_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_327_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_615_n_0 ,\CurrentSprite[31]_i_616_n_0 ,\CurrentSprite[31]_i_617_n_0 ,\CurrentSprite[31]_i_618_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_33 
       (.CI(\CurrentSprite_reg[31]_i_114_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_33_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_33_n_2 ,\CurrentSprite_reg[31]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_33_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_115_n_0 ,\CurrentSprite[31]_i_116_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_330 
       (.CI(\CurrentSprite_reg[31]_i_619_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_330_n_0 ,\CurrentSprite_reg[31]_i_330_n_1 ,\CurrentSprite_reg[31]_i_330_n_2 ,\CurrentSprite_reg[31]_i_330_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_330_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_620_n_0 ,\CurrentSprite[31]_i_621_n_0 ,\CurrentSprite[31]_i_622_n_0 ,\CurrentSprite[31]_i_623_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_333 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_333_n_0 ,\CurrentSprite_reg[31]_i_333_n_1 ,\CurrentSprite_reg[31]_i_333_n_2 ,\CurrentSprite_reg[31]_i_333_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_625_n_0 ,\CurrentSprite[31]_i_626_n_0 ,\CurrentSprite[31]_i_627_n_0 ,\CurrentSprite[31]_i_628_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_333_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_629_n_0 ,\CurrentSprite[31]_i_630_n_0 ,\CurrentSprite[31]_i_631_n_0 ,\CurrentSprite[31]_i_632_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_336 
       (.CI(\CurrentSprite_reg[31]_i_633_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_336_n_0 ,\CurrentSprite_reg[31]_i_336_n_1 ,\CurrentSprite_reg[31]_i_336_n_2 ,\CurrentSprite_reg[31]_i_336_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_336_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_634_n_0 ,\CurrentSprite[31]_i_635_n_0 ,\CurrentSprite[31]_i_636_n_0 ,\CurrentSprite[31]_i_637_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_339 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_339_n_0 ,\CurrentSprite_reg[31]_i_339_n_1 ,\CurrentSprite_reg[31]_i_339_n_2 ,\CurrentSprite_reg[31]_i_339_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_639_n_0 ,\CurrentSprite[31]_i_640_n_0 ,\CurrentSprite[31]_i_641_n_0 ,\CurrentSprite[31]_i_642_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_339_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_643_n_0 ,\CurrentSprite[31]_i_644_n_0 ,\CurrentSprite[31]_i_645_n_0 ,\CurrentSprite[31]_i_646_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_34 
       (.CI(\CurrentSprite_reg[31]_i_117_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_34_CO_UNCONNECTED [3:1],CurrentSprite210_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_118_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_34_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_119_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_342 
       (.CI(\CurrentSprite_reg[31]_i_647_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_342_n_0 ,\CurrentSprite_reg[31]_i_342_n_1 ,\CurrentSprite_reg[31]_i_342_n_2 ,\CurrentSprite_reg[31]_i_342_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_342_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_648_n_0 ,\CurrentSprite[31]_i_649_n_0 ,\CurrentSprite[31]_i_650_n_0 ,\CurrentSprite[31]_i_651_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_345 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_345_n_0 ,\CurrentSprite_reg[31]_i_345_n_1 ,\CurrentSprite_reg[31]_i_345_n_2 ,\CurrentSprite_reg[31]_i_345_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_653_n_0 ,\CurrentSprite[31]_i_654_n_0 ,\CurrentSprite[31]_i_655_n_0 ,\CurrentSprite[31]_i_656_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_345_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_657_n_0 ,\CurrentSprite[31]_i_658_n_0 ,\CurrentSprite[31]_i_659_n_0 ,\CurrentSprite[31]_i_660_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_348 
       (.CI(\CurrentSprite_reg[31]_i_661_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_348_n_0 ,\CurrentSprite_reg[31]_i_348_n_1 ,\CurrentSprite_reg[31]_i_348_n_2 ,\CurrentSprite_reg[31]_i_348_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_348_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_662_n_0 ,\CurrentSprite[31]_i_663_n_0 ,\CurrentSprite[31]_i_664_n_0 ,\CurrentSprite[31]_i_665_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_351 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_351_n_0 ,\CurrentSprite_reg[31]_i_351_n_1 ,\CurrentSprite_reg[31]_i_351_n_2 ,\CurrentSprite_reg[31]_i_351_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_667_n_0 ,\CurrentSprite[31]_i_668_n_0 ,\CurrentSprite[31]_i_669_n_0 ,\CurrentSprite[31]_i_670_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_351_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_671_n_0 ,\CurrentSprite[31]_i_672_n_0 ,\CurrentSprite[31]_i_673_n_0 ,\CurrentSprite[31]_i_674_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_354 
       (.CI(\CurrentSprite_reg[31]_i_675_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_354_n_0 ,\CurrentSprite_reg[31]_i_354_n_1 ,\CurrentSprite_reg[31]_i_354_n_2 ,\CurrentSprite_reg[31]_i_354_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_354_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_676_n_0 ,\CurrentSprite[31]_i_677_n_0 ,\CurrentSprite[31]_i_678_n_0 ,\CurrentSprite[31]_i_679_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_357 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_357_n_0 ,\CurrentSprite_reg[31]_i_357_n_1 ,\CurrentSprite_reg[31]_i_357_n_2 ,\CurrentSprite_reg[31]_i_357_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_357_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_681_n_0 ,\CurrentSprite[31]_i_682_n_0 ,\CurrentSprite[31]_i_683_n_0 ,\CurrentSprite[31]_i_684_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_371 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_371_n_0 ,\CurrentSprite_reg[31]_i_371_n_1 ,\CurrentSprite_reg[31]_i_371_n_2 ,\CurrentSprite_reg[31]_i_371_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_685_n_0 ,\CurrentSprite[31]_i_686_n_0 ,\CurrentSprite[31]_i_687_n_0 ,\CurrentSprite[31]_i_688_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_371_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_689_n_0 ,\CurrentSprite[31]_i_690_n_0 ,\CurrentSprite[31]_i_691_n_0 ,\CurrentSprite[31]_i_692_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_374 
       (.CI(\CurrentSprite_reg[31]_i_693_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_374_n_0 ,\CurrentSprite_reg[31]_i_374_n_1 ,\CurrentSprite_reg[31]_i_374_n_2 ,\CurrentSprite_reg[31]_i_374_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_374_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_694_n_0 ,\CurrentSprite[31]_i_695_n_0 ,\CurrentSprite[31]_i_696_n_0 ,\CurrentSprite[31]_i_697_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_377 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_377_n_0 ,\CurrentSprite_reg[31]_i_377_n_1 ,\CurrentSprite_reg[31]_i_377_n_2 ,\CurrentSprite_reg[31]_i_377_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_699_n_0 ,\CurrentSprite[31]_i_700_n_0 ,\CurrentSprite[31]_i_701_n_0 ,\CurrentSprite[31]_i_702_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_377_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_703_n_0 ,\CurrentSprite[31]_i_704_n_0 ,\CurrentSprite[31]_i_705_n_0 ,\CurrentSprite[31]_i_706_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_380 
       (.CI(\CurrentSprite_reg[31]_i_707_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_380_n_0 ,\CurrentSprite_reg[31]_i_380_n_1 ,\CurrentSprite_reg[31]_i_380_n_2 ,\CurrentSprite_reg[31]_i_380_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_380_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_708_n_0 ,\CurrentSprite[31]_i_709_n_0 ,\CurrentSprite[31]_i_710_n_0 ,\CurrentSprite[31]_i_711_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_383 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_383_n_0 ,\CurrentSprite_reg[31]_i_383_n_1 ,\CurrentSprite_reg[31]_i_383_n_2 ,\CurrentSprite_reg[31]_i_383_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_713_n_0 ,\CurrentSprite[31]_i_714_n_0 ,\CurrentSprite[31]_i_715_n_0 ,\CurrentSprite[31]_i_716_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_383_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_717_n_0 ,\CurrentSprite[31]_i_718_n_0 ,\CurrentSprite[31]_i_719_n_0 ,\CurrentSprite[31]_i_720_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_386 
       (.CI(\CurrentSprite_reg[31]_i_721_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_386_n_0 ,\CurrentSprite_reg[31]_i_386_n_1 ,\CurrentSprite_reg[31]_i_386_n_2 ,\CurrentSprite_reg[31]_i_386_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_386_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_722_n_0 ,\CurrentSprite[31]_i_723_n_0 ,\CurrentSprite[31]_i_724_n_0 ,\CurrentSprite[31]_i_725_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_389 
       (.CI(\CurrentSprite_reg[31]_i_727_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_389_n_0 ,\CurrentSprite_reg[31]_i_389_n_1 ,\CurrentSprite_reg[31]_i_389_n_2 ,\CurrentSprite_reg[31]_i_389_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_389_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_728_n_0 ,\CurrentSprite[31]_i_729_n_0 ,\CurrentSprite[31]_i_730_n_0 ,\CurrentSprite[31]_i_731_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_392 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_392_n_0 ,\CurrentSprite_reg[31]_i_392_n_1 ,\CurrentSprite_reg[31]_i_392_n_2 ,\CurrentSprite_reg[31]_i_392_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_733_n_0 ,\CurrentSprite[31]_i_734_n_0 ,\CurrentSprite[31]_i_735_n_0 ,\CurrentSprite[31]_i_736_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_392_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_737_n_0 ,\CurrentSprite[31]_i_738_n_0 ,\CurrentSprite[31]_i_739_n_0 ,\CurrentSprite[31]_i_740_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_395 
       (.CI(\CurrentSprite_reg[31]_i_741_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_395_n_0 ,\CurrentSprite_reg[31]_i_395_n_1 ,\CurrentSprite_reg[31]_i_395_n_2 ,\CurrentSprite_reg[31]_i_395_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_395_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_742_n_0 ,\CurrentSprite[31]_i_743_n_0 ,\CurrentSprite[31]_i_744_n_0 ,\CurrentSprite[31]_i_745_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_398 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_398_n_0 ,\CurrentSprite_reg[31]_i_398_n_1 ,\CurrentSprite_reg[31]_i_398_n_2 ,\CurrentSprite_reg[31]_i_398_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_747_n_0 ,\CurrentSprite[31]_i_748_n_0 ,\CurrentSprite[31]_i_749_n_0 ,\CurrentSprite[31]_i_750_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_398_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_751_n_0 ,\CurrentSprite[31]_i_752_n_0 ,\CurrentSprite[31]_i_753_n_0 ,\CurrentSprite[31]_i_754_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_401 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_401_n_0 ,\CurrentSprite_reg[31]_i_401_n_1 ,\CurrentSprite_reg[31]_i_401_n_2 ,\CurrentSprite_reg[31]_i_401_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_755_n_0 ,\CurrentSprite[31]_i_756_n_0 ,\CurrentSprite[31]_i_757_n_0 ,\CurrentSprite[31]_i_758_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_401_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_759_n_0 ,\CurrentSprite[31]_i_760_n_0 ,\CurrentSprite[31]_i_761_n_0 ,\CurrentSprite[31]_i_762_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_404 
       (.CI(\CurrentSprite_reg[31]_i_763_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_404_n_0 ,\CurrentSprite_reg[31]_i_404_n_1 ,\CurrentSprite_reg[31]_i_404_n_2 ,\CurrentSprite_reg[31]_i_404_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_404_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_764_n_0 ,\CurrentSprite[31]_i_765_n_0 ,\CurrentSprite[31]_i_766_n_0 ,\CurrentSprite[31]_i_767_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_407 
       (.CI(\CurrentSprite_reg[31]_i_769_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_407_n_0 ,\CurrentSprite_reg[31]_i_407_n_1 ,\CurrentSprite_reg[31]_i_407_n_2 ,\CurrentSprite_reg[31]_i_407_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_407_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_770_n_0 ,\CurrentSprite[31]_i_771_n_0 ,\CurrentSprite[31]_i_772_n_0 ,\CurrentSprite[31]_i_773_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_41 
       (.CI(\CurrentSprite_reg[31]_i_136_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_41_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_41_n_2 ,\CurrentSprite_reg[31]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_41_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_137_n_0 ,\CurrentSprite[31]_i_138_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_410 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_410_n_0 ,\CurrentSprite_reg[31]_i_410_n_1 ,\CurrentSprite_reg[31]_i_410_n_2 ,\CurrentSprite_reg[31]_i_410_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_775_n_0 ,\CurrentSprite[31]_i_776_n_0 ,\CurrentSprite[31]_i_777_n_0 ,\CurrentSprite[31]_i_778_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_410_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_779_n_0 ,\CurrentSprite[31]_i_780_n_0 ,\CurrentSprite[31]_i_781_n_0 ,\CurrentSprite[31]_i_782_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_413 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_413_n_0 ,\CurrentSprite_reg[31]_i_413_n_1 ,\CurrentSprite_reg[31]_i_413_n_2 ,\CurrentSprite_reg[31]_i_413_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_783_n_0 ,\CurrentSprite[31]_i_784_n_0 ,\CurrentSprite[31]_i_785_n_0 ,\CurrentSprite[31]_i_786_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_413_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_787_n_0 ,\CurrentSprite[31]_i_788_n_0 ,\CurrentSprite[31]_i_789_n_0 ,\CurrentSprite[31]_i_790_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_416 
       (.CI(\CurrentSprite_reg[31]_i_791_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_416_n_0 ,\CurrentSprite_reg[31]_i_416_n_1 ,\CurrentSprite_reg[31]_i_416_n_2 ,\CurrentSprite_reg[31]_i_416_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_416_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_792_n_0 ,\CurrentSprite[31]_i_793_n_0 ,\CurrentSprite[31]_i_794_n_0 ,\CurrentSprite[31]_i_795_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_419 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_419_n_0 ,\CurrentSprite_reg[31]_i_419_n_1 ,\CurrentSprite_reg[31]_i_419_n_2 ,\CurrentSprite_reg[31]_i_419_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_419_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_797_n_0 ,\CurrentSprite[31]_i_798_n_0 ,\CurrentSprite[31]_i_799_n_0 ,\CurrentSprite[31]_i_800_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_42 
       (.CI(\CurrentSprite_reg[31]_i_139_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_42_CO_UNCONNECTED [3:1],CurrentSprite228_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_140_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_42_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_141_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_445 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_445_n_0 ,\CurrentSprite_reg[31]_i_445_n_1 ,\CurrentSprite_reg[31]_i_445_n_2 ,\CurrentSprite_reg[31]_i_445_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_445_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_801_n_0 ,\CurrentSprite[31]_i_802_n_0 ,\CurrentSprite[31]_i_803_n_0 ,\CurrentSprite[31]_i_804_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_459 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_459_n_0 ,\CurrentSprite_reg[31]_i_459_n_1 ,\CurrentSprite_reg[31]_i_459_n_2 ,\CurrentSprite_reg[31]_i_459_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_459_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_805_n_0 ,\CurrentSprite[31]_i_806_n_0 ,\CurrentSprite[31]_i_807_n_0 ,\CurrentSprite[31]_i_808_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_473 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_473_n_0 ,\CurrentSprite_reg[31]_i_473_n_1 ,\CurrentSprite_reg[31]_i_473_n_2 ,\CurrentSprite_reg[31]_i_473_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_473_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_809_n_0 ,\CurrentSprite[31]_i_810_n_0 ,\CurrentSprite[31]_i_811_n_0 ,\CurrentSprite[31]_i_812_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_487 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_487_n_0 ,\CurrentSprite_reg[31]_i_487_n_1 ,\CurrentSprite_reg[31]_i_487_n_2 ,\CurrentSprite_reg[31]_i_487_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_487_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_813_n_0 ,\CurrentSprite[31]_i_814_n_0 ,\CurrentSprite[31]_i_815_n_0 ,\CurrentSprite[31]_i_816_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_501 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_501_n_0 ,\CurrentSprite_reg[31]_i_501_n_1 ,\CurrentSprite_reg[31]_i_501_n_2 ,\CurrentSprite_reg[31]_i_501_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_501_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_817_n_0 ,\CurrentSprite[31]_i_818_n_0 ,\CurrentSprite[31]_i_819_n_0 ,\CurrentSprite[31]_i_820_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_515 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_515_n_0 ,\CurrentSprite_reg[31]_i_515_n_1 ,\CurrentSprite_reg[31]_i_515_n_2 ,\CurrentSprite_reg[31]_i_515_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_515_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_821_n_0 ,\CurrentSprite[31]_i_822_n_0 ,\CurrentSprite[31]_i_823_n_0 ,\CurrentSprite[31]_i_824_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_537 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_537_n_0 ,\CurrentSprite_reg[31]_i_537_n_1 ,\CurrentSprite_reg[31]_i_537_n_2 ,\CurrentSprite_reg[31]_i_537_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_537_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_825_n_0 ,\CurrentSprite[31]_i_826_n_0 ,\CurrentSprite[31]_i_827_n_0 ,\CurrentSprite[31]_i_828_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_559 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_559_n_0 ,\CurrentSprite_reg[31]_i_559_n_1 ,\CurrentSprite_reg[31]_i_559_n_2 ,\CurrentSprite_reg[31]_i_559_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_559_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_829_n_0 ,\CurrentSprite[31]_i_830_n_0 ,\CurrentSprite[31]_i_831_n_0 ,\CurrentSprite[31]_i_832_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_573 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_573_n_0 ,\CurrentSprite_reg[31]_i_573_n_1 ,\CurrentSprite_reg[31]_i_573_n_2 ,\CurrentSprite_reg[31]_i_573_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_573_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_833_n_0 ,\CurrentSprite[31]_i_834_n_0 ,\CurrentSprite[31]_i_835_n_0 ,\CurrentSprite[31]_i_836_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_591 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_591_n_0 ,\CurrentSprite_reg[31]_i_591_n_1 ,\CurrentSprite_reg[31]_i_591_n_2 ,\CurrentSprite_reg[31]_i_591_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_591_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_837_n_0 ,\CurrentSprite[31]_i_838_n_0 ,\CurrentSprite[31]_i_839_n_0 ,\CurrentSprite[31]_i_840_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_605 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_605_n_0 ,\CurrentSprite_reg[31]_i_605_n_1 ,\CurrentSprite_reg[31]_i_605_n_2 ,\CurrentSprite_reg[31]_i_605_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_605_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_841_n_0 ,\CurrentSprite[31]_i_842_n_0 ,\CurrentSprite[31]_i_843_n_0 ,\CurrentSprite[31]_i_844_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_61 
       (.CI(\CurrentSprite_reg[31]_i_170_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_61_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_61_n_2 ,\CurrentSprite_reg[31]_i_61_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_61_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_171_n_0 ,\CurrentSprite[31]_i_172_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_619 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_619_n_0 ,\CurrentSprite_reg[31]_i_619_n_1 ,\CurrentSprite_reg[31]_i_619_n_2 ,\CurrentSprite_reg[31]_i_619_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_619_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_845_n_0 ,\CurrentSprite[31]_i_846_n_0 ,\CurrentSprite[31]_i_847_n_0 ,\CurrentSprite[31]_i_848_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_62 
       (.CI(\CurrentSprite_reg[31]_i_173_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_62_CO_UNCONNECTED [3:1],CurrentSprite285_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_174_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_62_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_175_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_633 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_633_n_0 ,\CurrentSprite_reg[31]_i_633_n_1 ,\CurrentSprite_reg[31]_i_633_n_2 ,\CurrentSprite_reg[31]_i_633_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_633_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_849_n_0 ,\CurrentSprite[31]_i_850_n_0 ,\CurrentSprite[31]_i_851_n_0 ,\CurrentSprite[31]_i_852_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_647 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_647_n_0 ,\CurrentSprite_reg[31]_i_647_n_1 ,\CurrentSprite_reg[31]_i_647_n_2 ,\CurrentSprite_reg[31]_i_647_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_647_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_853_n_0 ,\CurrentSprite[31]_i_854_n_0 ,\CurrentSprite[31]_i_855_n_0 ,\CurrentSprite[31]_i_856_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_65 
       (.CI(\CurrentSprite_reg[31]_i_177_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_65_n_0 ,\CurrentSprite_reg[31]_i_65_n_1 ,\CurrentSprite_reg[31]_i_65_n_2 ,\CurrentSprite_reg[31]_i_65_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_65_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_178_n_0 ,\CurrentSprite[31]_i_179_n_0 ,\CurrentSprite[31]_i_180_n_0 ,\CurrentSprite[31]_i_181_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_661 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_661_n_0 ,\CurrentSprite_reg[31]_i_661_n_1 ,\CurrentSprite_reg[31]_i_661_n_2 ,\CurrentSprite_reg[31]_i_661_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_661_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_857_n_0 ,\CurrentSprite[31]_i_858_n_0 ,\CurrentSprite[31]_i_859_n_0 ,\CurrentSprite[31]_i_860_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_675 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_675_n_0 ,\CurrentSprite_reg[31]_i_675_n_1 ,\CurrentSprite_reg[31]_i_675_n_2 ,\CurrentSprite_reg[31]_i_675_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_675_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_861_n_0 ,\CurrentSprite[31]_i_862_n_0 ,\CurrentSprite[31]_i_863_n_0 ,\CurrentSprite[31]_i_864_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_68 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_68_n_0 ,\CurrentSprite_reg[31]_i_68_n_1 ,\CurrentSprite_reg[31]_i_68_n_2 ,\CurrentSprite_reg[31]_i_68_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_183_n_0 ,\CurrentSprite[31]_i_184_n_0 ,\CurrentSprite[31]_i_185_n_0 ,\CurrentSprite[31]_i_186_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_68_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_187_n_0 ,\CurrentSprite[31]_i_188_n_0 ,\CurrentSprite[31]_i_189_n_0 ,\CurrentSprite[31]_i_190_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_693 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_693_n_0 ,\CurrentSprite_reg[31]_i_693_n_1 ,\CurrentSprite_reg[31]_i_693_n_2 ,\CurrentSprite_reg[31]_i_693_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_693_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_865_n_0 ,\CurrentSprite[31]_i_866_n_0 ,\CurrentSprite[31]_i_867_n_0 ,\CurrentSprite[31]_i_868_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_707 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_707_n_0 ,\CurrentSprite_reg[31]_i_707_n_1 ,\CurrentSprite_reg[31]_i_707_n_2 ,\CurrentSprite_reg[31]_i_707_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_707_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_869_n_0 ,\CurrentSprite[31]_i_870_n_0 ,\CurrentSprite[31]_i_871_n_0 ,\CurrentSprite[31]_i_872_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_71 
       (.CI(\CurrentSprite_reg[31]_i_191_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_71_CO_UNCONNECTED [3:1],CurrentSprite258_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_192_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_71_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_193_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_72 
       (.CI(\CurrentSprite_reg[31]_i_194_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_72_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_72_n_2 ,\CurrentSprite_reg[31]_i_72_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_72_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_195_n_0 ,\CurrentSprite[31]_i_196_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_721 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_721_n_0 ,\CurrentSprite_reg[31]_i_721_n_1 ,\CurrentSprite_reg[31]_i_721_n_2 ,\CurrentSprite_reg[31]_i_721_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_721_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_873_n_0 ,\CurrentSprite[31]_i_874_n_0 ,\CurrentSprite[31]_i_875_n_0 ,\CurrentSprite[31]_i_876_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_727 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_727_n_0 ,\CurrentSprite_reg[31]_i_727_n_1 ,\CurrentSprite_reg[31]_i_727_n_2 ,\CurrentSprite_reg[31]_i_727_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_727_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_877_n_0 ,\CurrentSprite[31]_i_878_n_0 ,\CurrentSprite[31]_i_879_n_0 ,\CurrentSprite[31]_i_880_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_73 
       (.CI(\CurrentSprite_reg[31]_i_197_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_73_CO_UNCONNECTED [3:1],CurrentSprite249_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_198_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_73_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_199_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_74 
       (.CI(\CurrentSprite_reg[31]_i_200_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_74_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_74_n_2 ,\CurrentSprite_reg[31]_i_74_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_74_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_201_n_0 ,\CurrentSprite[31]_i_202_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_741 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_741_n_0 ,\CurrentSprite_reg[31]_i_741_n_1 ,\CurrentSprite_reg[31]_i_741_n_2 ,\CurrentSprite_reg[31]_i_741_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_741_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_881_n_0 ,\CurrentSprite[31]_i_882_n_0 ,\CurrentSprite[31]_i_883_n_0 ,\CurrentSprite[31]_i_884_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_75 
       (.CI(\CurrentSprite_reg[31]_i_203_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_75_CO_UNCONNECTED [3:1],CurrentSprite252_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_204_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_75_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_205_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_76 
       (.CI(\CurrentSprite_reg[31]_i_206_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_76_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_76_n_2 ,\CurrentSprite_reg[31]_i_76_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_76_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_207_n_0 ,\CurrentSprite[31]_i_208_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_763 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_763_n_0 ,\CurrentSprite_reg[31]_i_763_n_1 ,\CurrentSprite_reg[31]_i_763_n_2 ,\CurrentSprite_reg[31]_i_763_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_763_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_885_n_0 ,\CurrentSprite[31]_i_886_n_0 ,\CurrentSprite[31]_i_887_n_0 ,\CurrentSprite[31]_i_888_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_769 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_769_n_0 ,\CurrentSprite_reg[31]_i_769_n_1 ,\CurrentSprite_reg[31]_i_769_n_2 ,\CurrentSprite_reg[31]_i_769_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_769_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_889_n_0 ,\CurrentSprite[31]_i_890_n_0 ,\CurrentSprite[31]_i_891_n_0 ,\CurrentSprite[31]_i_892_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_77 
       (.CI(\CurrentSprite_reg[31]_i_209_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_77_CO_UNCONNECTED [3:1],CurrentSprite264_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_210_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_77_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_211_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_78 
       (.CI(\CurrentSprite_reg[31]_i_212_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_78_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_78_n_2 ,\CurrentSprite_reg[31]_i_78_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_78_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_213_n_0 ,\CurrentSprite[31]_i_214_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_791 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_791_n_0 ,\CurrentSprite_reg[31]_i_791_n_1 ,\CurrentSprite_reg[31]_i_791_n_2 ,\CurrentSprite_reg[31]_i_791_n_3 }),
        .CYINIT(1'b1),
        .DI({\xCounter_reg_n_0_[3] ,\xCounter_reg_n_0_[2] ,\xCounter_reg_n_0_[1] ,\xCounter_reg_n_0_[0] }),
        .O(\NLW_CurrentSprite_reg[31]_i_791_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_893_n_0 ,\CurrentSprite[31]_i_894_n_0 ,\CurrentSprite[31]_i_895_n_0 ,\CurrentSprite[31]_i_896_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_80 
       (.CI(\CurrentSprite_reg[31]_i_215_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_80_CO_UNCONNECTED [3:1],CurrentSprite267_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_216_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_80_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_217_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_81 
       (.CI(\CurrentSprite_reg[31]_i_218_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_81_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_81_n_2 ,\CurrentSprite_reg[31]_i_81_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_81_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_219_n_0 ,\CurrentSprite[31]_i_220_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_82 
       (.CI(\CurrentSprite_reg[31]_i_221_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_82_CO_UNCONNECTED [3:1],CurrentSprite288_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_222_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_82_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_223_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_83 
       (.CI(\CurrentSprite_reg[31]_i_224_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_83_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_83_n_2 ,\CurrentSprite_reg[31]_i_83_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_83_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_225_n_0 ,\CurrentSprite[31]_i_226_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_84 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_84_n_0 ,\CurrentSprite_reg[31]_i_84_n_1 ,\CurrentSprite_reg[31]_i_84_n_2 ,\CurrentSprite_reg[31]_i_84_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_227_n_0 ,\CurrentSprite[31]_i_228_n_0 ,\CurrentSprite[31]_i_229_n_0 ,\CurrentSprite[31]_i_230_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_84_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_231_n_0 ,\CurrentSprite[31]_i_232_n_0 ,\CurrentSprite[31]_i_233_n_0 ,\CurrentSprite[31]_i_234_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_87 
       (.CI(\CurrentSprite_reg[31]_i_235_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_87_n_0 ,\CurrentSprite_reg[31]_i_87_n_1 ,\CurrentSprite_reg[31]_i_87_n_2 ,\CurrentSprite_reg[31]_i_87_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_87_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_236_n_0 ,\CurrentSprite[31]_i_237_n_0 ,\CurrentSprite[31]_i_238_n_0 ,\CurrentSprite[31]_i_239_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_90 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_90_n_0 ,\CurrentSprite_reg[31]_i_90_n_1 ,\CurrentSprite_reg[31]_i_90_n_2 ,\CurrentSprite_reg[31]_i_90_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_241_n_0 ,\CurrentSprite[31]_i_242_n_0 ,\CurrentSprite[31]_i_243_n_0 ,\CurrentSprite[31]_i_244_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_90_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_245_n_0 ,\CurrentSprite[31]_i_246_n_0 ,\CurrentSprite[31]_i_247_n_0 ,\CurrentSprite[31]_i_248_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_93 
       (.CI(\CurrentSprite_reg[31]_i_249_n_0 ),
        .CO({\CurrentSprite_reg[31]_i_93_n_0 ,\CurrentSprite_reg[31]_i_93_n_1 ,\CurrentSprite_reg[31]_i_93_n_2 ,\CurrentSprite_reg[31]_i_93_n_3 }),
        .CYINIT(1'b0),
        .DI({\xCounter_reg_n_0_[7] ,\xCounter_reg_n_0_[6] ,\xCounter_reg_n_0_[5] ,\xCounter_reg_n_0_[4] }),
        .O(\NLW_CurrentSprite_reg[31]_i_93_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_250_n_0 ,\CurrentSprite[31]_i_251_n_0 ,\CurrentSprite[31]_i_252_n_0 ,\CurrentSprite[31]_i_253_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_96 
       (.CI(\CurrentSprite_reg[31]_i_255_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_96_CO_UNCONNECTED [3:1],CurrentSprite276_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_256_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_96_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\CurrentSprite[31]_i_257_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_97 
       (.CI(\CurrentSprite_reg[31]_i_258_n_0 ),
        .CO({\NLW_CurrentSprite_reg[31]_i_97_CO_UNCONNECTED [3:2],\CurrentSprite_reg[31]_i_97_n_2 ,\CurrentSprite_reg[31]_i_97_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\xCounter_reg_n_0_[9] ,\xCounter_reg_n_0_[8] }),
        .O(\NLW_CurrentSprite_reg[31]_i_97_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\CurrentSprite[31]_i_259_n_0 ,\CurrentSprite[31]_i_260_n_0 }));
  CARRY4 \CurrentSprite_reg[31]_i_98 
       (.CI(1'b0),
        .CO({\CurrentSprite_reg[31]_i_98_n_0 ,\CurrentSprite_reg[31]_i_98_n_1 ,\CurrentSprite_reg[31]_i_98_n_2 ,\CurrentSprite_reg[31]_i_98_n_3 }),
        .CYINIT(1'b1),
        .DI({\CurrentSprite[31]_i_261_n_0 ,\CurrentSprite[31]_i_262_n_0 ,\CurrentSprite[31]_i_263_n_0 ,\CurrentSprite[31]_i_264_n_0 }),
        .O(\NLW_CurrentSprite_reg[31]_i_98_O_UNCONNECTED [3:0]),
        .S({\CurrentSprite[31]_i_265_n_0 ,\CurrentSprite[31]_i_266_n_0 ,\CurrentSprite[31]_i_267_n_0 ,\CurrentSprite[31]_i_268_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[3] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[3]_i_1_n_0 ),
        .Q(SpriteOffset0[9]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[4] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[4]_i_1_n_0 ),
        .Q(SpriteOffset0[10]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[5] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[5]_i_1_n_0 ),
        .Q(SpriteOffset0[11]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[6] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[6]_i_1_n_0 ),
        .Q(SpriteOffset0[12]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[7] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[7]_i_1_n_0 ),
        .Q(SpriteOffset0[13]),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[8] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[8]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[8] ),
        .S(CurrentSprite));
  FDSE #(
    .INIT(1'b0)) 
    \CurrentSprite_reg[9] 
       (.C(clk),
        .CE(isBufferReady),
        .D(\CurrentSprite[9]_i_1_n_0 ),
        .Q(\CurrentSprite_reg_n_0_[9] ),
        .S(CurrentSprite));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \NextScanline[0]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[0] ),
        .O(\NextScanline[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \NextScanline[1]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[0] ),
        .I1(\ScanLineCounter_reg_n_0_[1] ),
        .O(\NextScanline[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \NextScanline[2]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[0] ),
        .I1(\ScanLineCounter_reg_n_0_[1] ),
        .I2(\ScanLineCounter_reg_n_0_[2] ),
        .O(\NextScanline[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \NextScanline[3]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[1] ),
        .I1(\ScanLineCounter_reg_n_0_[0] ),
        .I2(\ScanLineCounter_reg_n_0_[2] ),
        .I3(\ScanLineCounter_reg_n_0_[3] ),
        .O(\NextScanline[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \NextScanline[4]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[2] ),
        .I1(\ScanLineCounter_reg_n_0_[0] ),
        .I2(\ScanLineCounter_reg_n_0_[1] ),
        .I3(\ScanLineCounter_reg_n_0_[3] ),
        .I4(\ScanLineCounter_reg_n_0_[4] ),
        .O(\NextScanline[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \NextScanline[5]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[3] ),
        .I1(\ScanLineCounter_reg_n_0_[1] ),
        .I2(\ScanLineCounter_reg_n_0_[0] ),
        .I3(\ScanLineCounter_reg_n_0_[2] ),
        .I4(\ScanLineCounter_reg_n_0_[4] ),
        .I5(\ScanLineCounter_reg_n_0_[5] ),
        .O(\NextScanline[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \NextScanline[6]_i_1 
       (.I0(\NextScanline[8]_i_4_n_0 ),
        .I1(\ScanLineCounter_reg_n_0_[6] ),
        .O(\NextScanline[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \NextScanline[7]_i_1 
       (.I0(\NextScanline[8]_i_4_n_0 ),
        .I1(\ScanLineCounter_reg_n_0_[6] ),
        .I2(\ScanLineCounter_reg_n_0_[7] ),
        .O(\NextScanline[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \NextScanline[8]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[0] ),
        .I1(\ScanLineCounter_reg_n_0_[5] ),
        .I2(\ScanLineCounter_reg_n_0_[7] ),
        .I3(\ScanLineCounter_reg_n_0_[8] ),
        .I4(\NextScanline[8]_i_3_n_0 ),
        .I5(\ScanLineCounter_reg_n_0_[6] ),
        .O(\NextScanline[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \NextScanline[8]_i_2 
       (.I0(\ScanLineCounter_reg_n_0_[6] ),
        .I1(\NextScanline[8]_i_4_n_0 ),
        .I2(\ScanLineCounter_reg_n_0_[7] ),
        .I3(\ScanLineCounter_reg_n_0_[8] ),
        .O(\NextScanline[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \NextScanline[8]_i_3 
       (.I0(\ScanLineCounter_reg_n_0_[3] ),
        .I1(\ScanLineCounter_reg_n_0_[4] ),
        .I2(\ScanLineCounter_reg_n_0_[1] ),
        .I3(\ScanLineCounter_reg_n_0_[2] ),
        .O(\NextScanline[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \NextScanline[8]_i_4 
       (.I0(\ScanLineCounter_reg_n_0_[5] ),
        .I1(\ScanLineCounter_reg_n_0_[3] ),
        .I2(\ScanLineCounter_reg_n_0_[1] ),
        .I3(\ScanLineCounter_reg_n_0_[0] ),
        .I4(\ScanLineCounter_reg_n_0_[2] ),
        .I5(\ScanLineCounter_reg_n_0_[4] ),
        .O(\NextScanline[8]_i_4_n_0 ));
  FDRE \NextScanline_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[0]_i_1_n_0 ),
        .Q(NextScanline[0]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[1]_i_1_n_0 ),
        .Q(NextScanline[1]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[2]_i_1_n_0 ),
        .Q(NextScanline[2]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[3]_i_1_n_0 ),
        .Q(NextScanline[3]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[4]_i_1_n_0 ),
        .Q(NextScanline[4]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[5]_i_1_n_0 ),
        .Q(NextScanline[5]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[6]_i_1_n_0 ),
        .Q(NextScanline[6]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[7]_i_1_n_0 ),
        .Q(NextScanline[7]),
        .R(\NextScanline[8]_i_1_n_0 ));
  FDRE \NextScanline_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\NextScanline[8]_i_2_n_0 ),
        .Q(NextScanline[8]),
        .R(\NextScanline[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \SOAMAddressCounter[0]_i_1 
       (.I0(\SOAMAddress[0] ),
        .O(\SOAMAddressCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \SOAMAddressCounter[1]_i_1 
       (.I0(\SOAMAddress[1] ),
        .I1(\SOAMAddress[0] ),
        .O(\SOAMAddressCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \SOAMAddressCounter[2]_i_1 
       (.I0(\SOAMAddress[2] ),
        .I1(\SOAMAddress[0] ),
        .I2(\SOAMAddress[1] ),
        .O(\SOAMAddressCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \SOAMAddressCounter[3]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[2] ),
        .I2(\SOAMAddress[1] ),
        .I3(\SOAMAddress[0] ),
        .O(\SOAMAddressCounter[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \SOAMAddressCounter[4]_i_1 
       (.I0(isBufferReady),
        .I1(endLineBit),
        .O(\SOAMAddressCounter[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \SOAMAddressCounter[4]_i_2 
       (.I0(isBufferReady),
        .I1(\SOAMAddressCounter[4]_i_4_n_0 ),
        .I2(endLineBit),
        .O(\SOAMAddressCounter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \SOAMAddressCounter[4]_i_3 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[2] ),
        .O(\SOAMAddressCounter[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \SOAMAddressCounter[4]_i_4 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[4] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[2] ),
        .O(\SOAMAddressCounter[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SOAMAddressCounter_reg[0] 
       (.C(clk),
        .CE(\SOAMAddressCounter[4]_i_2_n_0 ),
        .D(\SOAMAddressCounter[0]_i_1_n_0 ),
        .Q(\SOAMAddress[0] ),
        .R(\SOAMAddressCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SOAMAddressCounter_reg[1] 
       (.C(clk),
        .CE(\SOAMAddressCounter[4]_i_2_n_0 ),
        .D(\SOAMAddressCounter[1]_i_1_n_0 ),
        .Q(\SOAMAddress[1] ),
        .R(\SOAMAddressCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SOAMAddressCounter_reg[2] 
       (.C(clk),
        .CE(\SOAMAddressCounter[4]_i_2_n_0 ),
        .D(\SOAMAddressCounter[2]_i_1_n_0 ),
        .Q(\SOAMAddress[2] ),
        .R(\SOAMAddressCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SOAMAddressCounter_reg[3] 
       (.C(clk),
        .CE(\SOAMAddressCounter[4]_i_2_n_0 ),
        .D(\SOAMAddressCounter[3]_i_1_n_0 ),
        .Q(\SOAMAddress[3] ),
        .R(\SOAMAddressCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SOAMAddressCounter_reg[4] 
       (.C(clk),
        .CE(\SOAMAddressCounter[4]_i_2_n_0 ),
        .D(\SOAMAddressCounter[4]_i_3_n_0 ),
        .Q(\SOAMAddress[4] ),
        .R(\SOAMAddressCounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \SOAMBuffer[0][31]_i_1 
       (.I0(\SOAMAddress[2] ),
        .I1(\SOAMAddress[4] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[3] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[0][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[10][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[0] ),
        .I2(\SOAMAddress[3] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[10][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[11][31]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[4] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[2] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[11][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[12][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[1] ),
        .I2(\SOAMAddress[3] ),
        .I3(\SOAMAddress[0] ),
        .I4(\SOAMAddress[2] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[12][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[13][31]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[4] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[13][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[14][31]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[4] ),
        .I2(\SOAMAddress[2] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[0] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[14][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \SOAMBuffer[15][31]_i_1 
       (.I0(\SOAMAddress[2] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[4] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[15][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \SOAMBuffer[16][31]_i_1 
       (.I0(\SOAMAddress[0] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[1] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[4] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[16][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[17][31]_i_1 
       (.I0(\SOAMAddress[1] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[4] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[0] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[17][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[18][31]_i_1 
       (.I0(\SOAMAddress[0] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[4] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[18][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[19][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[2] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[3] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[19][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \SOAMBuffer[1][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[1] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[0] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[1][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[20][31]_i_1 
       (.I0(\SOAMAddress[1] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[4] ),
        .I3(\SOAMAddress[0] ),
        .I4(\SOAMAddress[2] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[20][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[21][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[1] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[3] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[21][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[22][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[0] ),
        .I2(\SOAMAddress[2] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[3] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[22][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \SOAMBuffer[23][31]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[2] ),
        .I2(\SOAMAddress[4] ),
        .I3(\SOAMAddress[0] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[23][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[24][31]_i_1 
       (.I0(\SOAMAddress[0] ),
        .I1(\SOAMAddress[1] ),
        .I2(\SOAMAddress[3] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[4] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[24][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[25][31]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[1] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[4] ),
        .I4(\SOAMAddress[2] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[25][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[26][31]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[0] ),
        .I2(\SOAMAddress[4] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[2] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[26][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \SOAMBuffer[27][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[2] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[27][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[28][31]_i_1 
       (.I0(\SOAMAddress[3] ),
        .I1(\SOAMAddress[0] ),
        .I2(\SOAMAddress[4] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[28][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \SOAMBuffer[29][31]_i_1 
       (.I0(\SOAMAddress[2] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[4] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[29][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \SOAMBuffer[2][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[2][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \SOAMBuffer[30][31]_i_1 
       (.I0(\SOAMAddress[2] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[4] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[0] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[30][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \SOAMBuffer[31][31]_i_1 
       (.I0(\SOAMAddress[2] ),
        .I1(\SOAMAddress[4] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[3] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[31][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[3][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[1] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[0] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \SOAMBuffer[4][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[1] ),
        .I3(\SOAMAddress[0] ),
        .I4(\SOAMAddress[2] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[4][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[5][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[2] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[0] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[5][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[6][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[3] ),
        .I2(\SOAMAddress[2] ),
        .I3(\SOAMAddress[0] ),
        .I4(\SOAMAddress[1] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[6][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \SOAMBuffer[7][31]_i_1 
       (.I0(\SOAMAddress[2] ),
        .I1(\SOAMAddress[4] ),
        .I2(\SOAMAddress[0] ),
        .I3(\SOAMAddress[1] ),
        .I4(\SOAMAddress[3] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[7][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \SOAMBuffer[8][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[0] ),
        .I2(\SOAMAddress[1] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[3] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[8][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \SOAMBuffer[9][31]_i_1 
       (.I0(\SOAMAddress[4] ),
        .I1(\SOAMAddress[1] ),
        .I2(\SOAMAddress[3] ),
        .I3(\SOAMAddress[2] ),
        .I4(\SOAMAddress[0] ),
        .I5(isBufferReady),
        .O(\SOAMBuffer[9][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][0] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[0]_30 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][10] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[0]_30 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][11] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[0]_30 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][12] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[0]_30 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][13] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[0]_30 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][14] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[0]_30 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][15] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[0]_30 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][16] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[0]_30 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][17] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[0]_30 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][18] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[0]_30 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][19] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[0]_30 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][1] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[0]_30 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][20] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[0]_30 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][21] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[0]_30 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][22] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[0]_30 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][23] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[0]_30 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][24] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[0]_30 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][25] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[0]_30 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][26] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[0]_30 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][27] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[0]_30 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][28] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[0]_30 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][29] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[0]_30 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][2] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[0]_30 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][30] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[0]_30 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][31] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[0]_30 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][3] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[0]_30 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][4] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[0]_30 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][5] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[0]_30 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][6] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[0]_30 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][7] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[0]_30 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][8] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[0]_30 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[0][9] 
       (.C(clk),
        .CE(\SOAMBuffer[0][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[0]_30 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][0] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[10]_20 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][10] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[10]_20 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][11] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[10]_20 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][12] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[10]_20 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][13] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[10]_20 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][14] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[10]_20 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][15] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[10]_20 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][16] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[10]_20 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][17] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[10]_20 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][18] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[10]_20 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][19] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[10]_20 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][1] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[10]_20 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][20] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[10]_20 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][21] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[10]_20 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][22] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[10]_20 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][23] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[10]_20 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][24] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[10]_20 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][25] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[10]_20 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][26] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[10]_20 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][27] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[10]_20 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][28] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[10]_20 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][29] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[10]_20 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][2] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[10]_20 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][30] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[10]_20 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][31] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[10]_20 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][3] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[10]_20 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][4] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[10]_20 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][5] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[10]_20 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][6] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[10]_20 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][7] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[10]_20 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][8] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[10]_20 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[10][9] 
       (.C(clk),
        .CE(\SOAMBuffer[10][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[10]_20 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][0] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[11]_19 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][10] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[11]_19 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][11] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[11]_19 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][12] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[11]_19 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][13] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[11]_19 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][14] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[11]_19 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][15] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[11]_19 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][16] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[11]_19 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][17] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[11]_19 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][18] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[11]_19 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][19] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[11]_19 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][1] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[11]_19 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][20] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[11]_19 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][21] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[11]_19 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][22] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[11]_19 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][23] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[11]_19 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][24] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[11]_19 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][25] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[11]_19 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][26] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[11]_19 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][27] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[11]_19 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][28] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[11]_19 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][29] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[11]_19 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][2] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[11]_19 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][30] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[11]_19 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][31] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[11]_19 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][3] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[11]_19 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][4] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[11]_19 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][5] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[11]_19 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][6] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[11]_19 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][7] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[11]_19 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][8] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[11]_19 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[11][9] 
       (.C(clk),
        .CE(\SOAMBuffer[11][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[11]_19 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][0] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[12]_18 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][10] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[12]_18 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][11] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[12]_18 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][12] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[12]_18 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][13] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[12]_18 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][14] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[12]_18 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][15] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[12]_18 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][16] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[12]_18 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][17] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[12]_18 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][18] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[12]_18 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][19] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[12]_18 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][1] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[12]_18 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][20] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[12]_18 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][21] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[12]_18 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][22] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[12]_18 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][23] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[12]_18 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][24] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[12]_18 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][25] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[12]_18 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][26] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[12]_18 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][27] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[12]_18 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][28] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[12]_18 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][29] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[12]_18 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][2] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[12]_18 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][30] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[12]_18 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][31] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[12]_18 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][3] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[12]_18 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][4] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[12]_18 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][5] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[12]_18 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][6] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[12]_18 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][7] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[12]_18 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][8] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[12]_18 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[12][9] 
       (.C(clk),
        .CE(\SOAMBuffer[12][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[12]_18 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][0] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[13]_17 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][10] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[13]_17 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][11] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[13]_17 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][12] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[13]_17 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][13] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[13]_17 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][14] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[13]_17 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][15] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[13]_17 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][16] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[13]_17 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][17] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[13]_17 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][18] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[13]_17 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][19] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[13]_17 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][1] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[13]_17 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][20] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[13]_17 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][21] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[13]_17 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][22] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[13]_17 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][23] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[13]_17 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][24] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[13]_17 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][25] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[13]_17 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][26] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[13]_17 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][27] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[13]_17 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][28] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[13]_17 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][29] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[13]_17 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][2] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[13]_17 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][30] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[13]_17 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][31] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[13]_17 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][3] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[13]_17 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][4] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[13]_17 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][5] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[13]_17 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][6] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[13]_17 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][7] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[13]_17 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][8] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[13]_17 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[13][9] 
       (.C(clk),
        .CE(\SOAMBuffer[13][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[13]_17 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][0] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[14]_16 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][10] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[14]_16 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][11] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[14]_16 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][12] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[14]_16 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][13] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[14]_16 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][14] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[14]_16 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][15] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[14]_16 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][16] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[14]_16 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][17] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[14]_16 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][18] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[14]_16 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][19] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[14]_16 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][1] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[14]_16 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][20] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[14]_16 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][21] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[14]_16 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][22] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[14]_16 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][23] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[14]_16 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][24] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[14]_16 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][25] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[14]_16 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][26] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[14]_16 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][27] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[14]_16 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][28] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[14]_16 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][29] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[14]_16 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][2] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[14]_16 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][30] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[14]_16 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][31] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[14]_16 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][3] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[14]_16 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][4] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[14]_16 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][5] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[14]_16 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][6] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[14]_16 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][7] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[14]_16 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][8] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[14]_16 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[14][9] 
       (.C(clk),
        .CE(\SOAMBuffer[14][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[14]_16 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][0] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[15]_15 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][10] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[15]_15 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][11] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[15]_15 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][12] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[15]_15 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][13] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[15]_15 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][14] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[15]_15 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][15] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[15]_15 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][16] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[15]_15 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][17] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[15]_15 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][18] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[15]_15 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][19] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[15]_15 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][1] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[15]_15 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][20] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[15]_15 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][21] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[15]_15 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][22] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[15]_15 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][23] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[15]_15 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][24] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[15]_15 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][25] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[15]_15 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][26] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[15]_15 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][27] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[15]_15 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][28] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[15]_15 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][29] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[15]_15 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][2] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[15]_15 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][30] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[15]_15 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][31] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[15]_15 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][3] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[15]_15 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][4] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[15]_15 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][5] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[15]_15 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][6] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[15]_15 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][7] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[15]_15 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][8] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[15]_15 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[15][9] 
       (.C(clk),
        .CE(\SOAMBuffer[15][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[15]_15 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][0] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[16]_14 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][10] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[16]_14 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][11] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[16]_14 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][12] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[16]_14 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][13] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[16]_14 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][14] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[16]_14 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][15] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[16]_14 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][16] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[16]_14 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][17] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[16]_14 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][18] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[16]_14 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][19] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[16]_14 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][1] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[16]_14 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][20] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[16]_14 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][21] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[16]_14 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][22] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[16]_14 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][23] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[16]_14 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][24] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[16]_14 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][25] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[16]_14 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][26] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[16]_14 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][27] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[16]_14 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][28] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[16]_14 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][29] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[16]_14 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][2] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[16]_14 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][30] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[16]_14 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][31] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[16]_14 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][3] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[16]_14 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][4] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[16]_14 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][5] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[16]_14 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][6] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[16]_14 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][7] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[16]_14 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][8] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[16]_14 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[16][9] 
       (.C(clk),
        .CE(\SOAMBuffer[16][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[16]_14 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][0] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[17]_13 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][10] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[17]_13 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][11] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[17]_13 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][12] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[17]_13 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][13] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[17]_13 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][14] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[17]_13 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][15] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[17]_13 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][16] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[17]_13 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][17] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[17]_13 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][18] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[17]_13 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][19] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[17]_13 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][1] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[17]_13 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][20] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[17]_13 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][21] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[17]_13 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][22] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[17]_13 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][23] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[17]_13 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][24] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[17]_13 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][25] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[17]_13 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][26] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[17]_13 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][27] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[17]_13 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][28] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[17]_13 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][29] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[17]_13 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][2] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[17]_13 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][30] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[17]_13 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][31] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[17]_13 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][3] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[17]_13 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][4] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[17]_13 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][5] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[17]_13 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][6] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[17]_13 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][7] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[17]_13 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][8] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[17]_13 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[17][9] 
       (.C(clk),
        .CE(\SOAMBuffer[17][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[17]_13 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][0] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[18]_12 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][10] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[18]_12 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][11] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[18]_12 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][12] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[18]_12 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][13] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[18]_12 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][14] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[18]_12 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][15] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[18]_12 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][16] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[18]_12 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][17] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[18]_12 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][18] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[18]_12 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][19] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[18]_12 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][1] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[18]_12 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][20] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[18]_12 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][21] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[18]_12 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][22] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[18]_12 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][23] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[18]_12 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][24] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[18]_12 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][25] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[18]_12 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][26] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[18]_12 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][27] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[18]_12 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][28] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[18]_12 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][29] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[18]_12 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][2] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[18]_12 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][30] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[18]_12 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][31] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[18]_12 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][3] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[18]_12 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][4] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[18]_12 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][5] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[18]_12 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][6] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[18]_12 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][7] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[18]_12 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][8] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[18]_12 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[18][9] 
       (.C(clk),
        .CE(\SOAMBuffer[18][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[18]_12 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][0] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[19]_11 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][10] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[19]_11 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][11] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[19]_11 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][12] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[19]_11 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][13] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[19]_11 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][14] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[19]_11 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][15] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[19]_11 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][16] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[19]_11 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][17] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[19]_11 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][18] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[19]_11 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][19] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[19]_11 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][1] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[19]_11 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][20] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[19]_11 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][21] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[19]_11 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][22] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[19]_11 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][23] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[19]_11 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][24] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[19]_11 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][25] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[19]_11 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][26] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[19]_11 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][27] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[19]_11 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][28] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[19]_11 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][29] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[19]_11 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][2] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[19]_11 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][30] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[19]_11 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][31] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[19]_11 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][3] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[19]_11 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][4] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[19]_11 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][5] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[19]_11 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][6] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[19]_11 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][7] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[19]_11 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][8] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[19]_11 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[19][9] 
       (.C(clk),
        .CE(\SOAMBuffer[19][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[19]_11 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][0] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[1]_29 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][10] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[1]_29 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][11] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[1]_29 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][12] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[1]_29 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][13] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[1]_29 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][14] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[1]_29 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][15] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[1]_29 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][16] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[1]_29 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][17] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[1]_29 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][18] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[1]_29 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][19] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[1]_29 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][1] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[1]_29 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][20] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[1]_29 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][21] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[1]_29 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][22] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[1]_29 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][23] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[1]_29 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][24] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[1]_29 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][25] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[1]_29 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][26] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[1]_29 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][27] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[1]_29 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][28] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[1]_29 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][29] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[1]_29 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][2] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[1]_29 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][30] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[1]_29 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][31] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[1]_29 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][3] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[1]_29 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][4] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[1]_29 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][5] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[1]_29 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][6] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[1]_29 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][7] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[1]_29 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][8] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[1]_29 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[1][9] 
       (.C(clk),
        .CE(\SOAMBuffer[1][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[1]_29 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][0] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[20]_10 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][10] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[20]_10 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][11] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[20]_10 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][12] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[20]_10 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][13] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[20]_10 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][14] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[20]_10 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][15] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[20]_10 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][16] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[20]_10 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][17] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[20]_10 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][18] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[20]_10 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][19] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[20]_10 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][1] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[20]_10 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][20] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[20]_10 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][21] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[20]_10 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][22] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[20]_10 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][23] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[20]_10 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][24] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[20]_10 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][25] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[20]_10 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][26] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[20]_10 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][27] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[20]_10 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][28] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[20]_10 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][29] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[20]_10 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][2] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[20]_10 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][30] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[20]_10 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][31] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[20]_10 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][3] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[20]_10 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][4] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[20]_10 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][5] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[20]_10 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][6] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[20]_10 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][7] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[20]_10 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][8] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[20]_10 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[20][9] 
       (.C(clk),
        .CE(\SOAMBuffer[20][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[20]_10 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][0] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[21]_9 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][10] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[21]_9 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][11] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[21]_9 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][12] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[21]_9 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][13] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[21]_9 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][14] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[21]_9 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][15] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[21]_9 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][16] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[21]_9 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][17] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[21]_9 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][18] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[21]_9 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][19] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[21]_9 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][1] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[21]_9 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][20] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[21]_9 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][21] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[21]_9 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][22] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[21]_9 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][23] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[21]_9 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][24] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[21]_9 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][25] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[21]_9 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][26] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[21]_9 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][27] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[21]_9 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][28] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[21]_9 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][29] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[21]_9 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][2] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[21]_9 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][30] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[21]_9 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][31] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[21]_9 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][3] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[21]_9 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][4] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[21]_9 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][5] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[21]_9 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][6] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[21]_9 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][7] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[21]_9 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][8] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[21]_9 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[21][9] 
       (.C(clk),
        .CE(\SOAMBuffer[21][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[21]_9 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][0] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[22]_8 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][10] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[22]_8 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][11] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[22]_8 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][12] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[22]_8 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][13] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[22]_8 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][14] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[22]_8 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][15] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[22]_8 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][16] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[22]_8 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][17] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[22]_8 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][18] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[22]_8 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][19] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[22]_8 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][1] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[22]_8 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][20] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[22]_8 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][21] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[22]_8 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][22] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[22]_8 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][23] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[22]_8 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][24] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[22]_8 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][25] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[22]_8 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][26] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[22]_8 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][27] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[22]_8 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][28] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[22]_8 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][29] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[22]_8 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][2] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[22]_8 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][30] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[22]_8 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][31] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[22]_8 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][3] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[22]_8 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][4] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[22]_8 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][5] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[22]_8 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][6] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[22]_8 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][7] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[22]_8 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][8] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[22]_8 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[22][9] 
       (.C(clk),
        .CE(\SOAMBuffer[22][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[22]_8 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][0] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[23]_7 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][10] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[23]_7 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][11] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[23]_7 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][12] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[23]_7 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][13] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[23]_7 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][14] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[23]_7 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][15] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[23]_7 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][16] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[23]_7 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][17] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[23]_7 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][18] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[23]_7 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][19] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[23]_7 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][1] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[23]_7 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][20] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[23]_7 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][21] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[23]_7 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][22] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[23]_7 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][23] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[23]_7 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][24] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[23]_7 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][25] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[23]_7 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][26] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[23]_7 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][27] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[23]_7 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][28] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[23]_7 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][29] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[23]_7 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][2] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[23]_7 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][30] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[23]_7 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][31] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[23]_7 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][3] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[23]_7 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][4] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[23]_7 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][5] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[23]_7 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][6] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[23]_7 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][7] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[23]_7 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][8] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[23]_7 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[23][9] 
       (.C(clk),
        .CE(\SOAMBuffer[23][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[23]_7 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][0] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[24]_6 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][10] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[24]_6 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][11] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[24]_6 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][12] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[24]_6 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][13] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[24]_6 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][14] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[24]_6 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][15] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[24]_6 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][16] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[24]_6 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][17] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[24]_6 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][18] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[24]_6 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][19] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[24]_6 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][1] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[24]_6 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][20] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[24]_6 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][21] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[24]_6 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][22] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[24]_6 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][23] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[24]_6 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][24] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[24]_6 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][25] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[24]_6 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][26] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[24]_6 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][27] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[24]_6 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][28] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[24]_6 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][29] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[24]_6 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][2] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[24]_6 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][30] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[24]_6 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][31] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[24]_6 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][3] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[24]_6 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][4] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[24]_6 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][5] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[24]_6 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][6] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[24]_6 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][7] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[24]_6 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][8] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[24]_6 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[24][9] 
       (.C(clk),
        .CE(\SOAMBuffer[24][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[24]_6 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][0] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[25]_5 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][10] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[25]_5 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][11] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[25]_5 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][12] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[25]_5 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][13] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[25]_5 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][14] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[25]_5 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][15] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[25]_5 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][16] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[25]_5 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][17] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[25]_5 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][18] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[25]_5 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][19] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[25]_5 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][1] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[25]_5 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][20] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[25]_5 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][21] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[25]_5 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][22] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[25]_5 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][23] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[25]_5 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][24] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[25]_5 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][25] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[25]_5 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][26] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[25]_5 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][27] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[25]_5 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][28] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[25]_5 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][29] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[25]_5 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][2] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[25]_5 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][30] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[25]_5 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][31] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[25]_5 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][3] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[25]_5 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][4] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[25]_5 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][5] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[25]_5 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][6] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[25]_5 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][7] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[25]_5 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][8] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[25]_5 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[25][9] 
       (.C(clk),
        .CE(\SOAMBuffer[25][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[25]_5 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][0] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[26]_4 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][10] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[26]_4 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][11] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[26]_4 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][12] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[26]_4 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][13] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[26]_4 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][14] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[26]_4 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][15] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[26]_4 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][16] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[26]_4 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][17] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[26]_4 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][18] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[26]_4 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][19] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[26]_4 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][1] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[26]_4 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][20] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[26]_4 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][21] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[26]_4 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][22] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[26]_4 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][23] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[26]_4 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][24] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[26]_4 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][25] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[26]_4 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][26] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[26]_4 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][27] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[26]_4 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][28] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[26]_4 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][29] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[26]_4 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][2] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[26]_4 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][30] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[26]_4 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][31] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[26]_4 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][3] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[26]_4 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][4] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[26]_4 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][5] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[26]_4 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][6] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[26]_4 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][7] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[26]_4 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][8] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[26]_4 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[26][9] 
       (.C(clk),
        .CE(\SOAMBuffer[26][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[26]_4 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][0] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[27]_3 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][10] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[27]_3 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][11] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[27]_3 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][12] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[27]_3 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][13] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[27]_3 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][14] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[27]_3 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][15] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[27]_3 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][16] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[27]_3 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][17] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[27]_3 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][18] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[27]_3 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][19] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[27]_3 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][1] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[27]_3 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][20] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[27]_3 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][21] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[27]_3 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][22] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[27]_3 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][23] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[27]_3 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][24] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[27]_3 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][25] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[27]_3 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][26] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[27]_3 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][27] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[27]_3 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][28] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[27]_3 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][29] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[27]_3 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][2] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[27]_3 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][30] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[27]_3 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][31] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[27]_3 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][3] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[27]_3 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][4] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[27]_3 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][5] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[27]_3 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][6] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[27]_3 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][7] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[27]_3 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][8] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[27]_3 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[27][9] 
       (.C(clk),
        .CE(\SOAMBuffer[27][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[27]_3 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][0] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[28]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][10] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[28]_2 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][11] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[28]_2 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][12] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[28]_2 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][13] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[28]_2 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][14] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[28]_2 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][15] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[28]_2 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][16] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[28]_2 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][17] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[28]_2 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][18] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[28]_2 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][19] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[28]_2 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][1] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[28]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][20] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[28]_2 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][21] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[28]_2 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][22] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[28]_2 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][23] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[28]_2 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][24] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[28]_2 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][25] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[28]_2 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][26] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[28]_2 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][27] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[28]_2 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][28] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[28]_2 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][29] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[28]_2 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][2] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[28]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][30] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[28]_2 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][31] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[28]_2 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][3] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[28]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][4] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[28]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][5] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[28]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][6] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[28]_2 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][7] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[28]_2 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][8] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[28]_2 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[28][9] 
       (.C(clk),
        .CE(\SOAMBuffer[28][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[28]_2 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][0] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[29]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][10] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[29]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][11] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[29]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][12] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[29]_1 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][13] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[29]_1 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][14] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[29]_1 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][15] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[29]_1 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][16] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[29]_1 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][17] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[29]_1 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][18] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[29]_1 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][19] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[29]_1 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][1] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[29]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][20] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[29]_1 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][21] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[29]_1 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][22] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[29]_1 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][23] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[29]_1 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][24] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[29]_1 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][25] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[29]_1 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][26] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[29]_1 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][27] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[29]_1 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][28] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[29]_1 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][29] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[29]_1 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][2] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[29]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][30] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[29]_1 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][31] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[29]_1 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][3] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[29]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][4] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[29]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][5] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[29]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][6] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[29]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][7] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[29]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][8] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[29]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[29][9] 
       (.C(clk),
        .CE(\SOAMBuffer[29][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[29]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][0] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[2]_28 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][10] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[2]_28 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][11] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[2]_28 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][12] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[2]_28 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][13] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[2]_28 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][14] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[2]_28 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][15] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[2]_28 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][16] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[2]_28 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][17] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[2]_28 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][18] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[2]_28 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][19] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[2]_28 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][1] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[2]_28 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][20] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[2]_28 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][21] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[2]_28 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][22] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[2]_28 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][23] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[2]_28 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][24] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[2]_28 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][25] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[2]_28 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][26] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[2]_28 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][27] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[2]_28 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][28] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[2]_28 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][29] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[2]_28 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][2] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[2]_28 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][30] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[2]_28 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][31] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[2]_28 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][3] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[2]_28 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][4] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[2]_28 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][5] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[2]_28 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][6] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[2]_28 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][7] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[2]_28 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][8] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[2]_28 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[2][9] 
       (.C(clk),
        .CE(\SOAMBuffer[2][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[2]_28 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][0] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[30]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][10] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[30]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][11] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[30]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][12] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[30]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][13] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[30]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][14] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[30]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][15] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[30]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][16] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[30]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][17] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[30]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][18] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[30]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][19] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[30]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][1] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[30]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][20] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[30]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][21] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[30]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][22] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[30]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][23] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[30]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][24] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[30]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][25] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[30]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][26] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[30]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][27] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[30]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][28] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[30]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][29] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[30]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][2] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[30]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][30] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[30]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][31] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[30]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][3] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[30]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][4] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[30]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][5] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[30]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][6] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[30]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][7] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[30]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][8] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[30]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[30][9] 
       (.C(clk),
        .CE(\SOAMBuffer[30][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[30]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][0] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg_n_0_[31][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][10] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg_n_0_[31][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][11] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg_n_0_[31][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][12] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg_n_0_[31][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][13] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg_n_0_[31][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][14] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(L[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][15] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(L[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][16] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(L[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][17] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(L[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][18] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(L[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][19] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(L[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][1] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg_n_0_[31][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][20] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(L[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][21] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(L[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][22] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(L[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][23] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg_n_0_[31][23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][24] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg_n_0_[31][24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][25] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg_n_0_[31][25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][26] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg_n_0_[31][26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][27] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg_n_0_[31][27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][28] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg_n_0_[31][28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][29] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg_n_0_[31][29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][2] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg_n_0_[31][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][30] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg_n_0_[31][30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][31] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg_n_0_[31][31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][3] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg_n_0_[31][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][4] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg_n_0_[31][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][5] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg_n_0_[31][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][6] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg_n_0_[31][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][7] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg_n_0_[31][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][8] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg_n_0_[31][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[31][9] 
       (.C(clk),
        .CE(\SOAMBuffer[31][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg_n_0_[31][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][0] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[3]_27 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][10] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[3]_27 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][11] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[3]_27 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][12] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[3]_27 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][13] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[3]_27 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][14] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[3]_27 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][15] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[3]_27 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][16] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[3]_27 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][17] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[3]_27 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][18] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[3]_27 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][19] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[3]_27 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][1] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[3]_27 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][20] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[3]_27 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][21] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[3]_27 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][22] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[3]_27 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][23] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[3]_27 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][24] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[3]_27 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][25] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[3]_27 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][26] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[3]_27 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][27] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[3]_27 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][28] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[3]_27 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][29] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[3]_27 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][2] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[3]_27 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][30] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[3]_27 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][31] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[3]_27 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][3] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[3]_27 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][4] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[3]_27 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][5] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[3]_27 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][6] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[3]_27 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][7] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[3]_27 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][8] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[3]_27 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[3][9] 
       (.C(clk),
        .CE(\SOAMBuffer[3][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[3]_27 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][0] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[4]_26 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][10] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[4]_26 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][11] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[4]_26 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][12] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[4]_26 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][13] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[4]_26 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][14] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[4]_26 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][15] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[4]_26 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][16] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[4]_26 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][17] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[4]_26 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][18] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[4]_26 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][19] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[4]_26 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][1] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[4]_26 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][20] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[4]_26 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][21] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[4]_26 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][22] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[4]_26 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][23] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[4]_26 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][24] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[4]_26 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][25] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[4]_26 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][26] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[4]_26 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][27] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[4]_26 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][28] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[4]_26 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][29] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[4]_26 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][2] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[4]_26 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][30] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[4]_26 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][31] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[4]_26 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][3] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[4]_26 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][4] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[4]_26 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][5] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[4]_26 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][6] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[4]_26 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][7] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[4]_26 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][8] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[4]_26 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[4][9] 
       (.C(clk),
        .CE(\SOAMBuffer[4][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[4]_26 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][0] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[5]_25 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][10] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[5]_25 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][11] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[5]_25 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][12] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[5]_25 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][13] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[5]_25 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][14] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[5]_25 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][15] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[5]_25 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][16] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[5]_25 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][17] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[5]_25 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][18] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[5]_25 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][19] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[5]_25 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][1] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[5]_25 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][20] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[5]_25 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][21] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[5]_25 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][22] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[5]_25 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][23] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[5]_25 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][24] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[5]_25 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][25] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[5]_25 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][26] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[5]_25 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][27] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[5]_25 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][28] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[5]_25 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][29] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[5]_25 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][2] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[5]_25 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][30] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[5]_25 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][31] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[5]_25 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][3] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[5]_25 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][4] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[5]_25 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][5] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[5]_25 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][6] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[5]_25 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][7] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[5]_25 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][8] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[5]_25 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[5][9] 
       (.C(clk),
        .CE(\SOAMBuffer[5][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[5]_25 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][0] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[6]_24 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][10] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[6]_24 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][11] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[6]_24 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][12] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[6]_24 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][13] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[6]_24 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][14] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[6]_24 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][15] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[6]_24 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][16] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[6]_24 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][17] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[6]_24 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][18] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[6]_24 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][19] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[6]_24 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][1] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[6]_24 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][20] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[6]_24 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][21] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[6]_24 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][22] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[6]_24 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][23] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[6]_24 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][24] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[6]_24 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][25] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[6]_24 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][26] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[6]_24 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][27] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[6]_24 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][28] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[6]_24 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][29] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[6]_24 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][2] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[6]_24 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][30] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[6]_24 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][31] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[6]_24 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][3] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[6]_24 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][4] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[6]_24 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][5] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[6]_24 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][6] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[6]_24 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][7] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[6]_24 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][8] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[6]_24 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[6][9] 
       (.C(clk),
        .CE(\SOAMBuffer[6][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[6]_24 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][0] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[7]_23 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][10] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[7]_23 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][11] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[7]_23 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][12] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[7]_23 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][13] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[7]_23 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][14] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[7]_23 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][15] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[7]_23 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][16] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[7]_23 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][17] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[7]_23 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][18] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[7]_23 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][19] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[7]_23 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][1] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[7]_23 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][20] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[7]_23 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][21] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[7]_23 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][22] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[7]_23 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][23] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[7]_23 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][24] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[7]_23 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][25] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[7]_23 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][26] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[7]_23 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][27] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[7]_23 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][28] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[7]_23 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][29] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[7]_23 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][2] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[7]_23 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][30] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[7]_23 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][31] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[7]_23 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][3] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[7]_23 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][4] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[7]_23 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][5] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[7]_23 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][6] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[7]_23 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][7] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[7]_23 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][8] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[7]_23 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[7][9] 
       (.C(clk),
        .CE(\SOAMBuffer[7][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[7]_23 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][0] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[8]_22 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][10] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[8]_22 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][11] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[8]_22 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][12] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[8]_22 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][13] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[8]_22 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][14] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[8]_22 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][15] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[8]_22 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][16] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[8]_22 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][17] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[8]_22 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][18] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[8]_22 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][19] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[8]_22 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][1] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[8]_22 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][20] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[8]_22 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][21] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[8]_22 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][22] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[8]_22 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][23] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[8]_22 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][24] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[8]_22 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][25] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[8]_22 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][26] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[8]_22 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][27] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[8]_22 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][28] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[8]_22 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][29] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[8]_22 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][2] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[8]_22 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][30] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[8]_22 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][31] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[8]_22 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][3] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[8]_22 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][4] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[8]_22 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][5] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[8]_22 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][6] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[8]_22 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][7] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[8]_22 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][8] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[8]_22 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[8][9] 
       (.C(clk),
        .CE(\SOAMBuffer[8][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[8]_22 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][0] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[0]),
        .Q(\SOAMBuffer_reg[9]_21 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][10] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[10]),
        .Q(\SOAMBuffer_reg[9]_21 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][11] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[11]),
        .Q(\SOAMBuffer_reg[9]_21 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][12] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[12]),
        .Q(\SOAMBuffer_reg[9]_21 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][13] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[13]),
        .Q(\SOAMBuffer_reg[9]_21 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][14] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[14]),
        .Q(\SOAMBuffer_reg[9]_21 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][15] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[15]),
        .Q(\SOAMBuffer_reg[9]_21 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][16] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[16]),
        .Q(\SOAMBuffer_reg[9]_21 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][17] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[17]),
        .Q(\SOAMBuffer_reg[9]_21 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][18] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[18]),
        .Q(\SOAMBuffer_reg[9]_21 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][19] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[19]),
        .Q(\SOAMBuffer_reg[9]_21 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][1] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[1]),
        .Q(\SOAMBuffer_reg[9]_21 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][20] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[20]),
        .Q(\SOAMBuffer_reg[9]_21 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][21] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[21]),
        .Q(\SOAMBuffer_reg[9]_21 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][22] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[22]),
        .Q(\SOAMBuffer_reg[9]_21 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][23] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[23]),
        .Q(\SOAMBuffer_reg[9]_21 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][24] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[24]),
        .Q(\SOAMBuffer_reg[9]_21 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][25] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[25]),
        .Q(\SOAMBuffer_reg[9]_21 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][26] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[26]),
        .Q(\SOAMBuffer_reg[9]_21 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][27] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[27]),
        .Q(\SOAMBuffer_reg[9]_21 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][28] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[28]),
        .Q(\SOAMBuffer_reg[9]_21 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][29] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[29]),
        .Q(\SOAMBuffer_reg[9]_21 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][2] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[2]),
        .Q(\SOAMBuffer_reg[9]_21 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][30] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[30]),
        .Q(\SOAMBuffer_reg[9]_21 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][31] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[31]),
        .Q(\SOAMBuffer_reg[9]_21 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][3] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[3]),
        .Q(\SOAMBuffer_reg[9]_21 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][4] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[4]),
        .Q(\SOAMBuffer_reg[9]_21 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][5] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[5]),
        .Q(\SOAMBuffer_reg[9]_21 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][6] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[6]),
        .Q(\SOAMBuffer_reg[9]_21 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][7] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[7]),
        .Q(\SOAMBuffer_reg[9]_21 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][8] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[8]),
        .Q(\SOAMBuffer_reg[9]_21 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \SOAMBuffer_reg[9][9] 
       (.C(clk),
        .CE(\SOAMBuffer[9][31]_i_1_n_0 ),
        .D(SOAMData[9]),
        .Q(\SOAMBuffer_reg[9]_21 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFAC8)) 
    SOAMReadEnable_i_1
       (.I0(isBufferReady),
        .I1(endLineBit),
        .I2(\SOAMAddressCounter[4]_i_4_n_0 ),
        .I3(SOAMReadEnable),
        .O(SOAMReadEnable_i_1_n_0));
  FDRE SOAMReadEnable_reg
       (.C(clk),
        .CE(1'b1),
        .D(SOAMReadEnable_i_1_n_0),
        .Q(SOAMReadEnable),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ScanLineCounter[8]_i_1 
       (.I0(endLineBit),
        .I1(\ScanLineCounter[8]_i_2_n_0 ),
        .O(\ScanLineCounter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ScanLineCounter[8]_i_2 
       (.I0(\ScanLineCounter_reg_n_0_[6] ),
        .I1(\NextScanline[8]_i_3_n_0 ),
        .I2(\ScanLineCounter_reg_n_0_[8] ),
        .I3(\ScanLineCounter_reg_n_0_[7] ),
        .I4(\ScanLineCounter_reg_n_0_[5] ),
        .I5(\ScanLineCounter_reg_n_0_[0] ),
        .O(\ScanLineCounter[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[0] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[0]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[0] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[1] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[1]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[1] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[2] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[2]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[2] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[3] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[3]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[3] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[4] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[4]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[4] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[5] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[5]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[5] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ScanLineCounter_reg[6] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[6]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[6] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[7] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[7]_i_1_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[7] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ScanLineCounter_reg[8] 
       (.C(clk),
        .CE(endLineBit),
        .D(\NextScanline[8]_i_2_n_0 ),
        .Q(\ScanLineCounter_reg_n_0_[8] ),
        .R(\ScanLineCounter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \SpriteOffset[0]_i_1 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\CurrentSprite_reg_n_0_[14] ),
        .O(\SpriteOffset[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \SpriteOffset[13]_i_1 
       (.I0(\SpriteOffset[13]_i_2_n_0 ),
        .I1(\SpriteOffset[13]_i_3_n_0 ),
        .I2(\SpriteOffset[13]_i_4_n_0 ),
        .I3(\SpriteOffset[13]_i_5_n_0 ),
        .O(\SpriteOffset[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \SpriteOffset[13]_i_2 
       (.I0(\CurrentSprite_reg_n_0_[18] ),
        .I1(\CurrentSprite_reg_n_0_[19] ),
        .I2(\CurrentSprite_reg_n_0_[16] ),
        .I3(\CurrentSprite_reg_n_0_[17] ),
        .I4(\SpriteOffset[13]_i_6_n_0 ),
        .O(\SpriteOffset[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \SpriteOffset[13]_i_3 
       (.I0(\CurrentSprite_reg_n_0_[31] ),
        .I1(\CurrentSprite_reg_n_0_[30] ),
        .I2(\CurrentSprite_reg_n_0_[28] ),
        .I3(\CurrentSprite_reg_n_0_[29] ),
        .I4(\SpriteOffset[13]_i_7_n_0 ),
        .O(\SpriteOffset[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \SpriteOffset[13]_i_4 
       (.I0(\CurrentSprite_reg_n_0_[14] ),
        .I1(\CurrentSprite_reg_n_0_[15] ),
        .I2(\CurrentSprite_reg_n_0_[12] ),
        .I3(\CurrentSprite_reg_n_0_[13] ),
        .I4(\SpriteOffset[13]_i_8_n_0 ),
        .O(\SpriteOffset[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \SpriteOffset[13]_i_5 
       (.I0(SpriteOffset0[12]),
        .I1(SpriteOffset0[13]),
        .I2(SpriteOffset0[10]),
        .I3(SpriteOffset0[11]),
        .I4(\SpriteOffset[13]_i_9_n_0 ),
        .O(\SpriteOffset[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \SpriteOffset[13]_i_6 
       (.I0(\CurrentSprite_reg_n_0_[21] ),
        .I1(\CurrentSprite_reg_n_0_[20] ),
        .I2(\CurrentSprite_reg_n_0_[23] ),
        .I3(\CurrentSprite_reg_n_0_[22] ),
        .O(\SpriteOffset[13]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \SpriteOffset[13]_i_7 
       (.I0(\CurrentSprite_reg_n_0_[25] ),
        .I1(\CurrentSprite_reg_n_0_[24] ),
        .I2(\CurrentSprite_reg_n_0_[27] ),
        .I3(\CurrentSprite_reg_n_0_[26] ),
        .O(\SpriteOffset[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \SpriteOffset[13]_i_8 
       (.I0(\CurrentSprite_reg_n_0_[9] ),
        .I1(\CurrentSprite_reg_n_0_[8] ),
        .I2(\CurrentSprite_reg_n_0_[11] ),
        .I3(\CurrentSprite_reg_n_0_[10] ),
        .O(\SpriteOffset[13]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \SpriteOffset[13]_i_9 
       (.I0(SpriteOffset0[7]),
        .I1(SpriteOffset0[6]),
        .I2(SpriteOffset0[9]),
        .I3(SpriteOffset0[8]),
        .O(\SpriteOffset[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \SpriteOffset[1]_i_1 
       (.I0(\CurrentSprite_reg_n_0_[14] ),
        .I1(\xCounter_reg_n_0_[0] ),
        .I2(\CurrentSprite_reg_n_0_[15] ),
        .I3(\xCounter_reg_n_0_[1] ),
        .O(C[1]));
  LUT6 #(
    .INIT(64'hDF0D20F220F2DF0D)) 
    \SpriteOffset[2]_i_1 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\CurrentSprite_reg_n_0_[14] ),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\CurrentSprite_reg_n_0_[15] ),
        .I4(\CurrentSprite_reg_n_0_[16] ),
        .I5(\xCounter_reg_n_0_[2] ),
        .O(C[2]));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\SpriteOffset[0]_i_1_n_0 ),
        .Q(SpriteOffset[0]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[10]),
        .Q(SpriteOffset[10]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[11]),
        .Q(SpriteOffset[11]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[12]),
        .Q(SpriteOffset[12]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[13]),
        .Q(SpriteOffset[13]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(C[1]),
        .Q(SpriteOffset[1]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(C[2]),
        .Q(SpriteOffset[2]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SpriteOffset[3]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[6]),
        .Q(SpriteOffset[6]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[7]),
        .Q(SpriteOffset[7]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[8]),
        .Q(SpriteOffset[8]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteOffset_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset0[9]),
        .Q(SpriteOffset[9]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SpriteROMAddr[15]_i_1 
       (.I0(\SpriteROMAddr[15]_i_3_n_0 ),
        .I1(SpriteOffset[12]),
        .I2(SpriteOffset[13]),
        .I3(SpriteOffset[3]),
        .I4(\SpriteROMAddr[15]_i_4_n_0 ),
        .O(\SpriteROMAddr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \SpriteROMAddr[15]_i_3 
       (.I0(SpriteOffset[10]),
        .I1(SpriteOffset[11]),
        .I2(SpriteOffset[8]),
        .I3(SpriteOffset[9]),
        .O(\SpriteROMAddr[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \SpriteROMAddr[15]_i_4 
       (.I0(SpriteOffset[7]),
        .I1(SpriteOffset[6]),
        .I2(SpriteOffset[1]),
        .I3(SpriteOffset[0]),
        .I4(SpriteOffset[3]),
        .I5(SpriteOffset[2]),
        .O(\SpriteROMAddr[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SpriteROMAddr[5]_i_2 
       (.I0(SpriteOffset[3]),
        .I1(SpriteY[2]),
        .O(\SpriteROMAddr[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SpriteROMAddr[5]_i_3 
       (.I0(SpriteOffset[3]),
        .I1(SpriteY[1]),
        .O(\SpriteROMAddr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SpriteROMAddr[5]_i_4 
       (.I0(SpriteOffset[3]),
        .I1(SpriteY[0]),
        .O(\SpriteROMAddr[5]_i_4_n_0 ));
  FDSE \SpriteROMAddr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset[0]),
        .Q(SpriteROMAddr[0]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[10]),
        .Q(SpriteROMAddr[10]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[11]),
        .Q(SpriteROMAddr[11]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[12]),
        .Q(SpriteROMAddr[12]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[13]),
        .Q(SpriteROMAddr[13]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  CARRY4 \SpriteROMAddr_reg[13]_i_1 
       (.CI(\SpriteROMAddr_reg[9]_i_1_n_0 ),
        .CO({\SpriteROMAddr_reg[13]_i_1_n_0 ,\SpriteROMAddr_reg[13]_i_1_n_1 ,\SpriteROMAddr_reg[13]_i_1_n_2 ,\SpriteROMAddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SpriteROMAddr0[13:10]),
        .S(SpriteOffset[13:10]));
  FDSE \SpriteROMAddr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[14]),
        .Q(SpriteROMAddr[14]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[15]),
        .Q(SpriteROMAddr[15]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  CARRY4 \SpriteROMAddr_reg[15]_i_2 
       (.CI(\SpriteROMAddr_reg[13]_i_1_n_0 ),
        .CO({\NLW_SpriteROMAddr_reg[15]_i_2_CO_UNCONNECTED [3:1],\SpriteROMAddr_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_SpriteROMAddr_reg[15]_i_2_O_UNCONNECTED [3:2],SpriteROMAddr0[15:14]}),
        .S({1'b0,1'b0,SpriteOffset[3],SpriteOffset[3]}));
  FDSE \SpriteROMAddr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteOffset[1]),
        .Q(SpriteROMAddr[1]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[2]),
        .Q(SpriteROMAddr[2]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[3]),
        .Q(SpriteROMAddr[3]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[4]),
        .Q(SpriteROMAddr[4]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[5]),
        .Q(SpriteROMAddr[5]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  CARRY4 \SpriteROMAddr_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\SpriteROMAddr_reg[5]_i_1_n_0 ,\SpriteROMAddr_reg[5]_i_1_n_1 ,\SpriteROMAddr_reg[5]_i_1_n_2 ,\SpriteROMAddr_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({SpriteOffset[3],SpriteOffset[3],SpriteOffset[3],1'b0}),
        .O(SpriteROMAddr0[5:2]),
        .S({\SpriteROMAddr[5]_i_2_n_0 ,\SpriteROMAddr[5]_i_3_n_0 ,\SpriteROMAddr[5]_i_4_n_0 ,SpriteOffset[2]}));
  FDSE \SpriteROMAddr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[6]),
        .Q(SpriteROMAddr[6]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[7]),
        .Q(SpriteROMAddr[7]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[8]),
        .Q(SpriteROMAddr[8]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  FDSE \SpriteROMAddr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteROMAddr0[9]),
        .Q(SpriteROMAddr[9]),
        .S(\SpriteROMAddr[15]_i_1_n_0 ));
  CARRY4 \SpriteROMAddr_reg[9]_i_1 
       (.CI(\SpriteROMAddr_reg[5]_i_1_n_0 ),
        .CO({\SpriteROMAddr_reg[9]_i_1_n_0 ,\SpriteROMAddr_reg[9]_i_1_n_1 ,\SpriteROMAddr_reg[9]_i_1_n_2 ,\SpriteROMAddr_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SpriteROMAddr0[9:6]),
        .S(SpriteOffset[9:6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \SpriteY[0]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[0] ),
        .I1(\CurrentSprite_reg_n_0_[23] ),
        .O(\SpriteY[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \SpriteY[1]_i_1 
       (.I0(\CurrentSprite_reg_n_0_[23] ),
        .I1(\ScanLineCounter_reg_n_0_[0] ),
        .I2(\CurrentSprite_reg_n_0_[24] ),
        .I3(\ScanLineCounter_reg_n_0_[1] ),
        .O(SpriteY0[1]));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    \SpriteY[2]_i_1 
       (.I0(\ScanLineCounter_reg_n_0_[0] ),
        .I1(\CurrentSprite_reg_n_0_[23] ),
        .I2(\ScanLineCounter_reg_n_0_[1] ),
        .I3(\CurrentSprite_reg_n_0_[24] ),
        .I4(\CurrentSprite_reg_n_0_[25] ),
        .I5(\ScanLineCounter_reg_n_0_[2] ),
        .O(SpriteY0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteY_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\SpriteY[0]_i_1_n_0 ),
        .Q(SpriteY[0]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteY_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteY0[1]),
        .Q(SpriteY[1]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \SpriteY_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(SpriteY0[2]),
        .Q(SpriteY[2]),
        .S(\SpriteOffset[13]_i_1_n_0 ));
  (* srl_name = "\U0/bufferFull2_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    bufferFull2_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(bufferFull),
        .Q(bufferFull2_reg_srl2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bufferFull3_reg
       (.C(clk),
        .CE(1'b1),
        .D(bufferFull2_reg_srl2_n_0),
        .Q(bufferFull3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    endLineBit_i_1
       (.I0(\xCounter_reg_n_0_[8] ),
        .I1(\xCounter_reg_n_0_[9] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .I3(\xCounter_reg_n_0_[3] ),
        .I4(endLineBit_i_2_n_0),
        .I5(endLineBit_i_3_n_0),
        .O(endLineBit));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    endLineBit_i_2
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\xCounter_reg_n_0_[0] ),
        .O(endLineBit_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    endLineBit_i_3
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[4] ),
        .I3(\xCounter_reg_n_0_[5] ),
        .O(endLineBit_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    endLineBit_reg
       (.C(clk),
        .CE(1'b1),
        .D(endLineBit),
        .Q(isEndLine),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h27)) 
    isBufferReady_i_1
       (.I0(isBufferReady),
        .I1(endLineBit),
        .I2(\SOAMAddressCounter[4]_i_4_n_0 ),
        .O(isBufferReady_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    isBufferReady_reg
       (.C(clk),
        .CE(1'b1),
        .D(isBufferReady_i_1_n_0),
        .Q(isBufferReady),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[0] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[0]),
        .Q(\pixelData1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[1] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[1]),
        .Q(\pixelData1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[2] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[2]),
        .Q(\pixelData1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[3] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[3]),
        .Q(\pixelData1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[4] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[4]),
        .Q(\pixelData1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[5] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[5]),
        .Q(\pixelData1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[6] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[6]),
        .Q(\pixelData1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixelData1_reg[7] 
       (.C(clk),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .D(SpriteROMDatout[7]),
        .Q(\pixelData1_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[0] ),
        .Q(\pixelData4_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[1] ),
        .Q(\pixelData4_reg[1]_srl3_n_0 ));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[2] ),
        .Q(\pixelData4_reg[2]_srl3_n_0 ));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[3] ),
        .Q(\pixelData4_reg[3]_srl3_n_0 ));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[4] ),
        .Q(\pixelData4_reg[4]_srl3_n_0 ));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[5] ),
        .Q(\pixelData4_reg[5]_srl3_n_0 ));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[6]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[6] ),
        .Q(\pixelData4_reg[6]_srl3_n_0 ));
  (* srl_bus_name = "\U0/pixelData4_reg " *) 
  (* srl_name = "\U0/pixelData4_reg[7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \pixelData4_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\pixelData4_reg[7]_srl3_i_1_n_0 ),
        .CLK(clk),
        .D(\pixelData1_reg_n_0_[7] ),
        .Q(\pixelData4_reg[7]_srl3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \pixelData4_reg[7]_srl3_i_1 
       (.I0(bufferFull),
        .I1(bufferFull3),
        .O(\pixelData4_reg[7]_srl3_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \xCounter[0]_i_1 
       (.I0(\xCounter_reg_n_0_[0] ),
        .O(\xCounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[1]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[1]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[1]),
        .O(\xCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \xCounter[1]_i_2 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\xCounter_reg_n_0_[1] ),
        .O(\xCounter[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \xCounter[1]_i_3 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\xCounter_reg_n_0_[1] ),
        .O(data0[1]));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[2]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[2]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(\xCounter[2]_i_3_n_0 ),
        .O(\xCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \xCounter[2]_i_2 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .O(\xCounter[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \xCounter[2]_i_3 
       (.I0(\xCounter_reg_n_0_[0] ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .O(\xCounter[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[3]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[3]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[3]),
        .O(\xCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \xCounter[3]_i_2 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[0] ),
        .I3(\xCounter_reg_n_0_[2] ),
        .O(\xCounter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \xCounter[3]_i_3 
       (.I0(\xCounter_reg_n_0_[1] ),
        .I1(\xCounter_reg_n_0_[0] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .I3(\xCounter_reg_n_0_[3] ),
        .O(data0[3]));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[4]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[4]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[4]),
        .O(\xCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \xCounter[4]_i_2 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\xCounter_reg_n_0_[3] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .I3(\xCounter_reg_n_0_[0] ),
        .I4(\xCounter_reg_n_0_[1] ),
        .O(\xCounter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \xCounter[4]_i_3 
       (.I0(\xCounter_reg_n_0_[2] ),
        .I1(\xCounter_reg_n_0_[0] ),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\xCounter_reg_n_0_[3] ),
        .I4(\xCounter_reg_n_0_[4] ),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[5]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[5]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[5]),
        .O(\xCounter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \xCounter[5]_i_2 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\xCounter_reg_n_0_[5] ),
        .I2(\xCounter_reg_n_0_[3] ),
        .I3(\xCounter_reg_n_0_[1] ),
        .I4(\xCounter_reg_n_0_[0] ),
        .I5(\xCounter_reg_n_0_[2] ),
        .O(\xCounter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \xCounter[5]_i_3 
       (.I0(\xCounter_reg_n_0_[3] ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[0] ),
        .I3(\xCounter_reg_n_0_[2] ),
        .I4(\xCounter_reg_n_0_[4] ),
        .I5(\xCounter_reg_n_0_[5] ),
        .O(data0[5]));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[6]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[6]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[6]),
        .O(\xCounter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \xCounter[6]_i_2 
       (.I0(\xCounter[9]_i_5_n_0 ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .I3(\xCounter_reg_n_0_[0] ),
        .I4(\xCounter[9]_i_6_n_0 ),
        .I5(data0[6]),
        .O(\xCounter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \xCounter[6]_i_3 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\xCounter_reg_n_0_[2] ),
        .I2(endLineBit_i_2_n_0),
        .I3(\xCounter_reg_n_0_[3] ),
        .I4(\xCounter_reg_n_0_[5] ),
        .I5(\xCounter_reg_n_0_[6] ),
        .O(data0[6]));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[7]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[7]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[7]),
        .O(\xCounter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \xCounter[7]_i_2 
       (.I0(\xCounter[9]_i_5_n_0 ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .I3(\xCounter_reg_n_0_[0] ),
        .I4(\xCounter[9]_i_6_n_0 ),
        .I5(data0[7]),
        .O(\xCounter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \xCounter[7]_i_3 
       (.I0(\xCounter[9]_i_7_n_0 ),
        .I1(\xCounter_reg_n_0_[6] ),
        .I2(\xCounter_reg_n_0_[7] ),
        .O(data0[7]));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[8]_i_1 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[8]_i_2_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[8]),
        .O(\xCounter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \xCounter[8]_i_2 
       (.I0(\xCounter[9]_i_5_n_0 ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .I3(\xCounter_reg_n_0_[0] ),
        .I4(\xCounter[9]_i_6_n_0 ),
        .I5(data0[8]),
        .O(\xCounter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \xCounter[8]_i_3 
       (.I0(\xCounter_reg_n_0_[6] ),
        .I1(\xCounter[9]_i_7_n_0 ),
        .I2(\xCounter_reg_n_0_[7] ),
        .I3(\xCounter_reg_n_0_[8] ),
        .O(data0[8]));
  LUT3 #(
    .INIT(8'hF4)) 
    \xCounter[9]_i_1 
       (.I0(bufferFull),
        .I1(isBufferReady),
        .I2(endLineBit),
        .O(xCounter));
  LUT6 #(
    .INIT(64'hFFBFFFFF40000000)) 
    \xCounter[9]_i_2 
       (.I0(\xCounter_reg_n_0_[9] ),
        .I1(\xCounter_reg_n_0_[7] ),
        .I2(\xCounter_reg_n_0_[8] ),
        .I3(\xCounter[9]_i_3_n_0 ),
        .I4(\xCounter_reg_n_0_[6] ),
        .I5(data0[9]),
        .O(\xCounter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \xCounter[9]_i_3 
       (.I0(\xCounter[9]_i_5_n_0 ),
        .I1(\xCounter_reg_n_0_[1] ),
        .I2(\xCounter_reg_n_0_[2] ),
        .I3(\xCounter_reg_n_0_[0] ),
        .I4(\xCounter[9]_i_6_n_0 ),
        .I5(data0[9]),
        .O(\xCounter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \xCounter[9]_i_4 
       (.I0(\xCounter_reg_n_0_[7] ),
        .I1(\xCounter[9]_i_7_n_0 ),
        .I2(\xCounter_reg_n_0_[6] ),
        .I3(\xCounter_reg_n_0_[8] ),
        .I4(\xCounter_reg_n_0_[9] ),
        .O(data0[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \xCounter[9]_i_5 
       (.I0(\xCounter_reg_n_0_[4] ),
        .I1(\xCounter_reg_n_0_[5] ),
        .O(\xCounter[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \xCounter[9]_i_6 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\xCounter_reg_n_0_[4] ),
        .I2(\xCounter_reg_n_0_[3] ),
        .O(\xCounter[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \xCounter[9]_i_7 
       (.I0(\xCounter_reg_n_0_[5] ),
        .I1(\xCounter_reg_n_0_[3] ),
        .I2(\xCounter_reg_n_0_[1] ),
        .I3(\xCounter_reg_n_0_[0] ),
        .I4(\xCounter_reg_n_0_[2] ),
        .I5(\xCounter_reg_n_0_[4] ),
        .O(\xCounter[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[0] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[0]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[1] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[1]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[2] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[2]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[3] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[3]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[4] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[4]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[5] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[5]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[6] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[6]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[7] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[7]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[8] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[8]_i_1_n_0 ),
        .Q(\xCounter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xCounter_reg[9] 
       (.C(clk),
        .CE(xCounter),
        .D(\xCounter[9]_i_2_n_0 ),
        .Q(\xCounter_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
