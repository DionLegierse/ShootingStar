// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 16 14:41:14 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_circular_buffer_0_0/BOARD_DESIGN_circular_buffer_0_0_sim_netlist.v
// Design      : BOARD_DESIGN_circular_buffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BOARD_DESIGN_circular_buffer_0_0,circular_buffer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "circular_buffer,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module BOARD_DESIGN_circular_buffer_0_0
   (clk,
    reset,
    Ren,
    Wen,
    Dout,
    Din,
    Empty,
    Err,
    Full);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  input Ren;
  input Wen;
  output [7:0]Dout;
  input [7:0]Din;
  output Empty;
  output Err;
  output Full;

  wire [7:0]Din;
  wire [7:0]Dout;
  wire Empty;
  wire Err;
  wire Full;
  wire Ren;
  wire Wen;
  wire clk;
  wire reset;

  BOARD_DESIGN_circular_buffer_0_0_circular_buffer U0
       (.Din(Din),
        .Dout(Dout),
        .Empty(Empty),
        .Err(Err),
        .Full(Full),
        .Ren(Ren),
        .Wen(Wen),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "circular_buffer" *) 
module BOARD_DESIGN_circular_buffer_0_0_circular_buffer
   (Full,
    Empty,
    Dout,
    Err,
    Wen,
    clk,
    reset,
    Din,
    Ren);
  output Full;
  output Empty;
  output [7:0]Dout;
  output Err;
  input Wen;
  input clk;
  input reset;
  input [7:0]Din;
  input Ren;

  wire [7:0]Din;
  wire [7:0]Dout;
  wire Dout0;
  wire Dout1;
  wire \Dout[0]_i_2_n_0 ;
  wire \Dout[0]_i_3_n_0 ;
  wire \Dout[0]_i_4_n_0 ;
  wire \Dout[0]_i_5_n_0 ;
  wire \Dout[1]_i_2_n_0 ;
  wire \Dout[1]_i_3_n_0 ;
  wire \Dout[1]_i_4_n_0 ;
  wire \Dout[1]_i_5_n_0 ;
  wire \Dout[2]_i_2_n_0 ;
  wire \Dout[2]_i_3_n_0 ;
  wire \Dout[2]_i_4_n_0 ;
  wire \Dout[2]_i_5_n_0 ;
  wire \Dout[3]_i_2_n_0 ;
  wire \Dout[3]_i_3_n_0 ;
  wire \Dout[3]_i_4_n_0 ;
  wire \Dout[3]_i_5_n_0 ;
  wire \Dout[4]_i_2_n_0 ;
  wire \Dout[4]_i_3_n_0 ;
  wire \Dout[4]_i_4_n_0 ;
  wire \Dout[4]_i_5_n_0 ;
  wire \Dout[5]_i_2_n_0 ;
  wire \Dout[5]_i_3_n_0 ;
  wire \Dout[5]_i_4_n_0 ;
  wire \Dout[5]_i_5_n_0 ;
  wire \Dout[6]_i_2_n_0 ;
  wire \Dout[6]_i_3_n_0 ;
  wire \Dout[6]_i_4_n_0 ;
  wire \Dout[6]_i_5_n_0 ;
  wire \Dout[7]_i_3_n_0 ;
  wire \Dout[7]_i_4_n_0 ;
  wire \Dout[7]_i_5_n_0 ;
  wire \Dout[7]_i_6_n_0 ;
  wire \Dout[7]_i_7_n_0 ;
  wire \Dout[7]_i_8_n_0 ;
  wire Empty;
  wire Err;
  wire Full;
  wire Ren;
  wire Wen;
  wire clk;
  wire [14:1]data0;
  wire empty00;
  wire empty03;
  wire empty03_carry__0_i_1_n_0;
  wire empty03_carry__0_i_2_n_2;
  wire empty03_carry__0_i_2_n_3;
  wire empty03_carry_i_1_n_0;
  wire empty03_carry_i_2_n_0;
  wire empty03_carry_i_3_n_0;
  wire empty03_carry_i_4_n_0;
  wire empty03_carry_i_5_n_0;
  wire empty03_carry_i_5_n_1;
  wire empty03_carry_i_5_n_2;
  wire empty03_carry_i_5_n_3;
  wire empty03_carry_i_6_n_0;
  wire empty03_carry_i_6_n_1;
  wire empty03_carry_i_6_n_2;
  wire empty03_carry_i_6_n_3;
  wire empty03_carry_i_7_n_0;
  wire empty03_carry_i_7_n_1;
  wire empty03_carry_i_7_n_2;
  wire empty03_carry_i_7_n_3;
  wire empty03_carry_i_8_n_0;
  wire empty03_carry_n_0;
  wire empty03_carry_n_1;
  wire empty03_carry_n_2;
  wire empty03_carry_n_3;
  wire empty0_i_10_n_0;
  wire empty0_i_11_n_0;
  wire empty0_i_12_n_0;
  wire empty0_i_2_n_0;
  wire empty0_i_3_n_0;
  wire empty0_i_4_n_0;
  wire empty0_i_5_n_0;
  wire empty0_i_6_n_0;
  wire empty0_i_7_n_0;
  wire empty0_i_8_n_0;
  wire empty0_i_9_n_0;
  wire full00;
  wire full03;
  wire full03_carry__0_i_1_n_0;
  wire full03_carry__0_i_2_n_2;
  wire full03_carry__0_i_2_n_3;
  wire full03_carry_i_1_n_0;
  wire full03_carry_i_2_n_0;
  wire full03_carry_i_3_n_0;
  wire full03_carry_i_4_n_0;
  wire full03_carry_i_5_n_0;
  wire full03_carry_i_5_n_1;
  wire full03_carry_i_5_n_2;
  wire full03_carry_i_5_n_3;
  wire full03_carry_i_6_n_0;
  wire full03_carry_i_6_n_1;
  wire full03_carry_i_6_n_2;
  wire full03_carry_i_6_n_3;
  wire full03_carry_i_7_n_0;
  wire full03_carry_i_7_n_1;
  wire full03_carry_i_7_n_2;
  wire full03_carry_i_7_n_3;
  wire full03_carry_i_8_n_0;
  wire full03_carry_n_0;
  wire full03_carry_n_1;
  wire full03_carry_n_2;
  wire full03_carry_n_3;
  wire full0_i_2_n_0;
  wire full0_i_3_n_0;
  wire full0_i_4_n_0;
  wire full0_i_5_n_0;
  wire full0_i_6_n_0;
  wire \memory[0]1 ;
  wire \memory[0][7]_i_1_n_0 ;
  wire [7:0]\memory[0]_14 ;
  wire \memory[10]_4 ;
  wire \memory[11]_3 ;
  wire \memory[12][7]_i_2_n_0 ;
  wire \memory[12]_12 ;
  wire \memory[13]_8 ;
  wire \memory[14]_11 ;
  wire \memory[1][7]_i_2_n_0 ;
  wire \memory[1][7]_i_3_n_0 ;
  wire \memory[1]_2 ;
  wire \memory[2][7]_i_2_n_0 ;
  wire \memory[2]_1 ;
  wire \memory[3]_0 ;
  wire \memory[4][7]_i_2_n_0 ;
  wire \memory[4]_13 ;
  wire \memory[5]_10 ;
  wire \memory[6]_7 ;
  wire \memory[7]_6 ;
  wire \memory[8][7]_i_2_n_0 ;
  wire \memory[8][7]_i_3_n_0 ;
  wire \memory[8]_5 ;
  wire \memory[9]_9 ;
  wire [7:0]\memory_reg[0] ;
  wire [7:0]\memory_reg[10] ;
  wire [7:0]\memory_reg[11] ;
  wire [7:0]\memory_reg[12] ;
  wire [7:0]\memory_reg[13] ;
  wire [7:0]\memory_reg[14] ;
  wire [7:0]\memory_reg[1] ;
  wire [7:0]\memory_reg[2] ;
  wire [7:0]\memory_reg[3] ;
  wire [7:0]\memory_reg[4] ;
  wire [7:0]\memory_reg[5] ;
  wire [7:0]\memory_reg[6] ;
  wire [7:0]\memory_reg[7] ;
  wire [7:0]\memory_reg[8] ;
  wire [7:0]\memory_reg[9] ;
  wire [14:0]plusOp;
  wire [14:0]plusOp0_in;
  wire [14:1]readptr;
  wire \readptr[0]_i_1_n_0 ;
  wire \readptr[14]_i_4_n_0 ;
  wire \readptr[14]_i_5_n_0 ;
  wire \readptr_reg[12]_i_2_n_0 ;
  wire \readptr_reg[12]_i_2_n_1 ;
  wire \readptr_reg[12]_i_2_n_2 ;
  wire \readptr_reg[12]_i_2_n_3 ;
  wire \readptr_reg[14]_i_3_n_3 ;
  wire \readptr_reg[4]_i_2_n_0 ;
  wire \readptr_reg[4]_i_2_n_1 ;
  wire \readptr_reg[4]_i_2_n_2 ;
  wire \readptr_reg[4]_i_2_n_3 ;
  wire \readptr_reg[8]_i_2_n_0 ;
  wire \readptr_reg[8]_i_2_n_1 ;
  wire \readptr_reg[8]_i_2_n_2 ;
  wire \readptr_reg[8]_i_2_n_3 ;
  wire \readptr_reg_n_0_[0] ;
  wire \readptr_reg_n_0_[10] ;
  wire \readptr_reg_n_0_[11] ;
  wire \readptr_reg_n_0_[12] ;
  wire \readptr_reg_n_0_[13] ;
  wire \readptr_reg_n_0_[14] ;
  wire \readptr_reg_n_0_[1] ;
  wire \readptr_reg_n_0_[2] ;
  wire \readptr_reg_n_0_[3] ;
  wire \readptr_reg_n_0_[4] ;
  wire \readptr_reg_n_0_[5] ;
  wire \readptr_reg_n_0_[6] ;
  wire \readptr_reg_n_0_[7] ;
  wire \readptr_reg_n_0_[8] ;
  wire \readptr_reg_n_0_[9] ;
  wire reset;
  wire [14:1]writeptr;
  wire \writeptr[0]_i_1_n_0 ;
  wire \writeptr[14]_i_4_n_0 ;
  wire \writeptr_reg[12]_i_2_n_0 ;
  wire \writeptr_reg[12]_i_2_n_1 ;
  wire \writeptr_reg[12]_i_2_n_2 ;
  wire \writeptr_reg[12]_i_2_n_3 ;
  wire \writeptr_reg[12]_i_2_n_4 ;
  wire \writeptr_reg[12]_i_2_n_5 ;
  wire \writeptr_reg[12]_i_2_n_6 ;
  wire \writeptr_reg[12]_i_2_n_7 ;
  wire \writeptr_reg[14]_i_3_n_3 ;
  wire \writeptr_reg[14]_i_3_n_6 ;
  wire \writeptr_reg[14]_i_3_n_7 ;
  wire \writeptr_reg[4]_i_2_n_0 ;
  wire \writeptr_reg[4]_i_2_n_1 ;
  wire \writeptr_reg[4]_i_2_n_2 ;
  wire \writeptr_reg[4]_i_2_n_3 ;
  wire \writeptr_reg[4]_i_2_n_4 ;
  wire \writeptr_reg[4]_i_2_n_5 ;
  wire \writeptr_reg[4]_i_2_n_6 ;
  wire \writeptr_reg[4]_i_2_n_7 ;
  wire \writeptr_reg[8]_i_2_n_0 ;
  wire \writeptr_reg[8]_i_2_n_1 ;
  wire \writeptr_reg[8]_i_2_n_2 ;
  wire \writeptr_reg[8]_i_2_n_3 ;
  wire \writeptr_reg[8]_i_2_n_4 ;
  wire \writeptr_reg[8]_i_2_n_5 ;
  wire \writeptr_reg[8]_i_2_n_6 ;
  wire \writeptr_reg[8]_i_2_n_7 ;
  wire \writeptr_reg_n_0_[0] ;
  wire \writeptr_reg_n_0_[10] ;
  wire \writeptr_reg_n_0_[11] ;
  wire \writeptr_reg_n_0_[12] ;
  wire \writeptr_reg_n_0_[13] ;
  wire \writeptr_reg_n_0_[14] ;
  wire \writeptr_reg_n_0_[1] ;
  wire \writeptr_reg_n_0_[2] ;
  wire \writeptr_reg_n_0_[3] ;
  wire \writeptr_reg_n_0_[4] ;
  wire \writeptr_reg_n_0_[5] ;
  wire \writeptr_reg_n_0_[6] ;
  wire \writeptr_reg_n_0_[7] ;
  wire \writeptr_reg_n_0_[8] ;
  wire \writeptr_reg_n_0_[9] ;
  wire [3:0]NLW_empty03_carry_O_UNCONNECTED;
  wire [3:1]NLW_empty03_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_empty03_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_empty03_carry__0_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_empty03_carry__0_i_2_O_UNCONNECTED;
  wire [3:0]NLW_full03_carry_O_UNCONNECTED;
  wire [3:1]NLW_full03_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_full03_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_full03_carry__0_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_full03_carry__0_i_2_O_UNCONNECTED;
  wire [3:1]\NLW_readptr_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_readptr_reg[14]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_writeptr_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_writeptr_reg[14]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[0]_i_1 
       (.I0(\Dout[0]_i_2_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[0]_i_3_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[0]_i_4_n_0 ),
        .O(\memory[0]_14 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[0]_i_2 
       (.I0(\memory_reg[14] [0]),
        .I1(\Dout[0]_i_5_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [0]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [0]),
        .O(\Dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[0]_i_3 
       (.I0(\memory_reg[7] [0]),
        .I1(\memory_reg[6] [0]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [0]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [0]),
        .O(\Dout[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[0]_i_4 
       (.I0(\memory_reg[3] [0]),
        .I1(\memory_reg[2] [0]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [0]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [0]),
        .O(\Dout[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[0]_i_5 
       (.I0(\memory_reg[11] [0]),
        .I1(\memory_reg[10] [0]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [0]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [0]),
        .O(\Dout[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[1]_i_1 
       (.I0(\Dout[1]_i_2_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[1]_i_3_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[1]_i_4_n_0 ),
        .O(\memory[0]_14 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[1]_i_2 
       (.I0(\memory_reg[14] [1]),
        .I1(\Dout[1]_i_5_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [1]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [1]),
        .O(\Dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[1]_i_3 
       (.I0(\memory_reg[7] [1]),
        .I1(\memory_reg[6] [1]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [1]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [1]),
        .O(\Dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[1]_i_4 
       (.I0(\memory_reg[3] [1]),
        .I1(\memory_reg[2] [1]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [1]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [1]),
        .O(\Dout[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[1]_i_5 
       (.I0(\memory_reg[11] [1]),
        .I1(\memory_reg[10] [1]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [1]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [1]),
        .O(\Dout[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[2]_i_1 
       (.I0(\Dout[2]_i_2_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[2]_i_3_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[2]_i_4_n_0 ),
        .O(\memory[0]_14 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[2]_i_2 
       (.I0(\memory_reg[14] [2]),
        .I1(\Dout[2]_i_5_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [2]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [2]),
        .O(\Dout[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[2]_i_3 
       (.I0(\memory_reg[7] [2]),
        .I1(\memory_reg[6] [2]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [2]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [2]),
        .O(\Dout[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[2]_i_4 
       (.I0(\memory_reg[3] [2]),
        .I1(\memory_reg[2] [2]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [2]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [2]),
        .O(\Dout[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[2]_i_5 
       (.I0(\memory_reg[11] [2]),
        .I1(\memory_reg[10] [2]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [2]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [2]),
        .O(\Dout[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[3]_i_1 
       (.I0(\Dout[3]_i_2_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[3]_i_3_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[3]_i_4_n_0 ),
        .O(\memory[0]_14 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[3]_i_2 
       (.I0(\memory_reg[14] [3]),
        .I1(\Dout[3]_i_5_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [3]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [3]),
        .O(\Dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[3]_i_3 
       (.I0(\memory_reg[7] [3]),
        .I1(\memory_reg[6] [3]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [3]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [3]),
        .O(\Dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[3]_i_4 
       (.I0(\memory_reg[3] [3]),
        .I1(\memory_reg[2] [3]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [3]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [3]),
        .O(\Dout[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[3]_i_5 
       (.I0(\memory_reg[11] [3]),
        .I1(\memory_reg[10] [3]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [3]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [3]),
        .O(\Dout[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[4]_i_1 
       (.I0(\Dout[4]_i_2_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[4]_i_3_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[4]_i_4_n_0 ),
        .O(\memory[0]_14 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[4]_i_2 
       (.I0(\memory_reg[14] [4]),
        .I1(\Dout[4]_i_5_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [4]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [4]),
        .O(\Dout[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[4]_i_3 
       (.I0(\memory_reg[7] [4]),
        .I1(\memory_reg[6] [4]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [4]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [4]),
        .O(\Dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[4]_i_4 
       (.I0(\memory_reg[3] [4]),
        .I1(\memory_reg[2] [4]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [4]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [4]),
        .O(\Dout[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[4]_i_5 
       (.I0(\memory_reg[11] [4]),
        .I1(\memory_reg[10] [4]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [4]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [4]),
        .O(\Dout[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[5]_i_1 
       (.I0(\Dout[5]_i_2_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[5]_i_3_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[5]_i_4_n_0 ),
        .O(\memory[0]_14 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[5]_i_2 
       (.I0(\memory_reg[14] [5]),
        .I1(\Dout[5]_i_5_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [5]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [5]),
        .O(\Dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[5]_i_3 
       (.I0(\memory_reg[7] [5]),
        .I1(\memory_reg[6] [5]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [5]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [5]),
        .O(\Dout[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[5]_i_4 
       (.I0(\memory_reg[3] [5]),
        .I1(\memory_reg[2] [5]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [5]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [5]),
        .O(\Dout[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[5]_i_5 
       (.I0(\memory_reg[11] [5]),
        .I1(\memory_reg[10] [5]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [5]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [5]),
        .O(\Dout[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[6]_i_1 
       (.I0(\Dout[6]_i_2_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[6]_i_3_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[6]_i_4_n_0 ),
        .O(\memory[0]_14 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[6]_i_2 
       (.I0(\memory_reg[14] [6]),
        .I1(\Dout[6]_i_5_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [6]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [6]),
        .O(\Dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[6]_i_3 
       (.I0(\memory_reg[7] [6]),
        .I1(\memory_reg[6] [6]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [6]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [6]),
        .O(\Dout[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[6]_i_4 
       (.I0(\memory_reg[3] [6]),
        .I1(\memory_reg[2] [6]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [6]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [6]),
        .O(\Dout[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[6]_i_5 
       (.I0(\memory_reg[11] [6]),
        .I1(\memory_reg[10] [6]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [6]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [6]),
        .O(\Dout[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \Dout[7]_i_1 
       (.I0(Empty),
        .I1(Ren),
        .I2(reset),
        .O(Dout0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Dout[7]_i_2 
       (.I0(\Dout[7]_i_3_n_0 ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\Dout[7]_i_4_n_0 ),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(\Dout[7]_i_5_n_0 ),
        .O(\memory[0]_14 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[7]_i_3 
       (.I0(\memory_reg[14] [7]),
        .I1(\Dout[7]_i_6_n_0 ),
        .I2(\Dout[7]_i_7_n_0 ),
        .I3(\memory_reg[12] [7]),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\memory_reg[13] [7]),
        .O(\Dout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[7]_i_4 
       (.I0(\memory_reg[7] [7]),
        .I1(\memory_reg[6] [7]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[5] [7]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[4] [7]),
        .O(\Dout[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[7]_i_5 
       (.I0(\memory_reg[3] [7]),
        .I1(\memory_reg[2] [7]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[1] [7]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[0] [7]),
        .O(\Dout[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Dout[7]_i_6 
       (.I0(\memory_reg[11] [7]),
        .I1(\memory_reg[10] [7]),
        .I2(\readptr_reg_n_0_[1] ),
        .I3(\memory_reg[9] [7]),
        .I4(\readptr_reg_n_0_[0] ),
        .I5(\memory_reg[8] [7]),
        .O(\Dout[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \Dout[7]_i_7 
       (.I0(\readptr_reg_n_0_[1] ),
        .I1(\readptr_reg_n_0_[2] ),
        .O(\Dout[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \Dout[7]_i_8 
       (.I0(\readptr_reg_n_0_[0] ),
        .I1(\readptr_reg_n_0_[1] ),
        .I2(\readptr_reg_n_0_[2] ),
        .O(\Dout[7]_i_8_n_0 ));
  FDRE \Dout_reg[0] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [0]),
        .Q(Dout[0]),
        .R(1'b0));
  FDRE \Dout_reg[1] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [1]),
        .Q(Dout[1]),
        .R(1'b0));
  FDRE \Dout_reg[2] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [2]),
        .Q(Dout[2]),
        .R(1'b0));
  FDRE \Dout_reg[3] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [3]),
        .Q(Dout[3]),
        .R(1'b0));
  FDRE \Dout_reg[4] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [4]),
        .Q(Dout[4]),
        .R(1'b0));
  FDRE \Dout_reg[5] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [5]),
        .Q(Dout[5]),
        .R(1'b0));
  FDRE \Dout_reg[6] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [6]),
        .Q(Dout[6]),
        .R(1'b0));
  FDRE \Dout_reg[7] 
       (.C(clk),
        .CE(Dout0),
        .D(\memory[0]_14 [7]),
        .Q(Dout[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    Err_INST_0
       (.I0(Full),
        .I1(Wen),
        .I2(Empty),
        .I3(Ren),
        .O(Err));
  CARRY4 empty03_carry
       (.CI(1'b0),
        .CO({empty03_carry_n_0,empty03_carry_n_1,empty03_carry_n_2,empty03_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_empty03_carry_O_UNCONNECTED[3:0]),
        .S({empty03_carry_i_1_n_0,empty03_carry_i_2_n_0,empty03_carry_i_3_n_0,empty03_carry_i_4_n_0}));
  CARRY4 empty03_carry__0
       (.CI(empty03_carry_n_0),
        .CO({NLW_empty03_carry__0_CO_UNCONNECTED[3:1],empty03}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_empty03_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,empty03_carry__0_i_1_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty03_carry__0_i_1
       (.I0(plusOp[12]),
        .I1(\writeptr_reg_n_0_[12] ),
        .I2(plusOp[13]),
        .I3(\writeptr_reg_n_0_[13] ),
        .I4(\writeptr_reg_n_0_[14] ),
        .I5(plusOp[14]),
        .O(empty03_carry__0_i_1_n_0));
  CARRY4 empty03_carry__0_i_2
       (.CI(empty03_carry_i_5_n_0),
        .CO({NLW_empty03_carry__0_i_2_CO_UNCONNECTED[3:2],empty03_carry__0_i_2_n_2,empty03_carry__0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_empty03_carry__0_i_2_O_UNCONNECTED[3],plusOp[14:12]}),
        .S({1'b0,\readptr_reg_n_0_[14] ,\readptr_reg_n_0_[13] ,\readptr_reg_n_0_[12] }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty03_carry_i_1
       (.I0(plusOp[11]),
        .I1(\writeptr_reg_n_0_[11] ),
        .I2(plusOp[9]),
        .I3(\writeptr_reg_n_0_[9] ),
        .I4(\writeptr_reg_n_0_[10] ),
        .I5(plusOp[10]),
        .O(empty03_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty03_carry_i_2
       (.I0(plusOp[7]),
        .I1(\writeptr_reg_n_0_[7] ),
        .I2(plusOp[6]),
        .I3(\writeptr_reg_n_0_[6] ),
        .I4(\writeptr_reg_n_0_[8] ),
        .I5(plusOp[8]),
        .O(empty03_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty03_carry_i_3
       (.I0(\writeptr_reg_n_0_[3] ),
        .I1(plusOp[3]),
        .I2(plusOp[5]),
        .I3(\writeptr_reg_n_0_[5] ),
        .I4(plusOp[4]),
        .I5(\writeptr_reg_n_0_[4] ),
        .O(empty03_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty03_carry_i_4
       (.I0(\writeptr_reg_n_0_[1] ),
        .I1(plusOp[1]),
        .I2(plusOp[2]),
        .I3(\writeptr_reg_n_0_[2] ),
        .I4(plusOp[0]),
        .I5(\writeptr_reg_n_0_[0] ),
        .O(empty03_carry_i_4_n_0));
  CARRY4 empty03_carry_i_5
       (.CI(empty03_carry_i_6_n_0),
        .CO({empty03_carry_i_5_n_0,empty03_carry_i_5_n_1,empty03_carry_i_5_n_2,empty03_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[11:8]),
        .S({\readptr_reg_n_0_[11] ,\readptr_reg_n_0_[10] ,\readptr_reg_n_0_[9] ,\readptr_reg_n_0_[8] }));
  CARRY4 empty03_carry_i_6
       (.CI(empty03_carry_i_7_n_0),
        .CO({empty03_carry_i_6_n_0,empty03_carry_i_6_n_1,empty03_carry_i_6_n_2,empty03_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[7:4]),
        .S({\readptr_reg_n_0_[7] ,\readptr_reg_n_0_[6] ,\readptr_reg_n_0_[5] ,\readptr_reg_n_0_[4] }));
  CARRY4 empty03_carry_i_7
       (.CI(1'b0),
        .CO({empty03_carry_i_7_n_0,empty03_carry_i_7_n_1,empty03_carry_i_7_n_2,empty03_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\readptr_reg_n_0_[1] ,1'b0}),
        .O(plusOp[3:0]),
        .S({\readptr_reg_n_0_[3] ,\readptr_reg_n_0_[2] ,empty03_carry_i_8_n_0,\readptr_reg_n_0_[0] }));
  LUT1 #(
    .INIT(2'h1)) 
    empty03_carry_i_8
       (.I0(\readptr_reg_n_0_[1] ),
        .O(empty03_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF00B3)) 
    empty0_i_1
       (.I0(empty0_i_2_n_0),
        .I1(empty0_i_3_n_0),
        .I2(empty0_i_4_n_0),
        .I3(empty0_i_5_n_0),
        .I4(empty03),
        .I5(empty0_i_6_n_0),
        .O(empty00));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty0_i_10
       (.I0(\writeptr_reg_n_0_[4] ),
        .I1(\writeptr_reg_n_0_[5] ),
        .I2(\writeptr_reg_n_0_[7] ),
        .I3(\writeptr_reg_n_0_[6] ),
        .O(empty0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty0_i_11
       (.I0(\writeptr_reg_n_0_[9] ),
        .I1(\writeptr_reg_n_0_[8] ),
        .I2(\writeptr_reg_n_0_[11] ),
        .I3(\writeptr_reg_n_0_[10] ),
        .O(empty0_i_11_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    empty0_i_12
       (.I0(\writeptr_reg_n_0_[13] ),
        .I1(\writeptr_reg_n_0_[14] ),
        .I2(\writeptr_reg_n_0_[12] ),
        .O(empty0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    empty0_i_2
       (.I0(\readptr_reg_n_0_[3] ),
        .I1(\readptr_reg_n_0_[2] ),
        .O(empty0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    empty0_i_3
       (.I0(\readptr_reg_n_0_[12] ),
        .I1(\readptr_reg_n_0_[14] ),
        .I2(\readptr_reg_n_0_[13] ),
        .I3(empty0_i_7_n_0),
        .I4(empty0_i_8_n_0),
        .O(empty0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    empty0_i_4
       (.I0(\readptr_reg_n_0_[1] ),
        .I1(\readptr_reg_n_0_[0] ),
        .O(empty0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    empty0_i_5
       (.I0(\writeptr_reg_n_0_[3] ),
        .I1(\writeptr_reg_n_0_[2] ),
        .I2(empty0_i_9_n_0),
        .I3(empty0_i_10_n_0),
        .I4(empty0_i_11_n_0),
        .I5(empty0_i_12_n_0),
        .O(empty0_i_5_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty0_i_6
       (.I0(Wen),
        .I1(Ren),
        .O(empty0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty0_i_7
       (.I0(\readptr_reg_n_0_[9] ),
        .I1(\readptr_reg_n_0_[8] ),
        .I2(\readptr_reg_n_0_[11] ),
        .I3(\readptr_reg_n_0_[10] ),
        .O(empty0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty0_i_8
       (.I0(\readptr_reg_n_0_[6] ),
        .I1(\readptr_reg_n_0_[5] ),
        .I2(\readptr_reg_n_0_[7] ),
        .I3(\readptr_reg_n_0_[4] ),
        .O(empty0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    empty0_i_9
       (.I0(\writeptr_reg_n_0_[0] ),
        .I1(\writeptr_reg_n_0_[1] ),
        .O(empty0_i_9_n_0));
  FDPE #(
    .INIT(1'b1)) 
    empty0_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty00),
        .PRE(reset),
        .Q(Empty));
  CARRY4 full03_carry
       (.CI(1'b0),
        .CO({full03_carry_n_0,full03_carry_n_1,full03_carry_n_2,full03_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full03_carry_O_UNCONNECTED[3:0]),
        .S({full03_carry_i_1_n_0,full03_carry_i_2_n_0,full03_carry_i_3_n_0,full03_carry_i_4_n_0}));
  CARRY4 full03_carry__0
       (.CI(full03_carry_n_0),
        .CO({NLW_full03_carry__0_CO_UNCONNECTED[3:1],full03}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full03_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,full03_carry__0_i_1_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full03_carry__0_i_1
       (.I0(plusOp0_in[12]),
        .I1(\readptr_reg_n_0_[12] ),
        .I2(plusOp0_in[13]),
        .I3(\readptr_reg_n_0_[13] ),
        .I4(\readptr_reg_n_0_[14] ),
        .I5(plusOp0_in[14]),
        .O(full03_carry__0_i_1_n_0));
  CARRY4 full03_carry__0_i_2
       (.CI(full03_carry_i_5_n_0),
        .CO({NLW_full03_carry__0_i_2_CO_UNCONNECTED[3:2],full03_carry__0_i_2_n_2,full03_carry__0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_full03_carry__0_i_2_O_UNCONNECTED[3],plusOp0_in[14:12]}),
        .S({1'b0,\writeptr_reg_n_0_[14] ,\writeptr_reg_n_0_[13] ,\writeptr_reg_n_0_[12] }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full03_carry_i_1
       (.I0(plusOp0_in[11]),
        .I1(\readptr_reg_n_0_[11] ),
        .I2(plusOp0_in[9]),
        .I3(\readptr_reg_n_0_[9] ),
        .I4(\readptr_reg_n_0_[10] ),
        .I5(plusOp0_in[10]),
        .O(full03_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full03_carry_i_2
       (.I0(plusOp0_in[6]),
        .I1(\readptr_reg_n_0_[6] ),
        .I2(plusOp0_in[7]),
        .I3(\readptr_reg_n_0_[7] ),
        .I4(\readptr_reg_n_0_[8] ),
        .I5(plusOp0_in[8]),
        .O(full03_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full03_carry_i_3
       (.I0(plusOp0_in[3]),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(plusOp0_in[4]),
        .I3(\readptr_reg_n_0_[4] ),
        .I4(\readptr_reg_n_0_[5] ),
        .I5(plusOp0_in[5]),
        .O(full03_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full03_carry_i_4
       (.I0(\readptr_reg_n_0_[0] ),
        .I1(plusOp0_in[0]),
        .I2(plusOp0_in[2]),
        .I3(\readptr_reg_n_0_[2] ),
        .I4(plusOp0_in[1]),
        .I5(\readptr_reg_n_0_[1] ),
        .O(full03_carry_i_4_n_0));
  CARRY4 full03_carry_i_5
       (.CI(full03_carry_i_6_n_0),
        .CO({full03_carry_i_5_n_0,full03_carry_i_5_n_1,full03_carry_i_5_n_2,full03_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[11:8]),
        .S({\writeptr_reg_n_0_[11] ,\writeptr_reg_n_0_[10] ,\writeptr_reg_n_0_[9] ,\writeptr_reg_n_0_[8] }));
  CARRY4 full03_carry_i_6
       (.CI(full03_carry_i_7_n_0),
        .CO({full03_carry_i_6_n_0,full03_carry_i_6_n_1,full03_carry_i_6_n_2,full03_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[7:4]),
        .S({\writeptr_reg_n_0_[7] ,\writeptr_reg_n_0_[6] ,\writeptr_reg_n_0_[5] ,\writeptr_reg_n_0_[4] }));
  CARRY4 full03_carry_i_7
       (.CI(1'b0),
        .CO({full03_carry_i_7_n_0,full03_carry_i_7_n_1,full03_carry_i_7_n_2,full03_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\writeptr_reg_n_0_[1] ,1'b0}),
        .O(plusOp0_in[3:0]),
        .S({\writeptr_reg_n_0_[3] ,\writeptr_reg_n_0_[2] ,full03_carry_i_8_n_0,\writeptr_reg_n_0_[0] }));
  LUT1 #(
    .INIT(2'h1)) 
    full03_carry_i_8
       (.I0(\writeptr_reg_n_0_[1] ),
        .O(full03_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0200)) 
    full0_i_1
       (.I0(full0_i_2_n_0),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\readptr_reg_n_0_[2] ),
        .I3(full0_i_3_n_0),
        .I4(full03),
        .I5(full0_i_4_n_0),
        .O(full00));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFFFE)) 
    full0_i_2
       (.I0(empty0_i_10_n_0),
        .I1(empty0_i_11_n_0),
        .I2(empty0_i_12_n_0),
        .I3(\writeptr_reg_n_0_[0] ),
        .I4(\writeptr_reg_n_0_[1] ),
        .I5(full0_i_5_n_0),
        .O(full0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    full0_i_3
       (.I0(empty0_i_8_n_0),
        .I1(empty0_i_7_n_0),
        .I2(full0_i_6_n_0),
        .I3(\readptr_reg_n_0_[0] ),
        .I4(\readptr_reg_n_0_[1] ),
        .O(full0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    full0_i_4
       (.I0(Ren),
        .I1(Wen),
        .O(full0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    full0_i_5
       (.I0(\writeptr_reg_n_0_[2] ),
        .I1(\writeptr_reg_n_0_[3] ),
        .O(full0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    full0_i_6
       (.I0(\readptr_reg_n_0_[13] ),
        .I1(\readptr_reg_n_0_[14] ),
        .I2(\readptr_reg_n_0_[12] ),
        .O(full0_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    full0_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(full00),
        .Q(Full));
  LUT3 #(
    .INIT(8'h02)) 
    \memory[0][7]_i_1 
       (.I0(Wen),
        .I1(Full),
        .I2(empty0_i_5_n_0),
        .O(\memory[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \memory[10][7]_i_1 
       (.I0(\memory[2][7]_i_2_n_0 ),
        .I1(\memory[1][7]_i_3_n_0 ),
        .I2(\writeptr_reg_n_0_[2] ),
        .I3(\writeptr_reg_n_0_[3] ),
        .I4(\writeptr_reg_n_0_[4] ),
        .I5(\writeptr_reg_n_0_[0] ),
        .O(\memory[10]_4 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \memory[11][7]_i_1 
       (.I0(\writeptr_reg_n_0_[4] ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\memory[1][7]_i_2_n_0 ),
        .I3(\writeptr_reg_n_0_[3] ),
        .I4(\writeptr_reg_n_0_[2] ),
        .I5(\memory[1][7]_i_3_n_0 ),
        .O(\memory[11]_3 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \memory[12][7]_i_1 
       (.I0(\writeptr_reg_n_0_[4] ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\writeptr_reg_n_0_[0] ),
        .I3(\memory[12][7]_i_2_n_0 ),
        .O(\memory[12]_12 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \memory[12][7]_i_2 
       (.I0(\writeptr_reg_n_0_[3] ),
        .I1(\memory[1][7]_i_3_n_0 ),
        .I2(\writeptr_reg_n_0_[2] ),
        .I3(\writeptr_reg_n_0_[13] ),
        .I4(\writeptr_reg_n_0_[14] ),
        .I5(\memory[8][7]_i_2_n_0 ),
        .O(\memory[12][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \memory[13][7]_i_1 
       (.I0(\memory[1][7]_i_3_n_0 ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\writeptr_reg_n_0_[4] ),
        .I3(\memory[1][7]_i_2_n_0 ),
        .I4(\writeptr_reg_n_0_[3] ),
        .I5(\writeptr_reg_n_0_[2] ),
        .O(\memory[13]_8 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \memory[14][7]_i_1 
       (.I0(\memory[12][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\writeptr_reg_n_0_[4] ),
        .I3(\writeptr_reg_n_0_[0] ),
        .O(\memory[14]_11 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \memory[1][7]_i_1 
       (.I0(\memory[1][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[4] ),
        .I2(\writeptr_reg_n_0_[1] ),
        .I3(\writeptr_reg_n_0_[3] ),
        .I4(\writeptr_reg_n_0_[2] ),
        .I5(\memory[1][7]_i_3_n_0 ),
        .O(\memory[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \memory[1][7]_i_2 
       (.I0(\memory[8][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[0] ),
        .I2(\writeptr_reg_n_0_[13] ),
        .I3(\writeptr_reg_n_0_[14] ),
        .O(\memory[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \memory[1][7]_i_3 
       (.I0(\writeptr_reg_n_0_[6] ),
        .I1(\writeptr_reg_n_0_[7] ),
        .I2(\writeptr_reg_n_0_[5] ),
        .I3(\writeptr_reg_n_0_[8] ),
        .I4(Wen),
        .I5(Full),
        .O(\memory[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \memory[2][7]_i_1 
       (.I0(\memory[2][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[4] ),
        .I2(\writeptr_reg_n_0_[0] ),
        .I3(\writeptr_reg_n_0_[3] ),
        .I4(\writeptr_reg_n_0_[2] ),
        .I5(\memory[1][7]_i_3_n_0 ),
        .O(\memory[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \memory[2][7]_i_2 
       (.I0(\memory[8][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\writeptr_reg_n_0_[13] ),
        .I3(\writeptr_reg_n_0_[14] ),
        .O(\memory[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \memory[3][7]_i_1 
       (.I0(\writeptr_reg_n_0_[4] ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\memory[1][7]_i_2_n_0 ),
        .I3(\memory[1][7]_i_3_n_0 ),
        .I4(\writeptr_reg_n_0_[2] ),
        .I5(\writeptr_reg_n_0_[3] ),
        .O(\memory[3]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \memory[4][7]_i_1 
       (.I0(\memory[4][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[0] ),
        .I2(\writeptr_reg_n_0_[1] ),
        .I3(\writeptr_reg_n_0_[4] ),
        .I4(\writeptr_reg_n_0_[3] ),
        .O(\memory[4]_13 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \memory[4][7]_i_2 
       (.I0(\memory[8][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[14] ),
        .I2(\writeptr_reg_n_0_[13] ),
        .I3(\writeptr_reg_n_0_[2] ),
        .I4(\memory[1][7]_i_3_n_0 ),
        .O(\memory[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \memory[5][7]_i_1 
       (.I0(\writeptr_reg_n_0_[4] ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\memory[1][7]_i_3_n_0 ),
        .I3(\memory[1][7]_i_2_n_0 ),
        .I4(\writeptr_reg_n_0_[3] ),
        .I5(\writeptr_reg_n_0_[2] ),
        .O(\memory[5]_10 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \memory[6][7]_i_1 
       (.I0(\memory[2][7]_i_2_n_0 ),
        .I1(\writeptr_reg_n_0_[0] ),
        .I2(\writeptr_reg_n_0_[4] ),
        .I3(\writeptr_reg_n_0_[2] ),
        .I4(\writeptr_reg_n_0_[3] ),
        .I5(\memory[1][7]_i_3_n_0 ),
        .O(\memory[6]_7 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \memory[7][7]_i_1 
       (.I0(\writeptr_reg_n_0_[4] ),
        .I1(\writeptr_reg_n_0_[1] ),
        .I2(\memory[1][7]_i_2_n_0 ),
        .I3(\writeptr_reg_n_0_[3] ),
        .I4(\writeptr_reg_n_0_[2] ),
        .I5(\memory[1][7]_i_3_n_0 ),
        .O(\memory[7]_6 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \memory[8][7]_i_1 
       (.I0(\writeptr_reg_n_0_[1] ),
        .I1(\writeptr_reg_n_0_[14] ),
        .I2(\writeptr_reg_n_0_[13] ),
        .I3(\memory[8][7]_i_2_n_0 ),
        .I4(\memory[8][7]_i_3_n_0 ),
        .O(\memory[8]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \memory[8][7]_i_2 
       (.I0(\writeptr_reg_n_0_[10] ),
        .I1(\writeptr_reg_n_0_[11] ),
        .I2(\writeptr_reg_n_0_[12] ),
        .I3(\writeptr_reg_n_0_[9] ),
        .O(\memory[8][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \memory[8][7]_i_3 
       (.I0(\writeptr_reg_n_0_[0] ),
        .I1(\writeptr_reg_n_0_[4] ),
        .I2(\writeptr_reg_n_0_[3] ),
        .I3(\writeptr_reg_n_0_[2] ),
        .I4(\memory[1][7]_i_3_n_0 ),
        .O(\memory[8][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \memory[9][7]_i_1 
       (.I0(\writeptr_reg_n_0_[2] ),
        .I1(\writeptr_reg_n_0_[3] ),
        .I2(\memory[1][7]_i_3_n_0 ),
        .I3(\writeptr_reg_n_0_[1] ),
        .I4(\writeptr_reg_n_0_[4] ),
        .I5(\memory[1][7]_i_2_n_0 ),
        .O(\memory[9]_9 ));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][0] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][1] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][2] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][3] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][4] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][5] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][6] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[0][7] 
       (.C(clk),
        .CE(\memory[0][7]_i_1_n_0 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][0] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][1] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][2] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][3] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][4] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][5] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][6] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[10][7] 
       (.C(clk),
        .CE(\memory[10]_4 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[10] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][0] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[11] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][1] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[11] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][2] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[11] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][3] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[11] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][4] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[11] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][5] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[11] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][6] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[11] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[11][7] 
       (.C(clk),
        .CE(\memory[11]_3 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[11] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][0] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[12] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][1] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[12] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][2] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[12] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][3] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[12] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][4] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[12] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][5] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[12] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][6] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[12] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[12][7] 
       (.C(clk),
        .CE(\memory[12]_12 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[12] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][0] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[13] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][1] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[13] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][2] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[13] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][3] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[13] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][4] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[13] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][5] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[13] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][6] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[13] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[13][7] 
       (.C(clk),
        .CE(\memory[13]_8 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[13] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][0] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[14] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][1] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[14] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][2] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[14] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][3] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[14] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][4] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[14] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][5] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[14] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][6] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[14] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[14][7] 
       (.C(clk),
        .CE(\memory[14]_11 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[14] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][0] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][1] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][2] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][3] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][4] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][5] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][6] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[1][7] 
       (.C(clk),
        .CE(\memory[1]_2 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][0] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][1] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][2] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][3] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][4] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][5] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][6] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[2][7] 
       (.C(clk),
        .CE(\memory[2]_1 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][0] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][1] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][2] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][3] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][4] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][5] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][6] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[3][7] 
       (.C(clk),
        .CE(\memory[3]_0 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][0] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][1] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][2] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][3] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][4] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][5] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][6] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[4][7] 
       (.C(clk),
        .CE(\memory[4]_13 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][0] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][1] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][2] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][3] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][4] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][5] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][6] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[5][7] 
       (.C(clk),
        .CE(\memory[5]_10 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][0] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][1] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][2] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][3] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][4] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][5] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][6] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[6][7] 
       (.C(clk),
        .CE(\memory[6]_7 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][0] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][1] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][2] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][3] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][4] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][5] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][6] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[7][7] 
       (.C(clk),
        .CE(\memory[7]_6 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][0] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][1] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][2] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][3] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][4] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][5] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][6] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[8][7] 
       (.C(clk),
        .CE(\memory[8]_5 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[8] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][0] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[0]),
        .Q(\memory_reg[9] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][1] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[1]),
        .Q(\memory_reg[9] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][2] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[2]),
        .Q(\memory_reg[9] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][3] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[3]),
        .Q(\memory_reg[9] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][4] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[4]),
        .Q(\memory_reg[9] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][5] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[5]),
        .Q(\memory_reg[9] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][6] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[6]),
        .Q(\memory_reg[9] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \memory_reg[9][7] 
       (.C(clk),
        .CE(\memory[9]_9 ),
        .CLR(reset),
        .D(Din[7]),
        .Q(\memory_reg[9] [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \readptr[0]_i_1 
       (.I0(\readptr_reg_n_0_[0] ),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(\readptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[10]_i_1 
       (.I0(data0[10]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[11]_i_1 
       (.I0(data0[11]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[12]_i_1 
       (.I0(data0[12]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[13]_i_1 
       (.I0(data0[13]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[14]_i_1 
       (.I0(Ren),
        .I1(Empty),
        .O(Dout1));
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[14]_i_2 
       (.I0(data0[14]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[14]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \readptr[14]_i_4 
       (.I0(empty0_i_8_n_0),
        .I1(empty0_i_7_n_0),
        .I2(\readptr_reg_n_0_[13] ),
        .I3(\readptr_reg_n_0_[14] ),
        .I4(\readptr_reg_n_0_[12] ),
        .I5(\readptr[14]_i_5_n_0 ),
        .O(\readptr[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \readptr[14]_i_5 
       (.I0(\readptr_reg_n_0_[2] ),
        .I1(\readptr_reg_n_0_[3] ),
        .I2(\readptr_reg_n_0_[0] ),
        .I3(\readptr_reg_n_0_[1] ),
        .O(\readptr[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[1]_i_1 
       (.I0(data0[1]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[2]_i_1 
       (.I0(data0[2]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[3]_i_1 
       (.I0(data0[3]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[4]_i_1 
       (.I0(data0[4]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[5]_i_1 
       (.I0(data0[5]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[6]_i_1 
       (.I0(data0[6]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[7]_i_1 
       (.I0(data0[7]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[8]_i_1 
       (.I0(data0[8]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \readptr[9]_i_1 
       (.I0(data0[9]),
        .I1(\readptr[14]_i_4_n_0 ),
        .O(readptr[9]));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[0] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(\readptr[0]_i_1_n_0 ),
        .Q(\readptr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[10] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[10]),
        .Q(\readptr_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[11] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[11]),
        .Q(\readptr_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[12] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[12]),
        .Q(\readptr_reg_n_0_[12] ));
  CARRY4 \readptr_reg[12]_i_2 
       (.CI(\readptr_reg[8]_i_2_n_0 ),
        .CO({\readptr_reg[12]_i_2_n_0 ,\readptr_reg[12]_i_2_n_1 ,\readptr_reg[12]_i_2_n_2 ,\readptr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\readptr_reg_n_0_[12] ,\readptr_reg_n_0_[11] ,\readptr_reg_n_0_[10] ,\readptr_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[13] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[13]),
        .Q(\readptr_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[14] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[14]),
        .Q(\readptr_reg_n_0_[14] ));
  CARRY4 \readptr_reg[14]_i_3 
       (.CI(\readptr_reg[12]_i_2_n_0 ),
        .CO({\NLW_readptr_reg[14]_i_3_CO_UNCONNECTED [3:1],\readptr_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_readptr_reg[14]_i_3_O_UNCONNECTED [3:2],data0[14:13]}),
        .S({1'b0,1'b0,\readptr_reg_n_0_[14] ,\readptr_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[1] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[1]),
        .Q(\readptr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[2] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[2]),
        .Q(\readptr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[3] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[3]),
        .Q(\readptr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[4] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[4]),
        .Q(\readptr_reg_n_0_[4] ));
  CARRY4 \readptr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\readptr_reg[4]_i_2_n_0 ,\readptr_reg[4]_i_2_n_1 ,\readptr_reg[4]_i_2_n_2 ,\readptr_reg[4]_i_2_n_3 }),
        .CYINIT(\readptr_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\readptr_reg_n_0_[4] ,\readptr_reg_n_0_[3] ,\readptr_reg_n_0_[2] ,\readptr_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[5] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[5]),
        .Q(\readptr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[6] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[6]),
        .Q(\readptr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[7] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[7]),
        .Q(\readptr_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[8] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[8]),
        .Q(\readptr_reg_n_0_[8] ));
  CARRY4 \readptr_reg[8]_i_2 
       (.CI(\readptr_reg[4]_i_2_n_0 ),
        .CO({\readptr_reg[8]_i_2_n_0 ,\readptr_reg[8]_i_2_n_1 ,\readptr_reg[8]_i_2_n_2 ,\readptr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\readptr_reg_n_0_[8] ,\readptr_reg_n_0_[7] ,\readptr_reg_n_0_[6] ,\readptr_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \readptr_reg[9] 
       (.C(clk),
        .CE(Dout1),
        .CLR(reset),
        .D(readptr[9]),
        .Q(\readptr_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \writeptr[0]_i_1 
       (.I0(\writeptr_reg_n_0_[0] ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(\writeptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[10]_i_1 
       (.I0(\writeptr_reg[12]_i_2_n_6 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[11]_i_1 
       (.I0(\writeptr_reg[12]_i_2_n_5 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[12]_i_1 
       (.I0(\writeptr_reg[12]_i_2_n_4 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[13]_i_1 
       (.I0(\writeptr_reg[14]_i_3_n_7 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[14]_i_1 
       (.I0(Wen),
        .I1(Full),
        .O(\memory[0]1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[14]_i_2 
       (.I0(\writeptr_reg[14]_i_3_n_6 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[14]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \writeptr[14]_i_4 
       (.I0(empty0_i_10_n_0),
        .I1(empty0_i_11_n_0),
        .I2(empty0_i_12_n_0),
        .I3(\writeptr_reg_n_0_[0] ),
        .I4(\writeptr_reg_n_0_[1] ),
        .I5(full0_i_5_n_0),
        .O(\writeptr[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[1]_i_1 
       (.I0(\writeptr_reg[4]_i_2_n_7 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[2]_i_1 
       (.I0(\writeptr_reg[4]_i_2_n_6 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[3]_i_1 
       (.I0(\writeptr_reg[4]_i_2_n_5 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[4]_i_1 
       (.I0(\writeptr_reg[4]_i_2_n_4 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[5]_i_1 
       (.I0(\writeptr_reg[8]_i_2_n_7 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[6]_i_1 
       (.I0(\writeptr_reg[8]_i_2_n_6 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[7]_i_1 
       (.I0(\writeptr_reg[8]_i_2_n_5 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[8]_i_1 
       (.I0(\writeptr_reg[8]_i_2_n_4 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeptr[9]_i_1 
       (.I0(\writeptr_reg[12]_i_2_n_7 ),
        .I1(\writeptr[14]_i_4_n_0 ),
        .O(writeptr[9]));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[0] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(\writeptr[0]_i_1_n_0 ),
        .Q(\writeptr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[10] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[10]),
        .Q(\writeptr_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[11] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[11]),
        .Q(\writeptr_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[12] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[12]),
        .Q(\writeptr_reg_n_0_[12] ));
  CARRY4 \writeptr_reg[12]_i_2 
       (.CI(\writeptr_reg[8]_i_2_n_0 ),
        .CO({\writeptr_reg[12]_i_2_n_0 ,\writeptr_reg[12]_i_2_n_1 ,\writeptr_reg[12]_i_2_n_2 ,\writeptr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeptr_reg[12]_i_2_n_4 ,\writeptr_reg[12]_i_2_n_5 ,\writeptr_reg[12]_i_2_n_6 ,\writeptr_reg[12]_i_2_n_7 }),
        .S({\writeptr_reg_n_0_[12] ,\writeptr_reg_n_0_[11] ,\writeptr_reg_n_0_[10] ,\writeptr_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[13] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[13]),
        .Q(\writeptr_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[14] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[14]),
        .Q(\writeptr_reg_n_0_[14] ));
  CARRY4 \writeptr_reg[14]_i_3 
       (.CI(\writeptr_reg[12]_i_2_n_0 ),
        .CO({\NLW_writeptr_reg[14]_i_3_CO_UNCONNECTED [3:1],\writeptr_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_writeptr_reg[14]_i_3_O_UNCONNECTED [3:2],\writeptr_reg[14]_i_3_n_6 ,\writeptr_reg[14]_i_3_n_7 }),
        .S({1'b0,1'b0,\writeptr_reg_n_0_[14] ,\writeptr_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[1] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[1]),
        .Q(\writeptr_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[2] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[2]),
        .Q(\writeptr_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[3] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[3]),
        .Q(\writeptr_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[4] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[4]),
        .Q(\writeptr_reg_n_0_[4] ));
  CARRY4 \writeptr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\writeptr_reg[4]_i_2_n_0 ,\writeptr_reg[4]_i_2_n_1 ,\writeptr_reg[4]_i_2_n_2 ,\writeptr_reg[4]_i_2_n_3 }),
        .CYINIT(\writeptr_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeptr_reg[4]_i_2_n_4 ,\writeptr_reg[4]_i_2_n_5 ,\writeptr_reg[4]_i_2_n_6 ,\writeptr_reg[4]_i_2_n_7 }),
        .S({\writeptr_reg_n_0_[4] ,\writeptr_reg_n_0_[3] ,\writeptr_reg_n_0_[2] ,\writeptr_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[5] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[5]),
        .Q(\writeptr_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[6] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[6]),
        .Q(\writeptr_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[7] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[7]),
        .Q(\writeptr_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[8] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[8]),
        .Q(\writeptr_reg_n_0_[8] ));
  CARRY4 \writeptr_reg[8]_i_2 
       (.CI(\writeptr_reg[4]_i_2_n_0 ),
        .CO({\writeptr_reg[8]_i_2_n_0 ,\writeptr_reg[8]_i_2_n_1 ,\writeptr_reg[8]_i_2_n_2 ,\writeptr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\writeptr_reg[8]_i_2_n_4 ,\writeptr_reg[8]_i_2_n_5 ,\writeptr_reg[8]_i_2_n_6 ,\writeptr_reg[8]_i_2_n_7 }),
        .S({\writeptr_reg_n_0_[8] ,\writeptr_reg_n_0_[7] ,\writeptr_reg_n_0_[6] ,\writeptr_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \writeptr_reg[9] 
       (.C(clk),
        .CE(\memory[0]1 ),
        .CLR(reset),
        .D(writeptr[9]),
        .Q(\writeptr_reg_n_0_[9] ));
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
