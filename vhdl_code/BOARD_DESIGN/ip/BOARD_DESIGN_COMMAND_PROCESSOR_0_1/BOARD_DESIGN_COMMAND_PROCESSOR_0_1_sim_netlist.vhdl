-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Mar 13 21:14:10 2019
-- Host        : LAPTOP-MCELIKGK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/djleg/Documents/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_COMMAND_PROCESSOR_0_1/BOARD_DESIGN_COMMAND_PROCESSOR_0_1_sim_netlist.vhdl
-- Design      : BOARD_DESIGN_COMMAND_PROCESSOR_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_COMMAND_PROCESSOR_0_1_COMMAND_PROCESSOR is
  port (
    x_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    y_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sprite_memory_loc : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sprite_attribute : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_register_loc : out STD_LOGIC_VECTOR ( 6 downto 0 );
    start_addres_APU : out STD_LOGIC_VECTOR ( 10 downto 0 );
    start_music : out STD_LOGIC;
    reset_APU : out STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    mc_register_select : in STD_LOGIC;
    mc_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BOARD_DESIGN_COMMAND_PROCESSOR_0_1_COMMAND_PROCESSOR : entity is "COMMAND_PROCESSOR";
end BOARD_DESIGN_COMMAND_PROCESSOR_0_1_COMMAND_PROCESSOR;

architecture STRUCTURE of BOARD_DESIGN_COMMAND_PROCESSOR_0_1_COMMAND_PROCESSOR is
  signal address : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal address_0 : STD_LOGIC;
  signal \address_reg_n_0_[0]\ : STD_LOGIC;
  signal \address_reg_n_0_[1]\ : STD_LOGIC;
  signal \address_reg_n_0_[2]\ : STD_LOGIC;
  signal \address_reg_n_0_[3]\ : STD_LOGIC;
  signal mc_clk_meta : STD_LOGIC;
  signal mc_clk_stable_new : STD_LOGIC;
  signal mc_clk_stable_old : STD_LOGIC;
  signal mc_data_meta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mc_data_stable_reg_n_0_[0]\ : STD_LOGIC;
  signal \mc_data_stable_reg_n_0_[1]\ : STD_LOGIC;
  signal \mc_data_stable_reg_n_0_[2]\ : STD_LOGIC;
  signal \mc_data_stable_reg_n_0_[3]\ : STD_LOGIC;
  signal \mc_data_stable_reg_n_0_[4]\ : STD_LOGIC;
  signal \mc_data_stable_reg_n_0_[5]\ : STD_LOGIC;
  signal \mc_data_stable_reg_n_0_[6]\ : STD_LOGIC;
  signal mc_select_meta : STD_LOGIC;
  signal mc_select_stable : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reset_APU_i_1_n_0 : STD_LOGIC;
  signal \sprite_attribute[7]_i_1_n_0\ : STD_LOGIC;
  signal \sprite_memory_loc[12]_i_1_n_0\ : STD_LOGIC;
  signal \sprite_memory_loc[7]_i_1_n_0\ : STD_LOGIC;
  signal \sprite_register_loc[6]_i_1_n_0\ : STD_LOGIC;
  signal \^start_addres_apu\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \start_addres_APU[10]_i_1_n_0\ : STD_LOGIC;
  signal \start_addres_APU[10]_i_2_n_0\ : STD_LOGIC;
  signal \start_addres_APU[7]_i_1_n_0\ : STD_LOGIC;
  signal \start_addres_APU[8]_i_1_n_0\ : STD_LOGIC;
  signal \start_addres_APU[9]_i_1_n_0\ : STD_LOGIC;
  signal start_music_i_1_n_0 : STD_LOGIC;
  signal start_music_i_2_n_0 : STD_LOGIC;
  signal start_music_i_3_n_0 : STD_LOGIC;
  signal \^x_loc_sprite\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \x_loc_sprite[7]_i_1_n_0\ : STD_LOGIC;
  signal \x_loc_sprite[7]_i_2_n_0\ : STD_LOGIC;
  signal \x_loc_sprite[8]_i_1_n_0\ : STD_LOGIC;
  signal \x_loc_sprite[8]_i_2_n_0\ : STD_LOGIC;
  signal \x_loc_sprite[8]_i_3_n_0\ : STD_LOGIC;
  signal \x_loc_sprite[8]_i_4_n_0\ : STD_LOGIC;
  signal \^y_loc_sprite\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \y_loc_sprite[7]_i_1_n_0\ : STD_LOGIC;
  signal \y_loc_sprite[8]_i_1_n_0\ : STD_LOGIC;
  signal \y_loc_sprite[8]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \start_addres_APU[10]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of start_music_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \x_loc_sprite[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \x_loc_sprite[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \x_loc_sprite[8]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y_loc_sprite[8]_i_2\ : label is "soft_lutpair2";
begin
  start_addres_APU(10 downto 0) <= \^start_addres_apu\(10 downto 0);
  x_loc_sprite(8 downto 0) <= \^x_loc_sprite\(8 downto 0);
  y_loc_sprite(8 downto 0) <= \^y_loc_sprite\(8 downto 0);
\address[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mc_clk_stable_old,
      I1 => mc_clk_stable_new,
      I2 => mc_select_stable,
      O => address_0
    );
\address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => \address_reg_n_0_[0]\,
      R => '0'
    );
\address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => \address_reg_n_0_[1]\,
      R => '0'
    );
\address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => \address_reg_n_0_[2]\,
      R => '0'
    );
