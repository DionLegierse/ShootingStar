-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 14:41:51 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_Renderer_0_0/BOARD_DESIGN_Renderer_0_0_stub.vhdl
-- Design      : BOARD_DESIGN_Renderer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BOARD_DESIGN_Renderer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    SOAMData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SpriteROMDatout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bufferFull : in STD_LOGIC;
    bufferClear : in STD_LOGIC;
    SOAMAddress : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SOAMReadEnable : out STD_LOGIC;
    NextScanline : out STD_LOGIC_VECTOR ( 8 downto 0 );
    BufferData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SpriteROMAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    isEndLine : out STD_LOGIC;
    BufferEnableWrite : out STD_LOGIC
  );

end BOARD_DESIGN_Renderer_0_0;

architecture stub of BOARD_DESIGN_Renderer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SOAMData[31:0],SpriteROMDatout[7:0],bufferFull,bufferClear,SOAMAddress[4:0],SOAMReadEnable,NextScanline[8:0],BufferData[7:0],SpriteROMAddr[15:0],isEndLine,BufferEnableWrite";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Renderer,Vivado 2017.4";
begin
end;
