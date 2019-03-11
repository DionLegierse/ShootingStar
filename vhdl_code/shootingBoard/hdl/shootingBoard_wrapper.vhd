--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sat Mar  9 15:51:07 2019
--Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
--Command     : generate_target shootingBoard_wrapper.bd
--Design      : shootingBoard_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shootingBoard_wrapper is
  port (
    sys_clock : in STD_LOGIC
  );
end shootingBoard_wrapper;

architecture STRUCTURE of shootingBoard_wrapper is
  component shootingBoard is
  port (
    sys_clock : in STD_LOGIC
  );
  end component shootingBoard;
begin
shootingBoard_i: component shootingBoard
     port map (
      sys_clock => sys_clock
    );
end STRUCTURE;
