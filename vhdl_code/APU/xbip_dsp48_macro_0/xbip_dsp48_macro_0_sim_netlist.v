// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Feb 24 18:32:00 2019
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [18:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [29:0]P;

  wire [18:0]A;
  wire [10:0]B;
  wire CLK;
  wire [29:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "19" *) 
  (* C_B_WIDTH = "11" *) 
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
  (* C_P_MSB = "29" *) 
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

(* C_A_WIDTH = "19" *) (* C_B_WIDTH = "11" *) (* C_CONCAT_WIDTH = "48" *) 
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
(* C_P_MSB = "29" *) (* C_REG_CONFIG = "00000000000011000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  input [18:0]A;
  input [10:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [29:0]P;
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

  wire [18:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [10:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [29:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "19" *) 
  (* C_B_WIDTH = "11" *) 
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
  (* C_P_MSB = "29" *) 
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
bpdZVUtbANzn4F82hmG9Uaml8jtTiqJD+iG+cpQunE7Osv4lhi/Mwjnj8+ZkTVambHtsGY/eTlzA
rbUgWRciabgj5xGyLMOwPlAuM2K7UE50U0MFDFlC2TCGG6wDGdar0Ip56F+9FtfqjOXdUxRSg+9G
EBDKyzyrtSzMg82vDQKYfvOHAqMUdjrWTdeBkeye+daX4CnlghlIdA+Ya+BzkBypl4XrZG3V0DJi
Z+AB/RUtgv2bjKGFlJ6kYUvIssootGplepheOSBjBuLZ6Vmo3rJ3WHokZ/ZFs4jzQ0Cs8zdeKTQW
kdLFWhouUJ57Au1yPPkS96a3Rin+4aRzhEClWg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5xzLJIJf6oxu3pRoMR7J6zpRdNPJ2FoVqg8yjqYVlsheg+qpPpEwjWcLf+JGtXMX6Mcl3AKvbHC
hGT4xpzicEMW9BNpApbg5tgd/h/+MDGoD1NgDJCvZSPHe+GbeCbZ+UN8wndmAkPBOL2crdp6xmej
M4t7WxYP/taFYCF8BxaSUvM6DfqZWgUeUIFlun8qFq5Ofy7QNuUOcfRDWL2CvN6uqnO+d2BgLBQQ
YGfFce3mlaGvYg6Dr6Meo9lkjNkF9xdzI5fh+3wXNmZVfAXkPcG/bSWX2voi5OlESiTaRVZoh+GL
5vOUdEU7B8nBYtz5veGPNSKzfop2FqJHfqwxLA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30256)
`pragma protect data_block
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
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
