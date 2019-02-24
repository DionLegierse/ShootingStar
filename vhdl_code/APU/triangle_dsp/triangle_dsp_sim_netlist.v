// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Feb 24 20:46:46 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim f:/ShootingStar/vhdl_code/APU/triangle_dsp/triangle_dsp_sim_netlist.v
// Design      : triangle_dsp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "triangle_dsp,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module triangle_dsp
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [2:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [14:0]P;

  wire [2:0]A;
  wire [11:0]B;
  wire CLK;
  wire [14:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "3" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "14" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  triangle_dsp_xbip_dsp48_macro_v3_0_15 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "3" *) (* C_B_WIDTH = "12" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "-1" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "14" *) (* C_REG_CONFIG = "00000000000011000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_15" *) (* downgradeipidentifiedwarnings = "yes" *) 
module triangle_dsp_xbip_dsp48_macro_v3_0_15
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [2:0]A;
  input [11:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [14:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [2:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [11:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [14:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "3" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "14" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  triangle_dsp_xbip_dsp48_macro_v3_0_15_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nBlnHi3Kp5ztG6vZNdMONLkWpVVpg2r7ZP2rdZEfioM4XUkRew1oDSrAozd60ivTx8PLiOPPRAJo
pOZd0llK5g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Kcs1MQe5BgqnN7tbrZMcEiZZSCl175bCFWu5jwqWj4RFDG/n9GjuiwAuZ9v2vQZcAxVE3h5w+TBc
Bk1lc9zc7T3tnbm4qpXepckPAqiTqMURQNO28XRRz5BSiTktDkY/dUGVSA0qxTdPGlkYZSpuFpl6
PjievZtLxEtp4cSEwJE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aG1w9h5Ae0N98iRQuCMUHQUwBA2KqP2Fbb/SCJOtosbKahOePVIWiIrkhbLMsr1/omYs/Q6fEj2G
uYHIEBLZLRANmjJt9kQu/jIzWAf0nK3OJkUCAMefyflw5y403PkpWIAHXqlArlaCVW2gWxzVxt9G
js0j3l7Y2dpahAMg2LgLgWyMj2rS0kjr+fbTwgci9As5Ndo6CDyXo7EcixOTvkWvqwxJaYFbtcFF
K1j0WC1jYCLSiEJ2ZB5/ODVnSmn3AWSksydgQ3iYMKpYPNlAwFN7t7HacZ95HxO8MGoNyjnDje35
EzrNZrAA4vUP8Y6En1JgkF6RLt8PJJfLc+wq+g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BYWKn+AL7Gth8aEXuzL+rpOrNP6Ug8Hc9TpmOLZLrPZ4boPFPd89qpRHOY6mfox3M09mZK4TuSx+
5DykxgtH7Gu2DHCqtg3Tg7eFTAzurR/EqXoPhuHQIzs5Y1T/5WlIb0c4l9CNWdc5TBVfbmKR+x4N
A259tw/6q69OtmAqFiB+p9GY8lyjNDWu07DJlxI2l6wSRYy8YqD7K1OrLRXxY6gaTqDWDXlcO+ia
T5/harPHjTiNAFO8U6YTfRQtNJUrOnNfSAnAtjrlegYGNcEl6u4sqYE/X/Pajk2n+1+KvJ6PR8L9
bdrCByV81f1z88nc1Twl6LUe54VQdfe5W+EOpQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iJnLIMkUEl7Btn7IVUeqK6xbyk9c7fsISctkfj2c6osS1GvgHXWHkJPpNPHTeIth7zUvkUlYB/Jd
M5kNK3leJJj5TaqOLOh+cyWqEGY64EruHImVJasbLaVn3LUh67wEEMFoKhP9/KjqLsL3oFrKnU4i
JzYtVgZoCfaHBaIyRC6wms7z/YKP2Khya0dzmYHMmbdm9k2rL27fVLJcCEMSO1Dsz2D/qXnCFI8T
NHnM3Fv/xF2jOhtDIDqWGakvXk7l+ddg95MJ+5A578jqVX81M0WJwbHlaIJIG5uwIzTI46+pYw0Z
4sgDMkrl/aXSFYB5PU2L4hhVeq7e6c0dqUOVSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sdiBszQspScY+UIwuaohSbs1PAZL6bemuOZlFLGklUXNsz7r1265PlclnSy9m0ilIWxY0HJkGEtl
Rs/zfRlF9Ag/CEiBQ4lStxiXa4cbOvNwkp9j1BXCYCAbMsw83x+ZvpyoQTXRfcBBvSAbtpFDJ7ar
qlJbO6erRjpDP373GIY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUV1ae8Aw6l0UtyVDuKmrMQwdVI8vrJTYSKwNJ+/x3fs7qy5B2fVzNE8tFRcie7NykwBpJV9lQNN
iNNcReVBjS/oh7txKer0RVLuw2jQCeQBSixWXwdIra9CsrIF5V2GUuY3dDh9ofaqsgbKSlDNLzzm
0lHhjAw4Nbk9kwoo5NP9xZYaLPCNo4Qqi0A9Px++Zu3V7DcbPDDDQnNEzgQhcN8ilscDyGVOeiHu
/xJbo1lLkpyrDciztvHYqwj9O/kSyF1PikDg8xEaOx1QQVvaz7r51DlXlPCpqCUyFGEeiIrPCMHf
8rf7t9DpvBEVPF3eaofCDfiW9vWmbfgffwtMYg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M5nfvyzWTczR025HUYlliujceZL55yZxuQyDiZ0JR+gF8VdqMJjPf3PaAgxvEv5fiezLuhZzaZVc
HWJbKKkxt+/mkrFH7YEYttaDC2XiF4eZ0bEXTwYumBXdb+eih4IGr3m2hkZcb+SItXlHRaNN0mwT
4J9bVK/j7XnGa0wIgDvHBjxBz9Vbm+6iTqiBIZt+gbveKDNNMHuKhMzYvf8fQeHUWFQajJ954kVr
hRQLP4DYNI1c1Bmde3ghOkQo83qwZz2kiJqFz7g1FcQ38uyIcWUdtYSUOCAhwkMS+km2ZW1wbLYi
RSijZEyQmpBNS9qmqPq5jxWDzm+cF3+4Nx2gcg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hms8IOg/Ns2nIafvCaJROAbjFtUoZteNzyPICS0jYUwg8sndiL2nm5wM/G0cKJVkXZWArsqpp8L4
yXcxwMuyU8PzfL3ZL7nsHgiNP1OjKoraGc6kmapcDsdnBiPc9GInLA/rq8GKRxAFhq83ypJfIa35
zUfa2YaxylNsAx4uldiZrrCVZOguNnb2UtWwV0IWm2G1sm2cSaWefafM+yqh65gb8XaNopEJycbs
tKN8vPyciIhWCwUNqNQz/dh47W9VGo3aHR4hNaoPWtB6TvwUyOusAgiQZFDrjtfEJq9CV6sqmv7c
hsdEYpanABXMhVFQror8+FJUn/F+r9yjZ1J01g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30848)
`pragma protect data_block
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
vCH2tdBFLMe4EKY=
`pragma protect end_protected
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
