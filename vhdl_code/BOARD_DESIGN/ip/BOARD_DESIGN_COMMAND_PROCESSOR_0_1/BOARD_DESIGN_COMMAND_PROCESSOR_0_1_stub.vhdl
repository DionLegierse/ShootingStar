-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Mar 12 14:11:52 2019
-- Host        : LAPTOP-MCELIKGK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/djleg/Documents/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_COMMAND_PROCESSOR_0_1/BOARD_DESIGN_COMMAND_PROCESSOR_0_1_stub.vhdl
-- Design      : BOARD_DESIGN_COMMAND_PROCESSOR_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BOARD_DESIGN_COMMAND_PROCESSOR_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_clk : in STD_LOGIC;
    mc_register_select : in STD_LOGIC;
    x_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    y_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sprite_memory_loc : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sprite_attribute : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_register_loc : out STD_LOGIC_VECTOR ( 6 downto 0 );
    start_music : out STD_LOGIC;
    reset_APU : out STD_LOGIC;
    start_addres_APU : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

end BOARD_DESIGN_COMMAND_PROCESSOR_0_1;

architecture stub of BOARD_DESIGN_COMMAND_PROCESSOR_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,mc_data[7:0],mc_clk,mc_register_select,x_loc_sprite[8:0],y_loc_sprite[8:0],sprite_memory_loc[12:0],sprite_attribute[7:0],sprite_register_loc[6:0],start_music,reset_APU,start_addres_APU[10:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "COMMAND_PROCESSOR,Vivado 2017.4";
begin
end;
