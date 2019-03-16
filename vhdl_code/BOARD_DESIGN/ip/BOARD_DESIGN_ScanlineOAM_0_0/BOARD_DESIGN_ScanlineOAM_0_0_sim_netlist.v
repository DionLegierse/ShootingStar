// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Mar 16 14:41:12 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_ScanlineOAM_0_0/BOARD_DESIGN_ScanlineOAM_0_0_sim_netlist.v
// Design      : BOARD_DESIGN_ScanlineOAM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BOARD_DESIGN_ScanlineOAM_0_0,ScanlineOAM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "ScanlineOAM,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module BOARD_DESIGN_ScanlineOAM_0_0
   (clk,
    scanline,
    ENDscanline,
    OAMin,
    OAMadd,
    SOAMout,
    SOAMpush,
    SOAMclear);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk" *) input clk;
  input [8:0]scanline;
  input ENDscanline;
  input [31:0]OAMin;
  output [6:0]OAMadd;
  output [31:0]SOAMout;
  output SOAMpush;
  output SOAMclear;

  wire ENDscanline;
  wire [6:0]OAMadd;
  wire [31:0]OAMin;
  wire SOAMclear;
  wire [31:0]SOAMout;
  wire SOAMpush;
  wire clk;
  wire [8:0]scanline;

  BOARD_DESIGN_ScanlineOAM_0_0_ScanlineOAM U0
       (.ENDscanline(ENDscanline),
        .OAMadd(OAMadd),
        .OAMin(OAMin),
        .SOAMclear(SOAMclear),
        .SOAMout(SOAMout),
        .SOAMpush(SOAMpush),
        .clk(clk),
        .scanline(scanline));
endmodule