\address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => \address_reg_n_0_[3]\,
      R => '0'
    );
\address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => address(4),
      R => '0'
    );
\address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => \mc_data_stable_reg_n_0_[5]\,
      Q => address(5),
      R => '0'
    );
\address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => \mc_data_stable_reg_n_0_[6]\,
      Q => address(6),
      R => '0'
    );
\address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => address_0,
      D => p_0_in,
      Q => address(7),
      R => '0'
    );
mc_clk_meta_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_clk,
      Q => mc_clk_meta,
      R => '0'
    );
mc_clk_stable_new_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_clk_meta,
      Q => mc_clk_stable_new,
      R => '0'
    );
mc_clk_stable_old_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_clk_stable_new,
      Q => mc_clk_stable_old,
      R => '0'
    );
\mc_data_meta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(0),
      Q => mc_data_meta(0),
      R => '0'
    );
\mc_data_meta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(1),
      Q => mc_data_meta(1),
      R => '0'
    );
\mc_data_meta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(2),
      Q => mc_data_meta(2),
      R => '0'
    );
\mc_data_meta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(3),
      Q => mc_data_meta(3),
      R => '0'
    );
\mc_data_meta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(4),
      Q => mc_data_meta(4),
      R => '0'
    );
\mc_data_meta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(5),
      Q => mc_data_meta(5),
      R => '0'
    );
\mc_data_meta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(6),
      Q => mc_data_meta(6),
      R => '0'
    );
\mc_data_meta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data(7),
      Q => mc_data_meta(7),
      R => '0'
    );
\mc_data_stable_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(0),
      Q => \mc_data_stable_reg_n_0_[0]\,
      R => '0'
    );
\mc_data_stable_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(1),
      Q => \mc_data_stable_reg_n_0_[1]\,
      R => '0'
    );
\mc_data_stable_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(2),
      Q => \mc_data_stable_reg_n_0_[2]\,
      R => '0'
    );
\mc_data_stable_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(3),
      Q => \mc_data_stable_reg_n_0_[3]\,
      R => '0'
    );
\mc_data_stable_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(4),
      Q => \mc_data_stable_reg_n_0_[4]\,
      R => '0'
    );
\mc_data_stable_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(5),
      Q => \mc_data_stable_reg_n_0_[5]\,
      R => '0'
    );
\mc_data_stable_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(6),
      Q => \mc_data_stable_reg_n_0_[6]\,
      R => '0'
    );
\mc_data_stable_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_data_meta(7),
      Q => p_0_in,
      R => '0'
    );
mc_select_meta_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_register_select,
      Q => mc_select_meta,
      R => '0'
    );
mc_select_stable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mc_select_meta,
      Q => mc_select_stable,
      R => '0'
    );
