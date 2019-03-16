// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 16 14:41:12 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_dataToSprite_0_0/BOARD_DESIGN_dataToSprite_0_0_stub.v
// Design      : BOARD_DESIGN_dataToSprite_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dataToSprite,Vivado 2017.4" *)
module BOARD_DESIGN_dataToSprite_0_0(x_loc_sprite, y_loc_sprite, 
  sprite_memory_loc, sprite_atttribute, sprite_data)
/* synthesis syn_black_box black_box_pad_pin="x_loc_sprite[8:0],y_loc_sprite[8:0],sprite_memory_loc[7:0],sprite_atttribute[7:0],sprite_data[31:0]" */;
  input [8:0]x_loc_sprite;
  input [8:0]y_loc_sprite;
  input [7:0]sprite_memory_loc;
  input [7:0]sprite_atttribute;
  output [31:0]sprite_data;
endmodule