(* ORIG_REF_NAME = "ScanlineOAM" *) 
module BOARD_DESIGN_ScanlineOAM_0_0_ScanlineOAM
   (SOAMout,
    SOAMclear,
    OAMadd,
    SOAMpush,
    ENDscanline,
    scanline,
    OAMin,
    clk);
  output [31:0]SOAMout;
  output SOAMclear;
  output [6:0]OAMadd;
  output SOAMpush;
  input ENDscanline;
  input [8:0]scanline;
  input [31:0]OAMin;
  input clk;

  wire ENDscanline;
  wire [6:0]OAMadd;
  wire [31:0]OAMin;
  wire SOAMclear;
  wire [31:0]SOAMout;
  wire SOAMout1__5_carry__0_i_1_n_0;
  wire SOAMout1__5_carry__0_i_2_n_0;
  wire SOAMout1__5_carry__0_n_3;
  wire SOAMout1__5_carry_i_1_n_0;
  wire SOAMout1__5_carry_i_2_n_0;
  wire SOAMout1__5_carry_i_3_n_0;
  wire SOAMout1__5_carry_i_4_n_0;
  wire SOAMout1__5_carry_i_5_n_0;
  wire SOAMout1__5_carry_i_6_n_0;
  wire SOAMout1__5_carry_i_7_n_0;
  wire SOAMout1__5_carry_i_8_n_0;
  wire SOAMout1__5_carry_n_0;
  wire SOAMout1__5_carry_n_1;
  wire SOAMout1__5_carry_n_2;
  wire SOAMout1__5_carry_n_3;
  wire SOAMout1_carry__0_i_1_n_0;
  wire SOAMout1_carry__0_i_2_n_0;
  wire SOAMout1_carry__0_n_3;
  wire SOAMout1_carry_i_10_n_0;
  wire SOAMout1_carry_i_1_n_0;
  wire SOAMout1_carry_i_2_n_0;
  wire SOAMout1_carry_i_3_n_0;
  wire SOAMout1_carry_i_4_n_0;
  wire SOAMout1_carry_i_5_n_0;
  wire SOAMout1_carry_i_6_n_0;
  wire SOAMout1_carry_i_7_n_0;
  wire SOAMout1_carry_i_8_n_0;
  wire SOAMout1_carry_i_9_n_0;
  wire SOAMout1_carry_n_0;
  wire SOAMout1_carry_n_1;
  wire SOAMout1_carry_n_2;
  wire SOAMout1_carry_n_3;
  wire \SOAMout[31]_i_1_n_0 ;
  wire SOAMpush;
  wire SOAMpush_i_1_n_0;
  wire clk;
  wire \objectIndex[6]_i_2_n_0 ;
  wire [6:0]plusOp;
  wire [8:0]scanline;
  wire [3:0]NLW_SOAMout1__5_carry_O_UNCONNECTED;
  wire [3:1]NLW_SOAMout1__5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_SOAMout1__5_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_SOAMout1_carry_O_UNCONNECTED;
  wire [3:1]NLW_SOAMout1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_SOAMout1_carry__0_O_UNCONNECTED;

  FDRE SOAMclear_reg
       (.C(clk),
        .CE(1'b1),
        .D(ENDscanline),
        .Q(SOAMclear),
        .R(1'b0));
  CARRY4 SOAMout1__5_carry
       (.CI(1'b0),
        .CO({SOAMout1__5_carry_n_0,SOAMout1__5_carry_n_1,SOAMout1__5_carry_n_2,SOAMout1__5_carry_n_3}),
        .CYINIT(1'b1),
        .DI({SOAMout1__5_carry_i_1_n_0,SOAMout1__5_carry_i_2_n_0,SOAMout1__5_carry_i_3_n_0,SOAMout1__5_carry_i_4_n_0}),
        .O(NLW_SOAMout1__5_carry_O_UNCONNECTED[3:0]),
        .S({SOAMout1__5_carry_i_5_n_0,SOAMout1__5_carry_i_6_n_0,SOAMout1__5_carry_i_7_n_0,SOAMout1__5_carry_i_8_n_0}));
  CARRY4 SOAMout1__5_carry__0
       (.CI(SOAMout1__5_carry_n_0),
        .CO({NLW_SOAMout1__5_carry__0_CO_UNCONNECTED[3:1],SOAMout1__5_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,SOAMout1__5_carry__0_i_1_n_0}),
        .O(NLW_SOAMout1__5_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,SOAMout1__5_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    SOAMout1__5_carry__0_i_1
       (.I0(scanline[8]),
        .I1(OAMin[31]),
        .O(SOAMout1__5_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SOAMout1__5_carry__0_i_2
       (.I0(OAMin[31]),
        .I1(scanline[8]),
        .O(SOAMout1__5_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    SOAMout1__5_carry_i_1
       (.I0(scanline[6]),
        .I1(OAMin[29]),
        .I2(OAMin[30]),
        .I3(scanline[7]),
        .O(SOAMout1__5_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    SOAMout1__5_carry_i_2
       (.I0(scanline[4]),
        .I1(OAMin[27]),
        .I2(OAMin[28]),
        .I3(scanline[5]),
        .O(SOAMout1__5_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    SOAMout1__5_carry_i_3
       (.I0(scanline[2]),
        .I1(OAMin[25]),
        .I2(OAMin[26]),
        .I3(scanline[3]),
        .O(SOAMout1__5_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    SOAMout1__5_carry_i_4
       (.I0(scanline[0]),
        .I1(OAMin[23]),
        .I2(OAMin[24]),
        .I3(scanline[1]),
        .O(SOAMout1__5_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    SOAMout1__5_carry_i_5
       (.I0(scanline[6]),
        .I1(OAMin[29]),
        .I2(scanline[7]),
        .I3(OAMin[30]),
        .O(SOAMout1__5_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    SOAMout1__5_carry_i_6
       (.I0(scanline[4]),
        .I1(OAMin[27]),
        .I2(scanline[5]),
        .I3(OAMin[28]),
        .O(SOAMout1__5_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    SOAMout1__5_carry_i_7
       (.I0(scanline[2]),
        .I1(OAMin[25]),
        .I2(scanline[3]),
        .I3(OAMin[26]),
        .O(SOAMout1__5_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    SOAMout1__5_carry_i_8
       (.I0(scanline[0]),
        .I1(OAMin[23]),
        .I2(scanline[1]),
        .I3(OAMin[24]),
        .O(SOAMout1__5_carry_i_8_n_0));
  CARRY4 SOAMout1_carry
       (.CI(1'b0),
        .CO({SOAMout1_carry_n_0,SOAMout1_carry_n_1,SOAMout1_carry_n_2,SOAMout1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({SOAMout1_carry_i_1_n_0,SOAMout1_carry_i_2_n_0,SOAMout1_carry_i_3_n_0,SOAMout1_carry_i_4_n_0}),
        .O(NLW_SOAMout1_carry_O_UNCONNECTED[3:0]),
        .S({SOAMout1_carry_i_5_n_0,SOAMout1_carry_i_6_n_0,SOAMout1_carry_i_7_n_0,SOAMout1_carry_i_8_n_0}));
  CARRY4 SOAMout1_carry__0
       (.CI(SOAMout1_carry_n_0),
        .CO({NLW_SOAMout1_carry__0_CO_UNCONNECTED[3:1],SOAMout1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,SOAMout1_carry__0_i_1_n_0}),
        .O(NLW_SOAMout1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,SOAMout1_carry__0_i_2_n_0}));
  LUT5 #(
    .INIT(32'h55560000)) 
    SOAMout1_carry__0_i_1
       (.I0(scanline[8]),
        .I1(scanline[6]),
        .I2(SOAMout1_carry_i_9_n_0),
        .I3(scanline[7]),
        .I4(OAMin[31]),
        .O(SOAMout1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    SOAMout1_carry__0_i_2
       (.I0(scanline[8]),
        .I1(scanline[6]),
        .I2(SOAMout1_carry_i_9_n_0),
        .I3(scanline[7]),
        .I4(OAMin[31]),
        .O(SOAMout1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    SOAMout1_carry_i_1
       (.I0(OAMin[29]),
        .I1(OAMin[30]),
        .I2(scanline[6]),
        .I3(SOAMout1_carry_i_9_n_0),
        .I4(scanline[7]),
        .O(SOAMout1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFF80)) 
    SOAMout1_carry_i_10
       (.I0(scanline[1]),
        .I1(scanline[0]),
        .I2(scanline[2]),
        .I3(scanline[3]),
        .O(SOAMout1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    SOAMout1_carry_i_2
       (.I0(OAMin[27]),
        .I1(OAMin[28]),
        .I2(scanline[4]),
        .I3(SOAMout1_carry_i_10_n_0),
        .I4(scanline[5]),
        .O(SOAMout1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8CCCCEEEE0000888)) 
    SOAMout1_carry_i_3
       (.I0(OAMin[25]),
        .I1(OAMin[26]),
        .I2(scanline[1]),
        .I3(scanline[0]),
        .I4(scanline[2]),
        .I5(scanline[3]),
        .O(SOAMout1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hCB80)) 
    SOAMout1_carry_i_4
       (.I0(OAMin[23]),
        .I1(scanline[0]),
        .I2(scanline[1]),
        .I3(OAMin[24]),
        .O(SOAMout1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h84422118)) 
    SOAMout1_carry_i_5
       (.I0(OAMin[29]),
        .I1(OAMin[30]),
        .I2(scanline[6]),
        .I3(SOAMout1_carry_i_9_n_0),
        .I4(scanline[7]),
        .O(SOAMout1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h84422118)) 
    SOAMout1_carry_i_6
       (.I0(OAMin[27]),
        .I1(OAMin[28]),
        .I2(scanline[4]),
        .I3(SOAMout1_carry_i_10_n_0),
        .I4(scanline[5]),
        .O(SOAMout1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h4222211118888444)) 
    SOAMout1_carry_i_7
       (.I0(OAMin[25]),
        .I1(OAMin[26]),
        .I2(scanline[1]),
        .I3(scanline[0]),
        .I4(scanline[2]),
        .I5(scanline[3]),
        .O(SOAMout1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1842)) 
    SOAMout1_carry_i_8
       (.I0(OAMin[23]),
        .I1(OAMin[24]),
        .I2(scanline[0]),
        .I3(scanline[1]),
        .O(SOAMout1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    SOAMout1_carry_i_9
       (.I0(scanline[4]),
        .I1(scanline[1]),
        .I2(scanline[0]),
        .I3(scanline[2]),
        .I4(scanline[3]),
        .I5(scanline[5]),
        .O(SOAMout1_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \SOAMout[31]_i_1 
       (.I0(SOAMout1_carry__0_n_3),
        .I1(SOAMout1__5_carry__0_n_3),
        .I2(ENDscanline),
        .O(\SOAMout[31]_i_1_n_0 ));
  FDRE \SOAMout_reg[0] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[0]),
        .Q(SOAMout[0]),
        .R(1'b0));
  FDRE \SOAMout_reg[10] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[10]),
        .Q(SOAMout[10]),
        .R(1'b0));
  FDRE \SOAMout_reg[11] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[11]),
        .Q(SOAMout[11]),
        .R(1'b0));
  FDRE \SOAMout_reg[12] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[12]),
        .Q(SOAMout[12]),
        .R(1'b0));
  FDRE \SOAMout_reg[13] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[13]),
        .Q(SOAMout[13]),
        .R(1'b0));
  FDRE \SOAMout_reg[14] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[14]),
        .Q(SOAMout[14]),
        .R(1'b0));
  FDRE \SOAMout_reg[15] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[15]),
        .Q(SOAMout[15]),
        .R(1'b0));
  FDRE \SOAMout_reg[16] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[16]),
        .Q(SOAMout[16]),
        .R(1'b0));
  FDRE \SOAMout_reg[17] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[17]),
        .Q(SOAMout[17]),
        .R(1'b0));
  FDRE \SOAMout_reg[18] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[18]),
        .Q(SOAMout[18]),
        .R(1'b0));
  FDRE \SOAMout_reg[19] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[19]),
        .Q(SOAMout[19]),
        .R(1'b0));
  FDRE \SOAMout_reg[1] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[1]),
        .Q(SOAMout[1]),
        .R(1'b0));
  FDRE \SOAMout_reg[20] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[20]),
        .Q(SOAMout[20]),
        .R(1'b0));
  FDRE \SOAMout_reg[21] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[21]),
        .Q(SOAMout[21]),
        .R(1'b0));
  FDRE \SOAMout_reg[22] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[22]),
        .Q(SOAMout[22]),
        .R(1'b0));
  FDRE \SOAMout_reg[23] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[23]),
        .Q(SOAMout[23]),
        .R(1'b0));
  FDRE \SOAMout_reg[24] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[24]),
        .Q(SOAMout[24]),
        .R(1'b0));
  FDRE \SOAMout_reg[25] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[25]),
        .Q(SOAMout[25]),
        .R(1'b0));
  FDRE \SOAMout_reg[26] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[26]),
        .Q(SOAMout[26]),
        .R(1'b0));
  FDRE \SOAMout_reg[27] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[27]),
        .Q(SOAMout[27]),
        .R(1'b0));
  FDRE \SOAMout_reg[28] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[28]),
        .Q(SOAMout[28]),
        .R(1'b0));
  FDRE \SOAMout_reg[29] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[29]),
        .Q(SOAMout[29]),
        .R(1'b0));
  FDRE \SOAMout_reg[2] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[2]),
        .Q(SOAMout[2]),
        .R(1'b0));
  FDRE \SOAMout_reg[30] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[30]),
        .Q(SOAMout[30]),
        .R(1'b0));
  FDRE \SOAMout_reg[31] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[31]),
        .Q(SOAMout[31]),
        .R(1'b0));
  FDRE \SOAMout_reg[3] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[3]),
        .Q(SOAMout[3]),
        .R(1'b0));
  FDRE \SOAMout_reg[4] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[4]),
        .Q(SOAMout[4]),
        .R(1'b0));
  FDRE \SOAMout_reg[5] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[5]),
        .Q(SOAMout[5]),
        .R(1'b0));
  FDRE \SOAMout_reg[6] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[6]),
        .Q(SOAMout[6]),
        .R(1'b0));
  FDRE \SOAMout_reg[7] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[7]),
        .Q(SOAMout[7]),
        .R(1'b0));
  FDRE \SOAMout_reg[8] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[8]),
        .Q(SOAMout[8]),
        .R(1'b0));
  FDRE \SOAMout_reg[9] 
       (.C(clk),
        .CE(\SOAMout[31]_i_1_n_0 ),
        .D(OAMin[9]),
        .Q(SOAMout[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    SOAMpush_i_1
       (.I0(SOAMpush),
        .I1(ENDscanline),
        .I2(SOAMout1__5_carry__0_n_3),
        .I3(SOAMout1_carry__0_n_3),
        .O(SOAMpush_i_1_n_0));
  FDRE SOAMpush_reg
       (.C(clk),
        .CE(1'b1),
        .D(SOAMpush_i_1_n_0),
        .Q(SOAMpush),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \objectIndex[0]_i_1 
       (.I0(OAMadd[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \objectIndex[1]_i_1 
       (.I0(OAMadd[0]),
        .I1(OAMadd[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \objectIndex[2]_i_1 
       (.I0(OAMadd[0]),
        .I1(OAMadd[1]),
        .I2(OAMadd[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \objectIndex[3]_i_1 
       (.I0(OAMadd[1]),
        .I1(OAMadd[0]),
        .I2(OAMadd[2]),
        .I3(OAMadd[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \objectIndex[4]_i_1 
       (.I0(OAMadd[2]),
        .I1(OAMadd[0]),
        .I2(OAMadd[1]),
        .I3(OAMadd[3]),
        .I4(OAMadd[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \objectIndex[5]_i_1 
       (.I0(OAMadd[3]),
        .I1(OAMadd[1]),
        .I2(OAMadd[0]),
        .I3(OAMadd[2]),
        .I4(OAMadd[4]),
        .I5(OAMadd[5]),
        .O(plusOp[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \objectIndex[6]_i_1 
       (.I0(\objectIndex[6]_i_2_n_0 ),
        .I1(OAMadd[5]),
        .I2(OAMadd[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \objectIndex[6]_i_2 
       (.I0(OAMadd[4]),
        .I1(OAMadd[2]),
        .I2(OAMadd[0]),
        .I3(OAMadd[1]),
        .I4(OAMadd[3]),
        .O(\objectIndex[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \objectIndex_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(OAMadd[0]),
        .R(ENDscanline));
  FDRE #(
    .INIT(1'b0)) 
    \objectIndex_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(OAMadd[1]),
        .R(ENDscanline));
  FDRE #(
    .INIT(1'b0)) 
    \objectIndex_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(OAMadd[2]),
        .R(ENDscanline));
  FDRE #(
    .INIT(1'b0)) 
    \objectIndex_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(OAMadd[3]),
        .R(ENDscanline));
  FDRE #(
    .INIT(1'b0)) 
    \objectIndex_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(OAMadd[4]),
        .R(ENDscanline));
  FDRE #(
    .INIT(1'b0)) 
    \objectIndex_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(OAMadd[5]),
        .R(ENDscanline));
  FDRE #(
    .INIT(1'b0)) 
    \objectIndex_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(OAMadd[6]),
        .R(ENDscanline));
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