reset_APU_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[1]\,
      I1 => \mc_data_stable_reg_n_0_[0]\,
      I2 => \mc_data_stable_reg_n_0_[3]\,
      I3 => \mc_data_stable_reg_n_0_[2]\,
      I4 => start_music_i_2_n_0,
      I5 => start_music_i_3_n_0,
      O => reset_APU_i_1_n_0
    );
reset_APU_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset_APU_i_1_n_0,
      Q => reset_APU,
      R => '0'
    );
\sprite_attribute[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \x_loc_sprite[7]_i_2_n_0\,
      I1 => \address_reg_n_0_[0]\,
      I2 => \address_reg_n_0_[3]\,
      I3 => \address_reg_n_0_[2]\,
      I4 => \address_reg_n_0_[1]\,
      I5 => \x_loc_sprite[8]_i_4_n_0\,
      O => \sprite_attribute[7]_i_1_n_0\
    );
\sprite_attribute_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => sprite_attribute(0),
      R => '0'
    );
\sprite_attribute_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => sprite_attribute(1),
      R => '0'
    );
\sprite_attribute_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => sprite_attribute(2),
      R => '0'
    );
\sprite_attribute_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => sprite_attribute(3),
      R => '0'
    );
\sprite_attribute_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => sprite_attribute(4),
      R => '0'
    );
\sprite_attribute_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[5]\,
      Q => sprite_attribute(5),
      R => '0'
    );
\sprite_attribute_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[6]\,
      Q => sprite_attribute(6),
      R => '0'
    );
\sprite_attribute_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_attribute[7]_i_1_n_0\,
      D => p_0_in,
      Q => sprite_attribute(7),
      R => '0'
    );
\sprite_memory_loc[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \address_reg_n_0_[2]\,
      I1 => \address_reg_n_0_[0]\,
      I2 => \address_reg_n_0_[1]\,
      I3 => \address_reg_n_0_[3]\,
      I4 => \x_loc_sprite[7]_i_2_n_0\,
      I5 => \x_loc_sprite[8]_i_4_n_0\,
      O => \sprite_memory_loc[12]_i_1_n_0\
    );
\sprite_memory_loc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \address_reg_n_0_[0]\,
      I1 => \address_reg_n_0_[2]\,
      I2 => \address_reg_n_0_[1]\,
      I3 => \address_reg_n_0_[3]\,
      I4 => \x_loc_sprite[7]_i_2_n_0\,
      I5 => \x_loc_sprite[8]_i_4_n_0\,
      O => \sprite_memory_loc[7]_i_1_n_0\
    );
\sprite_memory_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => sprite_memory_loc(0),
      R => '0'
    );
\sprite_memory_loc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[12]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => sprite_memory_loc(10),
      R => '0'
    );
\sprite_memory_loc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[12]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => sprite_memory_loc(11),
      R => '0'
    );
\sprite_memory_loc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[12]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => sprite_memory_loc(12),
      R => '0'
    );
\sprite_memory_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => sprite_memory_loc(1),
      R => '0'
    );
\sprite_memory_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => sprite_memory_loc(2),
      R => '0'
    );
\sprite_memory_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => sprite_memory_loc(3),
      R => '0'
    );
\sprite_memory_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => sprite_memory_loc(4),
      R => '0'
    );
\sprite_memory_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[5]\,
      Q => sprite_memory_loc(5),
      R => '0'
    );
\sprite_memory_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[6]\,
      Q => sprite_memory_loc(6),
      R => '0'
    );
\sprite_memory_loc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[7]_i_1_n_0\,
      D => p_0_in,
      Q => sprite_memory_loc(7),
      R => '0'
    );
\sprite_memory_loc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[12]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => sprite_memory_loc(8),
      R => '0'
    );
\sprite_memory_loc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_memory_loc[12]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => sprite_memory_loc(9),
      R => '0'
    );
