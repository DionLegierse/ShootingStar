// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Feb 24 20:15:31 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/ShootingStar/vhdl_code/APU/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [21:0]P;

  wire [9:0]A;
  wire [11:0]B;
  wire CLK;
  wire [21:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "10" *) 
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
  (* C_P_MSB = "21" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_15 U0
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

(* C_A_WIDTH = "10" *) (* C_B_WIDTH = "12" *) (* C_CONCAT_WIDTH = "48" *) 
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
(* C_P_MSB = "21" *) (* C_REG_CONFIG = "00000000000011000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_15" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_15
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
  input [9:0]A;
  input [11:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [21:0]P;
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

  wire [9:0]A;
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
  wire [21:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "10" *) 
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
  (* C_P_MSB = "21" *) 
  (* C_REG_CONFIG = "00000000000011000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_15_viv i_synth
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
DcKulOOcZ7H9zFtNYEVGCGWrU4SGK26FQySzt6R6h91ecsUnebg9dUGw3iWV90cy8dPgvumsDS47
msVuF6St1zSbN/zvl4zRAurXf9rKHUPLtm6DLy6isXd3tlniSXUZlbWGjo+/sCrPTJpTFdjxmzOh
vi02R2NUiiPb7ctpgQA3d+B8TidRfYh5U0nknZoGasl9L8UQDybGbKMpUWjNwh3e8EQ5I+T+Ceqc
HzXTAQameHq9dqgSiXq/mKj351NSAirwoS1s5zPxxeAdVSXw99AWYyMs18cI6rfldbKzFMp3IW7Q
f4wYBRQ3BT37UN8RWT/qv2IQHPstYFG0VGalPw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OFOOERMWQVa4XQ8UYB8Z4Vga8DeR4Q9ryay40+SFqFpLKLf5ZnQjWrgpj4L97ch8YK1XxZm9WUGn
1dvOvQ8TYZY/4y+0ccCEGR7hilY7b7QBsI6SifBP/d37NACoT+S1y5EZ4JjZC2t4vQRkWxOiFzYs
6FdHzDURtH4XnwJ2YIa4QuaR+Jk2hLjm6ur3yRY+rIU6+XxFyZOhlFFq5MKTImzfN5FFx8qigEuQ
TE7IhTz6WSy7B8irv0jnEYA810eIF4BZ8ct6/4kh+FvXpb0hYVgb66yvbG7hjYToopCUWSMG4aW9
2qklch97vzB+Mr548VFqMm0zT9hbtbAJu8F5Vw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30624)
`pragma protect data_block
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
ozlSAYeOHLSPbkIF8+PG
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
