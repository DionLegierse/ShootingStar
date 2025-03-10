// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 16 14:41:51 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_Renderer_0_0/BOARD_DESIGN_Renderer_0_0_stub.v
// Design      : BOARD_DESIGN_Renderer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Renderer,Vivado 2017.4" *)
module BOARD_DESIGN_Renderer_0_0(clk, SOAMData, SpriteROMDatout, bufferFull, 
  bufferClear, SOAMAddress, SOAMReadEnable, NextScanline, BufferData, SpriteROMAddr, isEndLine, 
  BufferEnableWrite)
/* synthesis syn_black_box black_box_pad_pin="clk,SOAMData[31:0],SpriteROMDatout[7:0],bufferFull,bufferClear,SOAMAddress[4:0],SOAMReadEnable,NextScanline[8:0],BufferData[7:0],SpriteROMAddr[15:0],isEndLine,BufferEnableWrite" */;
  input clk;
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
endmodule
