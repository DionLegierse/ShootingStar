-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 14:41:12 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_ScanlineOAM_0_0/BOARD_DESIGN_ScanlineOAM_0_0_stub.vhdl
-- Design      : BOARD_DESIGN_ScanlineOAM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BOARD_DESIGN_ScanlineOAM_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    scanline : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ENDscanline : in STD_LOGIC;
    OAMin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    OAMadd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SOAMout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SOAMpush : out STD_LOGIC;
    SOAMclear : out STD_LOGIC
  );

end BOARD_DESIGN_ScanlineOAM_0_0;

architecture stub of BOARD_DESIGN_ScanlineOAM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,scanline[8:0],ENDscanline,OAMin[31:0],OAMadd[6:0],SOAMout[31:0],SOAMpush,SOAMclear";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ScanlineOAM,Vivado 2017.4";
begin
end;
