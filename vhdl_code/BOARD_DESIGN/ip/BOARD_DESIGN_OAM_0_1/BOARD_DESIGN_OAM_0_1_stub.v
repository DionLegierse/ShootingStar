// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 16 15:07:04 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_OAM_0_1/BOARD_DESIGN_OAM_0_1_stub.v
// Design      : BOARD_DESIGN_OAM_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "OAM,Vivado 2017.4" *)
module BOARD_DESIGN_OAM_0_1(clk, OAMreset, OAMin, OAMwen, OAMwadd, OAMout, 
  OAMren, OAMradd)
/* synthesis syn_black_box black_box_pad_pin="clk,OAMreset,OAMin[31:0],OAMwen,OAMwadd[6:0],OAMout[31:0],OAMren,OAMradd[6:0]" */;
  input clk;
  input OAMreset;
  input [31:0]OAMin;
  input OAMwen;
  input [6:0]OAMwadd;
  output [31:0]OAMout;
  input OAMren;
  input [6:0]OAMradd;
endmodule
