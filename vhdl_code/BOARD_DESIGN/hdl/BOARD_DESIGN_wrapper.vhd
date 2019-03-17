--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sat Mar 16 15:19:17 2019
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
    Dout_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Err_0 : out STD_LOGIC;
    Ren_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    mc_clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_register_select : in STD_LOGIC;
    sound_out : out STD_LOGIC
  );
end BOARD_DESIGN_wrapper;

architecture STRUCTURE of BOARD_DESIGN_wrapper is
  component BOARD_DESIGN is
  port (
    clk : in STD_LOGIC;
    mc_clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_register_select : in STD_LOGIC;
    sound_out : out STD_LOGIC;
    Dout_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Err_0 : out STD_LOGIC;
    Ren_0 : in STD_LOGIC
  );
  end component BOARD_DESIGN;
begin
BOARD_DESIGN_i: component BOARD_DESIGN
     port map (
      Dout_0(7 downto 0) => Dout_0(7 downto 0),
      Err_0 => Err_0,
      Ren_0 => Ren_0,
      clk => clk,
      mc_clk => mc_clk,
      mc_data(7 downto 0) => mc_data(7 downto 0),
      mc_register_select => mc_register_select,
      sound_out => sound_out
    );
end STRUCTURE;
