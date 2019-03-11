// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Mar 11 21:15:50 2019
// Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_COMMAND_PROCESSOR_0_0/BOARD_DESIGN_COMMAND_PROCESSOR_0_0_sim_netlist.v
// Design      : BOARD_DESIGN_COMMAND_PROCESSOR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BOARD_DESIGN_COMMAND_PROCESSOR_0_0,COMMAND_PROCESSOR,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "COMMAND_PROCESSOR,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module BOARD_DESIGN_COMMAND_PROCESSOR_0_0
   (clk,
    mc_data,
    mc_clk,
    x_loc_sprite,
    y_loc_sprite,
    sprite_memory_loc,
    sprite_attribute,
    sprite_register_loc,
    start_music,
    reset_APU,
    start_addres_APU);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk" *) input clk;
  input [7:0]mc_data;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 mc_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME mc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_mc_clk_0" *) input mc_clk;
  output [8:0]x_loc_sprite;
  output [8:0]y_loc_sprite;
  output [12:0]sprite_memory_loc;
  output [7:0]sprite_attribute;
  output [6:0]sprite_register_loc;
  output start_music;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_APU RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_APU, POLARITY ACTIVE_LOW" *) output reset_APU;
  output [10:0]start_addres_APU;

  wire \<const0> ;

  assign reset_APU = \<const0> ;
  assign sprite_attribute[7] = \<const0> ;
  assign sprite_attribute[6] = \<const0> ;
  assign sprite_attribute[5] = \<const0> ;
  assign sprite_attribute[4] = \<const0> ;
  assign sprite_attribute[3] = \<const0> ;
  assign sprite_attribute[2] = \<const0> ;
  assign sprite_attribute[1] = \<const0> ;
  assign sprite_attribute[0] = \<const0> ;
  assign sprite_memory_loc[12] = \<const0> ;
  assign sprite_memory_loc[11] = \<const0> ;
  assign sprite_memory_loc[10] = \<const0> ;
  assign sprite_memory_loc[9] = \<const0> ;
  assign sprite_memory_loc[8] = \<const0> ;
  assign sprite_memory_loc[7] = \<const0> ;
  assign sprite_memory_loc[6] = \<const0> ;
  assign sprite_memory_loc[5] = \<const0> ;
  assign sprite_memory_loc[4] = \<const0> ;
  assign sprite_memory_loc[3] = \<const0> ;
  assign sprite_memory_loc[2] = \<const0> ;
  assign sprite_memory_loc[1] = \<const0> ;
  assign sprite_memory_loc[0] = \<const0> ;
  assign sprite_register_loc[6] = \<const0> ;
  assign sprite_register_loc[5] = \<const0> ;
  assign sprite_register_loc[4] = \<const0> ;
  assign sprite_register_loc[3] = \<const0> ;
  assign sprite_register_loc[2] = \<const0> ;
  assign sprite_register_loc[1] = \<const0> ;
  assign sprite_register_loc[0] = \<const0> ;
  assign start_addres_APU[10] = \<const0> ;
  assign start_addres_APU[9] = \<const0> ;
  assign start_addres_APU[8] = \<const0> ;
  assign start_addres_APU[7] = \<const0> ;
  assign start_addres_APU[6] = \<const0> ;
  assign start_addres_APU[5] = \<const0> ;
  assign start_addres_APU[4] = \<const0> ;
  assign start_addres_APU[3] = \<const0> ;
  assign start_addres_APU[2] = \<const0> ;
  assign start_addres_APU[1] = \<const0> ;
  assign start_addres_APU[0] = \<const0> ;
  assign start_music = \<const0> ;
  assign x_loc_sprite[8] = \<const0> ;
  assign x_loc_sprite[7] = \<const0> ;
  assign x_loc_sprite[6] = \<const0> ;
  assign x_loc_sprite[5] = \<const0> ;
  assign x_loc_sprite[4] = \<const0> ;
  assign x_loc_sprite[3] = \<const0> ;
  assign x_loc_sprite[2] = \<const0> ;
  assign x_loc_sprite[1] = \<const0> ;
  assign x_loc_sprite[0] = \<const0> ;
  assign y_loc_sprite[8] = \<const0> ;
  assign y_loc_sprite[7] = \<const0> ;
  assign y_loc_sprite[6] = \<const0> ;
  assign y_loc_sprite[5] = \<const0> ;
  assign y_loc_sprite[4] = \<const0> ;
  assign y_loc_sprite[3] = \<const0> ;
  assign y_loc_sprite[2] = \<const0> ;
  assign y_loc_sprite[1] = \<const0> ;
  assign y_loc_sprite[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