\sprite_register_loc[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \x_loc_sprite[7]_i_2_n_0\,
      I1 => \address_reg_n_0_[3]\,
      I2 => \address_reg_n_0_[0]\,
      I3 => \address_reg_n_0_[2]\,
      I4 => \address_reg_n_0_[1]\,
      I5 => \x_loc_sprite[8]_i_4_n_0\,
      O => \sprite_register_loc[6]_i_1_n_0\
    );
\sprite_register_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_register_loc[6]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => sprite_register_loc(0),
      R => '0'
    );
\sprite_register_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_register_loc[6]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => sprite_register_loc(1),
      R => '0'
    );
\sprite_register_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_register_loc[6]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => sprite_register_loc(2),
      R => '0'
    );
\sprite_register_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_register_loc[6]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => sprite_register_loc(3),
      R => '0'
    );
\sprite_register_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_register_loc[6]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => sprite_register_loc(4),
      R => '0'
    );
\sprite_register_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_register_loc[6]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[5]\,
      Q => sprite_register_loc(5),
      R => '0'
    );
\sprite_register_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \sprite_register_loc[6]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[6]\,
      Q => sprite_register_loc(6),
      R => '0'
    );
\start_addres_APU[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[2]\,
      I1 => \address_reg_n_0_[0]\,
      I2 => \start_addres_APU[10]_i_2_n_0\,
      I3 => \x_loc_sprite[8]_i_4_n_0\,
      I4 => \x_loc_sprite[8]_i_3_n_0\,
      I5 => \^start_addres_apu\(10),
      O => \start_addres_APU[10]_i_1_n_0\
    );
\start_addres_APU[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \address_reg_n_0_[1]\,
      I1 => \address_reg_n_0_[2]\,
      O => \start_addres_APU[10]_i_2_n_0\
    );
\start_addres_APU[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \address_reg_n_0_[0]\,
      I1 => \address_reg_n_0_[1]\,
      I2 => \address_reg_n_0_[2]\,
      I3 => \x_loc_sprite[8]_i_4_n_0\,
      I4 => \x_loc_sprite[7]_i_2_n_0\,
      I5 => \address_reg_n_0_[3]\,
      O => \start_addres_APU[7]_i_1_n_0\
    );
\start_addres_APU[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[0]\,
      I1 => \address_reg_n_0_[0]\,
      I2 => \start_addres_APU[10]_i_2_n_0\,
      I3 => \x_loc_sprite[8]_i_4_n_0\,
      I4 => \x_loc_sprite[8]_i_3_n_0\,
      I5 => \^start_addres_apu\(8),
      O => \start_addres_APU[8]_i_1_n_0\
    );
\start_addres_APU[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[1]\,
      I1 => \address_reg_n_0_[0]\,
      I2 => \start_addres_APU[10]_i_2_n_0\,
      I3 => \x_loc_sprite[8]_i_4_n_0\,
      I4 => \x_loc_sprite[8]_i_3_n_0\,
      I5 => \^start_addres_apu\(9),
      O => \start_addres_APU[9]_i_1_n_0\
    );
\start_addres_APU_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => \^start_addres_apu\(0),
      R => '0'
    );
\start_addres_APU_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \start_addres_APU[10]_i_1_n_0\,
      Q => \^start_addres_apu\(10),
      R => '0'
    );
\start_addres_APU_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => \^start_addres_apu\(1),
      R => '0'
    );
\start_addres_APU_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => \^start_addres_apu\(2),
      R => '0'
    );
\start_addres_APU_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => \^start_addres_apu\(3),
      R => '0'
    );
\start_addres_APU_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => \^start_addres_apu\(4),
      R => '0'
    );
\start_addres_APU_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[5]\,
      Q => \^start_addres_apu\(5),
      R => '0'
    );
\start_addres_APU_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[6]\,
      Q => \^start_addres_apu\(6),
      R => '0'
    );
\start_addres_APU_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \start_addres_APU[7]_i_1_n_0\,
      D => p_0_in,
      Q => \^start_addres_apu\(7),
      R => '0'
    );
\start_addres_APU_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \start_addres_APU[8]_i_1_n_0\,
      Q => \^start_addres_apu\(8),
      R => '0'
    );
