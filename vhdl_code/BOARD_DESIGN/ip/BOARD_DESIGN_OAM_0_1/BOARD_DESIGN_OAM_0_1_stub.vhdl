-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 15:07:04 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_OAM_0_1/BOARD_DESIGN_OAM_0_1_stub.vhdl
-- Design      : BOARD_DESIGN_OAM_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BOARD_DESIGN_OAM_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    OAMreset : in STD_LOGIC;
    OAMin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    OAMwen : in STD_LOGIC;
    OAMwadd : in STD_LOGIC_VECTOR ( 6 downto 0 );
    OAMout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OAMren : in STD_LOGIC;
    OAMradd : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end BOARD_DESIGN_OAM_0_1;

architecture stub of BOARD_DESIGN_OAM_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,OAMreset,OAMin[31:0],OAMwen,OAMwadd[6:0],OAMout[31:0],OAMren,OAMradd[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "OAM,Vivado 2017.4";
begin
end;
