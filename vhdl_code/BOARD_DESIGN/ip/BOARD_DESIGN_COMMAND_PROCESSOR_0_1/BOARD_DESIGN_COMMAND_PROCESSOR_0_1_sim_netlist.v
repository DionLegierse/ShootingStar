// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 12 14:11:52 2019
// Host        : LAPTOP-MCELIKGK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/djleg/Documents/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_COMMAND_PROCESSOR_0_1/BOARD_DESIGN_COMMAND_PROCESSOR_0_1_sim_netlist.v
// Design      : BOARD_DESIGN_COMMAND_PROCESSOR_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BOARD_DESIGN_COMMAND_PROCESSOR_0_1,COMMAND_PROCESSOR,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "COMMAND_PROCESSOR,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module BOARD_DESIGN_COMMAND_PROCESSOR_0_1
   (clk,
    mc_data,
    mc_clk,
    mc_register_select,
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
  input mc_register_select;
  output [8:0]x_loc_sprite;
  output [8:0]y_loc_sprite;
  output [12:0]sprite_memory_loc;
  output [7:0]sprite_attribute;
  output [6:0]sprite_register_loc;
  output start_music;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_APU RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_APU, POLARITY ACTIVE_LOW" *) output reset_APU;
  output [10:0]start_addres_APU;

  wire clk;
  wire mc_clk;
  wire [7:0]mc_data;
  wire mc_register_select;
  wire reset_APU;
  wire [7:0]sprite_attribute;
  wire [12:0]sprite_memory_loc;
  wire [6:0]sprite_register_loc;
  wire [10:0]start_addres_APU;
  wire start_music;
  wire [8:0]x_loc_sprite;
  wire [8:0]y_loc_sprite;

  BOARD_DESIGN_COMMAND_PROCESSOR_0_1_COMMAND_PROCESSOR U0
       (.clk(clk),
        .mc_clk(mc_clk),
        .mc_data(mc_data),
        .mc_register_select(mc_register_select),
        .reset_APU(reset_APU),
        .sprite_attribute(sprite_attribute),
        .sprite_memory_loc(sprite_memory_loc),
        .sprite_register_loc(sprite_register_loc),
        .start_addres_APU(start_addres_APU),
        .start_music(start_music),
        .x_loc_sprite(x_loc_sprite),
        .y_loc_sprite(y_loc_sprite));
endmodule

(* ORIG_REF_NAME = "COMMAND_PROCESSOR" *) 
module BOARD_DESIGN_COMMAND_PROCESSOR_0_1_COMMAND_PROCESSOR
   (x_loc_sprite,
    y_loc_sprite,
    sprite_memory_loc,
    sprite_attribute,
    sprite_register_loc,
    start_addres_APU,
    start_music,
    reset_APU,
    mc_data,
    clk,
    mc_register_select,
    mc_clk);
  output [8:0]x_loc_sprite;
  output [8:0]y_loc_sprite;
  output [12:0]sprite_memory_loc;
  output [7:0]sprite_attribute;
  output [6:0]sprite_register_loc;
  output [10:0]start_addres_APU;
  output start_music;
  output reset_APU;
  input [7:0]mc_data;
  input clk;
  input mc_register_select;
  input mc_clk;

  wire [7:4]address;
  wire address_0;
  wire \address_reg_n_0_[0] ;
  wire \address_reg_n_0_[1] ;
  wire \address_reg_n_0_[2] ;
  wire \address_reg_n_0_[3] ;
  wire clk;
  wire mc_clk;
  wire mc_clk_meta;
  wire mc_clk_stable_new;
  wire mc_clk_stable_old;
  wire [7:0]mc_data;
  wire [7:0]mc_data_meta;
  wire \mc_data_stable_reg_n_0_[0] ;
  wire \mc_data_stable_reg_n_0_[1] ;
  wire \mc_data_stable_reg_n_0_[2] ;
  wire \mc_data_stable_reg_n_0_[3] ;
  wire \mc_data_stable_reg_n_0_[4] ;
  wire \mc_data_stable_reg_n_0_[5] ;
  wire \mc_data_stable_reg_n_0_[6] ;
  wire mc_register_select;
  wire mc_select_meta;
  wire mc_select_stable;
  wire p_0_in;
  wire reset_APU;
  wire reset_APU_i_1_n_0;
  wire [7:0]sprite_attribute;
  wire \sprite_attribute[7]_i_1_n_0 ;
  wire [12:0]sprite_memory_loc;
  wire \sprite_memory_loc[12]_i_1_n_0 ;
  wire \sprite_memory_loc[7]_i_1_n_0 ;
  wire [6:0]sprite_register_loc;
  wire \sprite_register_loc[6]_i_1_n_0 ;
  wire [10:0]start_addres_APU;
  wire \start_addres_APU[10]_i_1_n_0 ;
  wire \start_addres_APU[10]_i_2_n_0 ;
  wire \start_addres_APU[7]_i_1_n_0 ;
  wire \start_addres_APU[8]_i_1_n_0 ;
  wire \start_addres_APU[9]_i_1_n_0 ;
  wire start_music;
  wire start_music_i_1_n_0;
  wire start_music_i_2_n_0;
  wire start_music_i_3_n_0;
  wire [8:0]x_loc_sprite;
  wire \x_loc_sprite[7]_i_1_n_0 ;
  wire \x_loc_sprite[7]_i_2_n_0 ;
  wire \x_loc_sprite[8]_i_1_n_0 ;
  wire \x_loc_sprite[8]_i_2_n_0 ;
  wire \x_loc_sprite[8]_i_3_n_0 ;
  wire \x_loc_sprite[8]_i_4_n_0 ;
  wire [8:0]y_loc_sprite;
  wire \y_loc_sprite[7]_i_1_n_0 ;
  wire \y_loc_sprite[8]_i_1_n_0 ;
  wire \y_loc_sprite[8]_i_2_n_0 ;

  LUT3 #(
    .INIT(8'h40)) 
    \address[7]_i_1 
       (.I0(mc_clk_stable_old),
        .I1(mc_clk_stable_new),
        .I2(mc_select_stable),
        .O(address_0));
  FDRE \address_reg[0] 
       (.C(clk),
        .CE(address_0),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(\address_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \address_reg[1] 
       (.C(clk),
        .CE(address_0),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(\address_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \address_reg[2] 
       (.C(clk),
        .CE(address_0),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(\address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \address_reg[3] 
       (.C(clk),
        .CE(address_0),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(\address_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \address_reg[4] 
       (.C(clk),
        .CE(address_0),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(address[4]),
        .R(1'b0));
  FDRE \address_reg[5] 
       (.C(clk),
        .CE(address_0),
        .D(\mc_data_stable_reg_n_0_[5] ),
        .Q(address[5]),
        .R(1'b0));
  FDRE \address_reg[6] 
       (.C(clk),
        .CE(address_0),
        .D(\mc_data_stable_reg_n_0_[6] ),
        .Q(address[6]),
        .R(1'b0));
  FDRE \address_reg[7] 
       (.C(clk),
        .CE(address_0),
        .D(p_0_in),
        .Q(address[7]),
        .R(1'b0));
  FDRE mc_clk_meta_reg
       (.C(clk),
        .CE(1'b1),
        .D(mc_clk),
        .Q(mc_clk_meta),
        .R(1'b0));
  FDRE mc_clk_stable_new_reg
       (.C(clk),
        .CE(1'b1),
        .D(mc_clk_meta),
        .Q(mc_clk_stable_new),
        .R(1'b0));
  FDRE mc_clk_stable_old_reg
       (.C(clk),
        .CE(1'b1),
        .D(mc_clk_stable_new),
        .Q(mc_clk_stable_old),
        .R(1'b0));
  FDRE \mc_data_meta_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[0]),
        .Q(mc_data_meta[0]),
        .R(1'b0));
  FDRE \mc_data_meta_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[1]),
        .Q(mc_data_meta[1]),
        .R(1'b0));
  FDRE \mc_data_meta_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[2]),
        .Q(mc_data_meta[2]),
        .R(1'b0));
  FDRE \mc_data_meta_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[3]),
        .Q(mc_data_meta[3]),
        .R(1'b0));
  FDRE \mc_data_meta_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[4]),
        .Q(mc_data_meta[4]),
        .R(1'b0));
  FDRE \mc_data_meta_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[5]),
        .Q(mc_data_meta[5]),
        .R(1'b0));
  FDRE \mc_data_meta_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[6]),
        .Q(mc_data_meta[6]),
        .R(1'b0));
  FDRE \mc_data_meta_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data[7]),
        .Q(mc_data_meta[7]),
        .R(1'b0));
  FDRE \mc_data_stable_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[0]),
        .Q(\mc_data_stable_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mc_data_stable_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[1]),
        .Q(\mc_data_stable_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mc_data_stable_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[2]),
        .Q(\mc_data_stable_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mc_data_stable_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[3]),
        .Q(\mc_data_stable_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mc_data_stable_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[4]),
        .Q(\mc_data_stable_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mc_data_stable_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[5]),
        .Q(\mc_data_stable_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mc_data_stable_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[6]),
        .Q(\mc_data_stable_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mc_data_stable_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(mc_data_meta[7]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE mc_select_meta_reg
       (.C(clk),
        .CE(1'b1),
        .D(mc_register_select),
        .Q(mc_select_meta),
        .R(1'b0));
  FDRE mc_select_stable_reg
       (.C(clk),
        .CE(1'b1),
        .D(mc_select_meta),
        .Q(mc_select_stable),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    reset_APU_i_1
       (.I0(\mc_data_stable_reg_n_0_[1] ),
        .I1(\mc_data_stable_reg_n_0_[0] ),
        .I2(\mc_data_stable_reg_n_0_[3] ),
        .I3(\mc_data_stable_reg_n_0_[2] ),
        .I4(start_music_i_2_n_0),
        .I5(start_music_i_3_n_0),
        .O(reset_APU_i_1_n_0));
  FDRE reset_APU_reg
       (.C(clk),
        .CE(1'b1),
        .D(reset_APU_i_1_n_0),
        .Q(reset_APU),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \sprite_attribute[7]_i_1 
       (.I0(\x_loc_sprite[7]_i_2_n_0 ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\address_reg_n_0_[3] ),
        .I3(\address_reg_n_0_[2] ),
        .I4(\address_reg_n_0_[1] ),
        .I5(\x_loc_sprite[8]_i_4_n_0 ),
        .O(\sprite_attribute[7]_i_1_n_0 ));
  FDRE \sprite_attribute_reg[0] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(sprite_attribute[0]),
        .R(1'b0));
  FDRE \sprite_attribute_reg[1] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(sprite_attribute[1]),
        .R(1'b0));
  FDRE \sprite_attribute_reg[2] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(sprite_attribute[2]),
        .R(1'b0));
  FDRE \sprite_attribute_reg[3] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(sprite_attribute[3]),
        .R(1'b0));
  FDRE \sprite_attribute_reg[4] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(sprite_attribute[4]),
        .R(1'b0));
  FDRE \sprite_attribute_reg[5] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[5] ),
        .Q(sprite_attribute[5]),
        .R(1'b0));
  FDRE \sprite_attribute_reg[6] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[6] ),
        .Q(sprite_attribute[6]),
        .R(1'b0));
  FDRE \sprite_attribute_reg[7] 
       (.C(clk),
        .CE(\sprite_attribute[7]_i_1_n_0 ),
        .D(p_0_in),
        .Q(sprite_attribute[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \sprite_memory_loc[12]_i_1 
       (.I0(\address_reg_n_0_[2] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\address_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[3] ),
        .I4(\x_loc_sprite[7]_i_2_n_0 ),
        .I5(\x_loc_sprite[8]_i_4_n_0 ),
        .O(\sprite_memory_loc[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \sprite_memory_loc[7]_i_1 
       (.I0(\address_reg_n_0_[0] ),
        .I1(\address_reg_n_0_[2] ),
        .I2(\address_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[3] ),
        .I4(\x_loc_sprite[7]_i_2_n_0 ),
        .I5(\x_loc_sprite[8]_i_4_n_0 ),
        .O(\sprite_memory_loc[7]_i_1_n_0 ));
  FDRE \sprite_memory_loc_reg[0] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(sprite_memory_loc[0]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[10] 
       (.C(clk),
        .CE(\sprite_memory_loc[12]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(sprite_memory_loc[10]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[11] 
       (.C(clk),
        .CE(\sprite_memory_loc[12]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(sprite_memory_loc[11]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[12] 
       (.C(clk),
        .CE(\sprite_memory_loc[12]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(sprite_memory_loc[12]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[1] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(sprite_memory_loc[1]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[2] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(sprite_memory_loc[2]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[3] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(sprite_memory_loc[3]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[4] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(sprite_memory_loc[4]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[5] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[5] ),
        .Q(sprite_memory_loc[5]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[6] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[6] ),
        .Q(sprite_memory_loc[6]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[7] 
       (.C(clk),
        .CE(\sprite_memory_loc[7]_i_1_n_0 ),
        .D(p_0_in),
        .Q(sprite_memory_loc[7]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[8] 
       (.C(clk),
        .CE(\sprite_memory_loc[12]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(sprite_memory_loc[8]),
        .R(1'b0));
  FDRE \sprite_memory_loc_reg[9] 
       (.C(clk),
        .CE(\sprite_memory_loc[12]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(sprite_memory_loc[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \sprite_register_loc[6]_i_1 
       (.I0(\x_loc_sprite[7]_i_2_n_0 ),
        .I1(\address_reg_n_0_[3] ),
        .I2(\address_reg_n_0_[0] ),
        .I3(\address_reg_n_0_[2] ),
        .I4(\address_reg_n_0_[1] ),
        .I5(\x_loc_sprite[8]_i_4_n_0 ),
        .O(\sprite_register_loc[6]_i_1_n_0 ));
  FDRE \sprite_register_loc_reg[0] 
       (.C(clk),
        .CE(\sprite_register_loc[6]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(sprite_register_loc[0]),
        .R(1'b0));
  FDRE \sprite_register_loc_reg[1] 
       (.C(clk),
        .CE(\sprite_register_loc[6]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(sprite_register_loc[1]),
        .R(1'b0));
  FDRE \sprite_register_loc_reg[2] 
       (.C(clk),
        .CE(\sprite_register_loc[6]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(sprite_register_loc[2]),
        .R(1'b0));
  FDRE \sprite_register_loc_reg[3] 
       (.C(clk),
        .CE(\sprite_register_loc[6]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(sprite_register_loc[3]),
        .R(1'b0));
  FDRE \sprite_register_loc_reg[4] 
       (.C(clk),
        .CE(\sprite_register_loc[6]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(sprite_register_loc[4]),
        .R(1'b0));
  FDRE \sprite_register_loc_reg[5] 
       (.C(clk),
        .CE(\sprite_register_loc[6]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[5] ),
        .Q(sprite_register_loc[5]),
        .R(1'b0));
  FDRE \sprite_register_loc_reg[6] 
       (.C(clk),
        .CE(\sprite_register_loc[6]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[6] ),
        .Q(sprite_register_loc[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \start_addres_APU[10]_i_1 
       (.I0(\mc_data_stable_reg_n_0_[2] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\start_addres_APU[10]_i_2_n_0 ),
        .I3(\x_loc_sprite[8]_i_4_n_0 ),
        .I4(\x_loc_sprite[8]_i_3_n_0 ),
        .I5(start_addres_APU[10]),
        .O(\start_addres_APU[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \start_addres_APU[10]_i_2 
       (.I0(\address_reg_n_0_[1] ),
        .I1(\address_reg_n_0_[2] ),
        .O(\start_addres_APU[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \start_addres_APU[7]_i_1 
       (.I0(\address_reg_n_0_[0] ),
        .I1(\address_reg_n_0_[1] ),
        .I2(\address_reg_n_0_[2] ),
        .I3(\x_loc_sprite[8]_i_4_n_0 ),
        .I4(\x_loc_sprite[7]_i_2_n_0 ),
        .I5(\address_reg_n_0_[3] ),
        .O(\start_addres_APU[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \start_addres_APU[8]_i_1 
       (.I0(\mc_data_stable_reg_n_0_[0] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\start_addres_APU[10]_i_2_n_0 ),
        .I3(\x_loc_sprite[8]_i_4_n_0 ),
        .I4(\x_loc_sprite[8]_i_3_n_0 ),
        .I5(start_addres_APU[8]),
        .O(\start_addres_APU[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \start_addres_APU[9]_i_1 
       (.I0(\mc_data_stable_reg_n_0_[1] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\start_addres_APU[10]_i_2_n_0 ),
        .I3(\x_loc_sprite[8]_i_4_n_0 ),
        .I4(\x_loc_sprite[8]_i_3_n_0 ),
        .I5(start_addres_APU[9]),
        .O(\start_addres_APU[9]_i_1_n_0 ));
  FDRE \start_addres_APU_reg[0] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(start_addres_APU[0]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_addres_APU[10]_i_1_n_0 ),
        .Q(start_addres_APU[10]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[1] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(start_addres_APU[1]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[2] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(start_addres_APU[2]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[3] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(start_addres_APU[3]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[4] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(start_addres_APU[4]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[5] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[5] ),
        .Q(start_addres_APU[5]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[6] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[6] ),
        .Q(start_addres_APU[6]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[7] 
       (.C(clk),
        .CE(\start_addres_APU[7]_i_1_n_0 ),
        .D(p_0_in),
        .Q(start_addres_APU[7]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_addres_APU[8]_i_1_n_0 ),
        .Q(start_addres_APU[8]),
        .R(1'b0));
  FDRE \start_addres_APU_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\start_addres_APU[9]_i_1_n_0 ),
        .Q(start_addres_APU[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    start_music_i_1
       (.I0(\mc_data_stable_reg_n_0_[1] ),
        .I1(\mc_data_stable_reg_n_0_[0] ),
        .I2(\mc_data_stable_reg_n_0_[3] ),
        .I3(\mc_data_stable_reg_n_0_[2] ),
        .I4(start_music_i_2_n_0),
        .I5(start_music_i_3_n_0),
        .O(start_music_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    start_music_i_2
       (.I0(\mc_data_stable_reg_n_0_[6] ),
        .I1(p_0_in),
        .I2(\mc_data_stable_reg_n_0_[5] ),
        .I3(\mc_data_stable_reg_n_0_[4] ),
        .O(start_music_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    start_music_i_3
       (.I0(mc_clk_stable_new),
        .I1(mc_clk_stable_old),
        .I2(mc_select_stable),
        .I3(p_0_in),
        .O(start_music_i_3_n_0));
  FDRE start_music_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_music_i_1_n_0),
        .Q(start_music),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \x_loc_sprite[7]_i_1 
       (.I0(\address_reg_n_0_[2] ),
        .I1(\address_reg_n_0_[0] ),
        .I2(\address_reg_n_0_[1] ),
        .I3(\address_reg_n_0_[3] ),
        .I4(\x_loc_sprite[7]_i_2_n_0 ),
        .I5(\x_loc_sprite[8]_i_4_n_0 ),
        .O(\x_loc_sprite[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \x_loc_sprite[7]_i_2 
       (.I0(address[5]),
        .I1(p_0_in),
        .I2(address[6]),
        .I3(address[7]),
        .O(\x_loc_sprite[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \x_loc_sprite[8]_i_1 
       (.I0(\mc_data_stable_reg_n_0_[0] ),
        .I1(\x_loc_sprite[8]_i_2_n_0 ),
        .I2(\address_reg_n_0_[1] ),
        .I3(\x_loc_sprite[8]_i_3_n_0 ),
        .I4(\x_loc_sprite[8]_i_4_n_0 ),
        .I5(x_loc_sprite[8]),
        .O(\x_loc_sprite[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \x_loc_sprite[8]_i_2 
       (.I0(\address_reg_n_0_[0] ),
        .I1(\address_reg_n_0_[2] ),
        .O(\x_loc_sprite[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \x_loc_sprite[8]_i_3 
       (.I0(address[7]),
        .I1(address[6]),
        .I2(p_0_in),
        .I3(address[5]),
        .I4(\address_reg_n_0_[3] ),
        .O(\x_loc_sprite[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \x_loc_sprite[8]_i_4 
       (.I0(mc_clk_stable_new),
        .I1(mc_clk_stable_old),
        .I2(mc_select_stable),
        .I3(address[4]),
        .O(\x_loc_sprite[8]_i_4_n_0 ));
  FDRE \x_loc_sprite_reg[0] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(x_loc_sprite[0]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[1] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(x_loc_sprite[1]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[2] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(x_loc_sprite[2]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[3] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(x_loc_sprite[3]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[4] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(x_loc_sprite[4]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[5] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[5] ),
        .Q(x_loc_sprite[5]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[6] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[6] ),
        .Q(x_loc_sprite[6]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[7] 
       (.C(clk),
        .CE(\x_loc_sprite[7]_i_1_n_0 ),
        .D(p_0_in),
        .Q(x_loc_sprite[7]),
        .R(1'b0));
  FDRE \x_loc_sprite_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\x_loc_sprite[8]_i_1_n_0 ),
        .Q(x_loc_sprite[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \y_loc_sprite[7]_i_1 
       (.I0(\address_reg_n_0_[0] ),
        .I1(\address_reg_n_0_[2] ),
        .I2(\address_reg_n_0_[1] ),
        .I3(\x_loc_sprite[8]_i_4_n_0 ),
        .I4(\x_loc_sprite[7]_i_2_n_0 ),
        .I5(\address_reg_n_0_[3] ),
        .O(\y_loc_sprite[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \y_loc_sprite[8]_i_1 
       (.I0(\mc_data_stable_reg_n_0_[0] ),
        .I1(\y_loc_sprite[8]_i_2_n_0 ),
        .I2(\x_loc_sprite[8]_i_4_n_0 ),
        .I3(\x_loc_sprite[7]_i_2_n_0 ),
        .I4(\address_reg_n_0_[3] ),
        .I5(y_loc_sprite[8]),
        .O(\y_loc_sprite[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \y_loc_sprite[8]_i_2 
       (.I0(\address_reg_n_0_[1] ),
        .I1(\address_reg_n_0_[2] ),
        .I2(\address_reg_n_0_[0] ),
        .O(\y_loc_sprite[8]_i_2_n_0 ));
  FDRE \y_loc_sprite_reg[0] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[0] ),
        .Q(y_loc_sprite[0]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[1] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[1] ),
        .Q(y_loc_sprite[1]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[2] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[2] ),
        .Q(y_loc_sprite[2]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[3] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[3] ),
        .Q(y_loc_sprite[3]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[4] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[4] ),
        .Q(y_loc_sprite[4]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[5] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[5] ),
        .Q(y_loc_sprite[5]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[6] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(\mc_data_stable_reg_n_0_[6] ),
        .Q(y_loc_sprite[6]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[7] 
       (.C(clk),
        .CE(\y_loc_sprite[7]_i_1_n_0 ),
        .D(p_0_in),
        .Q(y_loc_sprite[7]),
        .R(1'b0));
  FDRE \y_loc_sprite_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\y_loc_sprite[8]_i_1_n_0 ),
        .Q(y_loc_sprite[8]),
        .R(1'b0));
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