\start_addres_APU_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \start_addres_APU[9]_i_1_n_0\,
      Q => \^start_addres_apu\(9),
      R => '0'
    );
start_music_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[1]\,
      I1 => \mc_data_stable_reg_n_0_[0]\,
      I2 => \mc_data_stable_reg_n_0_[3]\,
      I3 => \mc_data_stable_reg_n_0_[2]\,
      I4 => start_music_i_2_n_0,
      I5 => start_music_i_3_n_0,
      O => start_music_i_1_n_0
    );
start_music_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[6]\,
      I1 => p_0_in,
      I2 => \mc_data_stable_reg_n_0_[5]\,
      I3 => \mc_data_stable_reg_n_0_[4]\,
      O => start_music_i_2_n_0
    );
start_music_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => mc_clk_stable_new,
      I1 => mc_clk_stable_old,
      I2 => mc_select_stable,
      I3 => p_0_in,
      O => start_music_i_3_n_0
    );
start_music_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_music_i_1_n_0,
      Q => start_music,
      R => '0'
    );
\x_loc_sprite[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \address_reg_n_0_[2]\,
      I1 => \address_reg_n_0_[0]\,
      I2 => \address_reg_n_0_[1]\,
      I3 => \address_reg_n_0_[3]\,
      I4 => \x_loc_sprite[7]_i_2_n_0\,
      I5 => \x_loc_sprite[8]_i_4_n_0\,
      O => \x_loc_sprite[7]_i_1_n_0\
    );
\x_loc_sprite[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => address(5),
      I1 => p_0_in,
      I2 => address(6),
      I3 => address(7),
      O => \x_loc_sprite[7]_i_2_n_0\
    );
\x_loc_sprite[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[0]\,
      I1 => \x_loc_sprite[8]_i_2_n_0\,
      I2 => \address_reg_n_0_[1]\,
      I3 => \x_loc_sprite[8]_i_3_n_0\,
      I4 => \x_loc_sprite[8]_i_4_n_0\,
      I5 => \^x_loc_sprite\(8),
      O => \x_loc_sprite[8]_i_1_n_0\
    );
\x_loc_sprite[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \address_reg_n_0_[0]\,
      I1 => \address_reg_n_0_[2]\,
      O => \x_loc_sprite[8]_i_2_n_0\
    );
\x_loc_sprite[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => address(7),
      I1 => address(6),
      I2 => p_0_in,
      I3 => address(5),
      I4 => \address_reg_n_0_[3]\,
      O => \x_loc_sprite[8]_i_3_n_0\
    );
\x_loc_sprite[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => mc_clk_stable_new,
      I1 => mc_clk_stable_old,
      I2 => mc_select_stable,
      I3 => address(4),
      O => \x_loc_sprite[8]_i_4_n_0\
    );
\x_loc_sprite_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => \^x_loc_sprite\(0),
      R => '0'
    );
\x_loc_sprite_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => \^x_loc_sprite\(1),
      R => '0'
    );
\x_loc_sprite_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => \^x_loc_sprite\(2),
      R => '0'
    );
\x_loc_sprite_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => \^x_loc_sprite\(3),
      R => '0'
    );
\x_loc_sprite_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => \^x_loc_sprite\(4),
      R => '0'
    );
\x_loc_sprite_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[5]\,
      Q => \^x_loc_sprite\(5),
      R => '0'
    );
\x_loc_sprite_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[6]\,
      Q => \^x_loc_sprite\(6),
      R => '0'
    );
\x_loc_sprite_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \x_loc_sprite[7]_i_1_n_0\,
      D => p_0_in,
      Q => \^x_loc_sprite\(7),
      R => '0'
    );
\x_loc_sprite_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \x_loc_sprite[8]_i_1_n_0\,
      Q => \^x_loc_sprite\(8),
      R => '0'
    );
\y_loc_sprite[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \address_reg_n_0_[0]\,
      I1 => \address_reg_n_0_[2]\,
      I2 => \address_reg_n_0_[1]\,
      I3 => \x_loc_sprite[8]_i_4_n_0\,
      I4 => \x_loc_sprite[7]_i_2_n_0\,
      I5 => \address_reg_n_0_[3]\,
      O => \y_loc_sprite[7]_i_1_n_0\
    );
