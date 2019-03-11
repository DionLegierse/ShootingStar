-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Mar 11 21:15:50 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_COMMAND_PROCESSOR_0_0/BOARD_DESIGN_COMMAND_PROCESSOR_0_0_sim_netlist.vhdl
-- Design      : BOARD_DESIGN_COMMAND_PROCESSOR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_COMMAND_PROCESSOR_0_0 is
  port (
    clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_clk : in STD_LOGIC;
    x_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    y_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sprite_memory_loc : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sprite_attribute : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_register_loc : out STD_LOGIC_VECTOR ( 6 downto 0 );
    start_music : out STD_LOGIC;
    reset_APU : out STD_LOGIC;
    start_addres_APU : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BOARD_DESIGN_COMMAND_PROCESSOR_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BOARD_DESIGN_COMMAND_PROCESSOR_0_0 : entity is "BOARD_DESIGN_COMMAND_PROCESSOR_0_0,COMMAND_PROCESSOR,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BOARD_DESIGN_COMMAND_PROCESSOR_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BOARD_DESIGN_COMMAND_PROCESSOR_0_0 : entity is "COMMAND_PROCESSOR,Vivado 2017.4";
end BOARD_DESIGN_COMMAND_PROCESSOR_0_0;

architecture STRUCTURE of BOARD_DESIGN_COMMAND_PROCESSOR_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk";
  attribute x_interface_info of mc_clk : signal is "xilinx.com:signal:clock:1.0 mc_clk CLK";
  attribute x_interface_parameter of mc_clk : signal is "XIL_INTERFACENAME mc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_mc_clk_0";
  attribute x_interface_info of reset_APU : signal is "xilinx.com:signal:reset:1.0 reset_APU RST";
  attribute x_interface_parameter of reset_APU : signal is "XIL_INTERFACENAME reset_APU, POLARITY ACTIVE_LOW";
begin
  reset_APU <= \<const0>\;
  sprite_attribute(7) <= \<const0>\;
  sprite_attribute(6) <= \<const0>\;
  sprite_attribute(5) <= \<const0>\;
  sprite_attribute(4) <= \<const0>\;
  sprite_attribute(3) <= \<const0>\;
  sprite_attribute(2) <= \<const0>\;
  sprite_attribute(1) <= \<const0>\;
  sprite_attribute(0) <= \<const0>\;
  sprite_memory_loc(12) <= \<const0>\;
  sprite_memory_loc(11) <= \<const0>\;
  sprite_memory_loc(10) <= \<const0>\;
  sprite_memory_loc(9) <= \<const0>\;
  sprite_memory_loc(8) <= \<const0>\;
  sprite_memory_loc(7) <= \<const0>\;
  sprite_memory_loc(6) <= \<const0>\;
  sprite_memory_loc(5) <= \<const0>\;
  sprite_memory_loc(4) <= \<const0>\;
  sprite_memory_loc(3) <= \<const0>\;
  sprite_memory_loc(2) <= \<const0>\;
  sprite_memory_loc(1) <= \<const0>\;
  sprite_memory_loc(0) <= \<const0>\;
  sprite_register_loc(6) <= \<const0>\;
  sprite_register_loc(5) <= \<const0>\;
  sprite_register_loc(4) <= \<const0>\;
  sprite_register_loc(3) <= \<const0>\;
  sprite_register_loc(2) <= \<const0>\;
  sprite_register_loc(1) <= \<const0>\;
  sprite_register_loc(0) <= \<const0>\;
  start_addres_APU(10) <= \<const0>\;
  start_addres_APU(9) <= \<const0>\;
  start_addres_APU(8) <= \<const0>\;
  start_addres_APU(7) <= \<const0>\;
  start_addres_APU(6) <= \<const0>\;
  start_addres_APU(5) <= \<const0>\;
  start_addres_APU(4) <= \<const0>\;
  start_addres_APU(3) <= \<const0>\;
  start_addres_APU(2) <= \<const0>\;
  start_addres_APU(1) <= \<const0>\;
  start_addres_APU(0) <= \<const0>\;
  start_music <= \<const0>\;
  x_loc_sprite(8) <= \<const0>\;
  x_loc_sprite(7) <= \<const0>\;
  x_loc_sprite(6) <= \<const0>\;
  x_loc_sprite(5) <= \<const0>\;
  x_loc_sprite(4) <= \<const0>\;
  x_loc_sprite(3) <= \<const0>\;
  x_loc_sprite(2) <= \<const0>\;
  x_loc_sprite(1) <= \<const0>\;
  x_loc_sprite(0) <= \<const0>\;
  y_loc_sprite(8) <= \<const0>\;
  y_loc_sprite(7) <= \<const0>\;
  y_loc_sprite(6) <= \<const0>\;
  y_loc_sprite(5) <= \<const0>\;
  y_loc_sprite(4) <= \<const0>\;
  y_loc_sprite(3) <= \<const0>\;
  y_loc_sprite(2) <= \<const0>\;
  y_loc_sprite(1) <= \<const0>\;
  y_loc_sprite(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
