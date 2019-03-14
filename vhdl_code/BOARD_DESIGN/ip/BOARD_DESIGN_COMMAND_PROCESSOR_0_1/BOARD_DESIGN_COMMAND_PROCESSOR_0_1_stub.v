// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Mar 13 21:14:10 2019
// Host        : LAPTOP-MCELIKGK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/djleg/Documents/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_COMMAND_PROCESSOR_0_1/BOARD_DESIGN_COMMAND_PROCESSOR_0_1_stub.v
// Design      : BOARD_DESIGN_COMMAND_PROCESSOR_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "COMMAND_PROCESSOR,Vivado 2017.4" *)
module BOARD_DESIGN_COMMAND_PROCESSOR_0_1(clk, mc_data, mc_clk, mc_register_select, 
  x_loc_sprite, y_loc_sprite, sprite_memory_loc, sprite_attribute, sprite_register_loc, 
  start_music, reset_APU, start_addres_APU)
/* synthesis syn_black_box black_box_pad_pin="clk,mc_data[7:0],mc_clk,mc_register_select,x_loc_sprite[8:0],y_loc_sprite[8:0],sprite_memory_loc[12:0],sprite_attribute[7:0],sprite_register_loc[6:0],start_music,reset_APU,start_addres_APU[10:0]" */;
  input clk;
  input [7:0]mc_data;
  input mc_clk;
  input mc_register_select;
  output [8:0]x_loc_sprite;
  output [8:0]y_loc_sprite;
  output [12:0]sprite_memory_loc;
  output [7:0]sprite_attribute;
  output [6:0]sprite_register_loc;
  output start_music;
  output reset_APU;
  output [10:0]start_addres_APU;
endmodule