\y_loc_sprite[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => \mc_data_stable_reg_n_0_[0]\,
      I1 => \y_loc_sprite[8]_i_2_n_0\,
      I2 => \x_loc_sprite[8]_i_4_n_0\,
      I3 => \x_loc_sprite[7]_i_2_n_0\,
      I4 => \address_reg_n_0_[3]\,
      I5 => \^y_loc_sprite\(8),
      O => \y_loc_sprite[8]_i_1_n_0\
    );
\y_loc_sprite[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \address_reg_n_0_[1]\,
      I1 => \address_reg_n_0_[2]\,
      I2 => \address_reg_n_0_[0]\,
      O => \y_loc_sprite[8]_i_2_n_0\
    );
\y_loc_sprite_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[0]\,
      Q => \^y_loc_sprite\(0),
      R => '0'
    );
\y_loc_sprite_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[1]\,
      Q => \^y_loc_sprite\(1),
      R => '0'
    );
\y_loc_sprite_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[2]\,
      Q => \^y_loc_sprite\(2),
      R => '0'
    );
\y_loc_sprite_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[3]\,
      Q => \^y_loc_sprite\(3),
      R => '0'
    );
\y_loc_sprite_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[4]\,
      Q => \^y_loc_sprite\(4),
      R => '0'
    );
\y_loc_sprite_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[5]\,
      Q => \^y_loc_sprite\(5),
      R => '0'
    );
\y_loc_sprite_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => \mc_data_stable_reg_n_0_[6]\,
      Q => \^y_loc_sprite\(6),
      R => '0'
    );
\y_loc_sprite_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \y_loc_sprite[7]_i_1_n_0\,
      D => p_0_in,
      Q => \^y_loc_sprite\(7),
      R => '0'
    );
\y_loc_sprite_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \y_loc_sprite[8]_i_1_n_0\,
      Q => \^y_loc_sprite\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_COMMAND_PROCESSOR_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BOARD_DESIGN_COMMAND_PROCESSOR_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BOARD_DESIGN_COMMAND_PROCESSOR_0_1 : entity is "BOARD_DESIGN_COMMAND_PROCESSOR_0_1,COMMAND_PROCESSOR,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BOARD_DESIGN_COMMAND_PROCESSOR_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BOARD_DESIGN_COMMAND_PROCESSOR_0_1 : entity is "COMMAND_PROCESSOR,Vivado 2017.4";
end BOARD_DESIGN_COMMAND_PROCESSOR_0_1;

architecture STRUCTURE of BOARD_DESIGN_COMMAND_PROCESSOR_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk";
  attribute x_interface_info of mc_clk : signal is "xilinx.com:signal:clock:1.0 mc_clk CLK";
  attribute x_interface_parameter of mc_clk : signal is "XIL_INTERFACENAME mc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_mc_clk";
  attribute x_interface_info of reset_APU : signal is "xilinx.com:signal:reset:1.0 reset_APU RST";
  attribute x_interface_parameter of reset_APU : signal is "XIL_INTERFACENAME reset_APU, POLARITY ACTIVE_LOW";
begin
U0: entity work.BOARD_DESIGN_COMMAND_PROCESSOR_0_1_COMMAND_PROCESSOR
     port map (
      clk => clk,
      mc_clk => mc_clk,
      mc_data(7 downto 0) => mc_data(7 downto 0),
      mc_register_select => mc_register_select,
      reset_APU => reset_APU,
      sprite_attribute(7 downto 0) => sprite_attribute(7 downto 0),
      sprite_memory_loc(12 downto 0) => sprite_memory_loc(12 downto 0),
      sprite_register_loc(6 downto 0) => sprite_register_loc(6 downto 0),
      start_addres_APU(10 downto 0) => start_addres_APU(10 downto 0),
      start_music => start_music,
      x_loc_sprite(8 downto 0) => x_loc_sprite(8 downto 0),
      y_loc_sprite(8 downto 0) => y_loc_sprite(8 downto 0)
    );
end STRUCTURE;
