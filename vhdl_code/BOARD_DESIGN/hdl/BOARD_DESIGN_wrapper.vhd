--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Mar 11 21:14:58 2019
--Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
--Command     : generate_target BOARD_DESIGN_wrapper.bd
--Design      : BOARD_DESIGN_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_wrapper is
  port (
    clk : in STD_LOGIC;
    mc_clk_0 : in STD_LOGIC;
    mc_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sound_out_0 : out STD_LOGIC;
    sprite_attribute_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end BOARD_DESIGN_wrapper;

architecture STRUCTURE of BOARD_DESIGN_wrapper is
  component BOARD_DESIGN is
  port (
    clk : in STD_LOGIC;
    sound_out_0 : out STD_LOGIC;
    mc_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_clk_0 : in STD_LOGIC;
    sprite_attribute_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component BOARD_DESIGN;
begin
BOARD_DESIGN_i: component BOARD_DESIGN
     port map (
      clk => clk,
      mc_clk_0 => mc_clk_0,
      mc_data_0(7 downto 0) => mc_data_0(7 downto 0),
      sound_out_0 => sound_out_0,
      sprite_attribute_0(7 downto 0) => sprite_attribute_0(7 downto 0)
    );
end STRUCTURE;
