-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 14:47:21 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_sprite_rom_wrapper_0_0/BOARD_DESIGN_sprite_rom_wrapper_0_0_stub.vhdl
-- Design      : BOARD_DESIGN_sprite_rom_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BOARD_DESIGN_sprite_rom_wrapper_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end BOARD_DESIGN_sprite_rom_wrapper_0_0;

architecture stub of BOARD_DESIGN_sprite_rom_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,addra[15:0],douta[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sprite_rom_wrapper,Vivado 2017.4";
begin
end;
