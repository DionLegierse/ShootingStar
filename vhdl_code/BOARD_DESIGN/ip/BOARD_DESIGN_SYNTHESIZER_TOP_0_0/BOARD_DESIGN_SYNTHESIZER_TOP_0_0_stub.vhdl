-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Mar 11 20:52:07 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_SYNTHESIZER_TOP_0_0/BOARD_DESIGN_SYNTHESIZER_TOP_0_0_stub.vhdl
-- Design      : BOARD_DESIGN_SYNTHESIZER_TOP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BOARD_DESIGN_SYNTHESIZER_TOP_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    start_music : in STD_LOGIC;
    reset : in STD_LOGIC;
    soundEffect : in STD_LOGIC_VECTOR ( 7 downto 0 );
    startAddress : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sound_out : out STD_LOGIC
  );

end BOARD_DESIGN_SYNTHESIZER_TOP_0_0;

architecture stub of BOARD_DESIGN_SYNTHESIZER_TOP_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,start_music,reset,soundEffect[7:0],startAddress[10:0],sound_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SYNTHESIZER_TOP,Vivado 2017.4";
begin
end;
