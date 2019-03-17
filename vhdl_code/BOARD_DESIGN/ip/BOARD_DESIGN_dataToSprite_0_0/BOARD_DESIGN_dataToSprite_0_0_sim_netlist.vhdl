-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 14:41:12 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_dataToSprite_0_0/BOARD_DESIGN_dataToSprite_0_0_sim_netlist.vhdl
-- Design      : BOARD_DESIGN_dataToSprite_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_dataToSprite_0_0 is
  port (
    x_loc_sprite : in STD_LOGIC_VECTOR ( 8 downto 0 );
    y_loc_sprite : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sprite_memory_loc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_atttribute : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BOARD_DESIGN_dataToSprite_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BOARD_DESIGN_dataToSprite_0_0 : entity is "BOARD_DESIGN_dataToSprite_0_0,dataToSprite,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BOARD_DESIGN_dataToSprite_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BOARD_DESIGN_dataToSprite_0_0 : entity is "dataToSprite,Vivado 2017.4";
end BOARD_DESIGN_dataToSprite_0_0;

architecture STRUCTURE of BOARD_DESIGN_dataToSprite_0_0 is
  signal \^sprite_atttribute\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sprite_memory_loc\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^x_loc_sprite\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^y_loc_sprite\ : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  \^sprite_atttribute\(5 downto 0) <= sprite_atttribute(5 downto 0);
  \^sprite_memory_loc\(7 downto 0) <= sprite_memory_loc(7 downto 0);
  \^x_loc_sprite\(8 downto 0) <= x_loc_sprite(8 downto 0);
  \^y_loc_sprite\(8 downto 0) <= y_loc_sprite(8 downto 0);
  sprite_data(31 downto 23) <= \^y_loc_sprite\(8 downto 0);
  sprite_data(22 downto 14) <= \^x_loc_sprite\(8 downto 0);
  sprite_data(13 downto 8) <= \^sprite_atttribute\(5 downto 0);
  sprite_data(7 downto 0) <= \^sprite_memory_loc\(7 downto 0);
end STRUCTURE;
