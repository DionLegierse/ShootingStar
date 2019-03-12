// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 12 14:05:53 2019
// Host        : LAPTOP-MCELIKGK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/djleg/Documents/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_SYNTHESIZER_TOP_0_1/BOARD_DESIGN_SYNTHESIZER_TOP_0_1_stub.v
// Design      : BOARD_DESIGN_SYNTHESIZER_TOP_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SYNTHESIZER_TOP,Vivado 2017.4" *)
module BOARD_DESIGN_SYNTHESIZER_TOP_0_1(clk, start_music, reset, soundEffect, 
  startAddress, sound_out)
/* synthesis syn_black_box black_box_pad_pin="clk,start_music,reset,soundEffect[7:0],startAddress[10:0],sound_out" */;
  input clk;
  input start_music;
  input reset;
  input [7:0]soundEffect;
  input [10:0]startAddress;
  output sound_out;
endmodule
