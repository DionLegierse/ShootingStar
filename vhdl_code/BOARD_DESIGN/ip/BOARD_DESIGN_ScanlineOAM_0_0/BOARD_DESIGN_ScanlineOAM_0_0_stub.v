// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 16 14:41:12 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_ScanlineOAM_0_0/BOARD_DESIGN_ScanlineOAM_0_0_stub.v
// Design      : BOARD_DESIGN_ScanlineOAM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ScanlineOAM,Vivado 2017.4" *)
module BOARD_DESIGN_ScanlineOAM_0_0(clk, scanline, ENDscanline, OAMin, OAMadd, SOAMout, 
  SOAMpush, SOAMclear)
/* synthesis syn_black_box black_box_pad_pin="clk,scanline[8:0],ENDscanline,OAMin[31:0],OAMadd[6:0],SOAMout[31:0],SOAMpush,SOAMclear" */;
  input clk;
  input [8:0]scanline;
  input ENDscanline;
  input [31:0]OAMin;
  output [6:0]OAMadd;
  output [31:0]SOAMout;
  output SOAMpush;
  output SOAMclear;
endmodule
