// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Feb 28 11:49:44 2019
// Host        : LAPTOP-HRAQ4RRP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Documents/GitHub/ShootingStar/vhdl_code/GPU/IP/Secondary_Object_Attribute_Memory/Secondary_Object_Attribute_Memory_stub.v
// Design      : Secondary_Object_Attribute_Memory
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module Secondary_Object_Attribute_Memory(clka, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[3:0],dina[31:0],clkb,enb,addrb[3:0],doutb[31:0]" */;
  input clka;
  input [0:0]wea;
  input [3:0]addra;
  input [31:0]dina;
  input clkb;
  input enb;
  input [3:0]addrb;
  output [31:0]doutb;
endmodule
