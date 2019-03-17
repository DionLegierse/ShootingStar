-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 14:41:12 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_ScanlineOAM_0_0/BOARD_DESIGN_ScanlineOAM_0_0_sim_netlist.vhdl
-- Design      : BOARD_DESIGN_ScanlineOAM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_ScanlineOAM_0_0_ScanlineOAM is
  port (
    SOAMout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SOAMclear : out STD_LOGIC;
    OAMadd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SOAMpush : out STD_LOGIC;
    ENDscanline : in STD_LOGIC;
    scanline : in STD_LOGIC_VECTOR ( 8 downto 0 );
    OAMin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BOARD_DESIGN_ScanlineOAM_0_0_ScanlineOAM : entity is "ScanlineOAM";
end BOARD_DESIGN_ScanlineOAM_0_0_ScanlineOAM;

architecture STRUCTURE of BOARD_DESIGN_ScanlineOAM_0_0_ScanlineOAM is
  signal \^oamadd\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \SOAMout1__5_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry__0_n_3\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_1_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_2_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_3_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_4_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_5_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_6_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_7_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_i_8_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_n_0\ : STD_LOGIC;
  signal \SOAMout1__5_carry_n_1\ : STD_LOGIC;
  signal \SOAMout1__5_carry_n_2\ : STD_LOGIC;
  signal \SOAMout1__5_carry_n_3\ : STD_LOGIC;
  signal \SOAMout1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SOAMout1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SOAMout1_carry__0_n_3\ : STD_LOGIC;
  signal SOAMout1_carry_i_10_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_1_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_2_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_3_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_4_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_5_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_6_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_7_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_8_n_0 : STD_LOGIC;
  signal SOAMout1_carry_i_9_n_0 : STD_LOGIC;
  signal SOAMout1_carry_n_0 : STD_LOGIC;
  signal SOAMout1_carry_n_1 : STD_LOGIC;
  signal SOAMout1_carry_n_2 : STD_LOGIC;
  signal SOAMout1_carry_n_3 : STD_LOGIC;
  signal \SOAMout[31]_i_1_n_0\ : STD_LOGIC;
  signal \^soampush\ : STD_LOGIC;
  signal SOAMpush_i_1_n_0 : STD_LOGIC;
  signal \objectIndex[6]_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_SOAMout1__5_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SOAMout1__5_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SOAMout1__5_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SOAMout1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SOAMout1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SOAMout1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \objectIndex[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \objectIndex[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \objectIndex[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \objectIndex[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \objectIndex[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \objectIndex[6]_i_2\ : label is "soft_lutpair0";
begin
  OAMadd(6 downto 0) <= \^oamadd\(6 downto 0);
  SOAMpush <= \^soampush\;
SOAMclear_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ENDscanline,
      Q => SOAMclear,
      R => '0'
    );
\SOAMout1__5_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SOAMout1__5_carry_n_0\,
      CO(2) => \SOAMout1__5_carry_n_1\,
      CO(1) => \SOAMout1__5_carry_n_2\,
      CO(0) => \SOAMout1__5_carry_n_3\,
      CYINIT => '1',
      DI(3) => \SOAMout1__5_carry_i_1_n_0\,
      DI(2) => \SOAMout1__5_carry_i_2_n_0\,
      DI(1) => \SOAMout1__5_carry_i_3_n_0\,
      DI(0) => \SOAMout1__5_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_SOAMout1__5_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \SOAMout1__5_carry_i_5_n_0\,
      S(2) => \SOAMout1__5_carry_i_6_n_0\,
      S(1) => \SOAMout1__5_carry_i_7_n_0\,
      S(0) => \SOAMout1__5_carry_i_8_n_0\
    );
\SOAMout1__5_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \SOAMout1__5_carry_n_0\,
      CO(3 downto 1) => \NLW_SOAMout1__5_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \SOAMout1__5_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \SOAMout1__5_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_SOAMout1__5_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \SOAMout1__5_carry__0_i_2_n_0\
    );
\SOAMout1__5_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => scanline(8),
      I1 => OAMin(31),
      O => \SOAMout1__5_carry__0_i_1_n_0\
    );
\SOAMout1__5_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => OAMin(31),
      I1 => scanline(8),
      O => \SOAMout1__5_carry__0_i_2_n_0\
    );
\SOAMout1__5_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => scanline(6),
      I1 => OAMin(29),
      I2 => OAMin(30),
      I3 => scanline(7),
      O => \SOAMout1__5_carry_i_1_n_0\
    );
\SOAMout1__5_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => scanline(4),
      I1 => OAMin(27),
      I2 => OAMin(28),
      I3 => scanline(5),
      O => \SOAMout1__5_carry_i_2_n_0\
    );
\SOAMout1__5_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => scanline(2),
      I1 => OAMin(25),
      I2 => OAMin(26),
      I3 => scanline(3),
      O => \SOAMout1__5_carry_i_3_n_0\
    );
\SOAMout1__5_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => scanline(0),
      I1 => OAMin(23),
      I2 => OAMin(24),
      I3 => scanline(1),
      O => \SOAMout1__5_carry_i_4_n_0\
    );
\SOAMout1__5_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => scanline(6),
      I1 => OAMin(29),
      I2 => scanline(7),
      I3 => OAMin(30),
      O => \SOAMout1__5_carry_i_5_n_0\
    );
\SOAMout1__5_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => scanline(4),
      I1 => OAMin(27),
      I2 => scanline(5),
      I3 => OAMin(28),
      O => \SOAMout1__5_carry_i_6_n_0\
    );
\SOAMout1__5_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => scanline(2),
      I1 => OAMin(25),
      I2 => scanline(3),
      I3 => OAMin(26),
      O => \SOAMout1__5_carry_i_7_n_0\
    );
\SOAMout1__5_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => scanline(0),
      I1 => OAMin(23),
      I2 => scanline(1),
      I3 => OAMin(24),
      O => \SOAMout1__5_carry_i_8_n_0\
    );
SOAMout1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SOAMout1_carry_n_0,
      CO(2) => SOAMout1_carry_n_1,
      CO(1) => SOAMout1_carry_n_2,
      CO(0) => SOAMout1_carry_n_3,
      CYINIT => '1',
      DI(3) => SOAMout1_carry_i_1_n_0,
      DI(2) => SOAMout1_carry_i_2_n_0,
      DI(1) => SOAMout1_carry_i_3_n_0,
      DI(0) => SOAMout1_carry_i_4_n_0,
      O(3 downto 0) => NLW_SOAMout1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SOAMout1_carry_i_5_n_0,
      S(2) => SOAMout1_carry_i_6_n_0,
      S(1) => SOAMout1_carry_i_7_n_0,
      S(0) => SOAMout1_carry_i_8_n_0
    );
\SOAMout1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SOAMout1_carry_n_0,
      CO(3 downto 1) => \NLW_SOAMout1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \SOAMout1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \SOAMout1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_SOAMout1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \SOAMout1_carry__0_i_2_n_0\
    );
\SOAMout1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55560000"
    )
        port map (
      I0 => scanline(8),
      I1 => scanline(6),
      I2 => SOAMout1_carry_i_9_n_0,
      I3 => scanline(7),
      I4 => OAMin(31),
      O => \SOAMout1_carry__0_i_1_n_0\
    );
\SOAMout1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => scanline(8),
      I1 => scanline(6),
      I2 => SOAMout1_carry_i_9_n_0,
      I3 => scanline(7),
      I4 => OAMin(31),
      O => \SOAMout1_carry__0_i_2_n_0\
    );
SOAMout1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => OAMin(29),
      I1 => OAMin(30),
      I2 => scanline(6),
      I3 => SOAMout1_carry_i_9_n_0,
      I4 => scanline(7),
      O => SOAMout1_carry_i_1_n_0
    );
SOAMout1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => scanline(1),
      I1 => scanline(0),
      I2 => scanline(2),
      I3 => scanline(3),
      O => SOAMout1_carry_i_10_n_0
    );
SOAMout1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"088CCEE0"
    )
        port map (
      I0 => OAMin(27),
      I1 => OAMin(28),
      I2 => scanline(4),
      I3 => SOAMout1_carry_i_10_n_0,
      I4 => scanline(5),
      O => SOAMout1_carry_i_2_n_0
    );
SOAMout1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CCCCEEEE0000888"
    )
        port map (
      I0 => OAMin(25),
      I1 => OAMin(26),
      I2 => scanline(1),
      I3 => scanline(0),
      I4 => scanline(2),
      I5 => scanline(3),
      O => SOAMout1_carry_i_3_n_0
    );
SOAMout1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CB80"
    )
        port map (
      I0 => OAMin(23),
      I1 => scanline(0),
      I2 => scanline(1),
      I3 => OAMin(24),
      O => SOAMout1_carry_i_4_n_0
    );
SOAMout1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84422118"
    )
        port map (
      I0 => OAMin(29),
      I1 => OAMin(30),
      I2 => scanline(6),
      I3 => SOAMout1_carry_i_9_n_0,
      I4 => scanline(7),
      O => SOAMout1_carry_i_5_n_0
    );
SOAMout1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84422118"
    )
        port map (
      I0 => OAMin(27),
      I1 => OAMin(28),
      I2 => scanline(4),
      I3 => SOAMout1_carry_i_10_n_0,
      I4 => scanline(5),
      O => SOAMout1_carry_i_6_n_0
    );
SOAMout1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4222211118888444"
    )
        port map (
      I0 => OAMin(25),
      I1 => OAMin(26),
      I2 => scanline(1),
      I3 => scanline(0),
      I4 => scanline(2),
      I5 => scanline(3),
      O => SOAMout1_carry_i_7_n_0
    );
SOAMout1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1842"
    )
        port map (
      I0 => OAMin(23),
      I1 => OAMin(24),
      I2 => scanline(0),
      I3 => scanline(1),
      O => SOAMout1_carry_i_8_n_0
    );
SOAMout1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => scanline(4),
      I1 => scanline(1),
      I2 => scanline(0),
      I3 => scanline(2),
      I4 => scanline(3),
      I5 => scanline(5),
      O => SOAMout1_carry_i_9_n_0
    );
\SOAMout[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \SOAMout1_carry__0_n_3\,
      I1 => \SOAMout1__5_carry__0_n_3\,
      I2 => ENDscanline,
      O => \SOAMout[31]_i_1_n_0\
    );
\SOAMout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(0),
      Q => SOAMout(0),
      R => '0'
    );
\SOAMout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(10),
      Q => SOAMout(10),
      R => '0'
    );
\SOAMout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(11),
      Q => SOAMout(11),
      R => '0'
    );
\SOAMout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(12),
      Q => SOAMout(12),
      R => '0'
    );
\SOAMout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(13),
      Q => SOAMout(13),
      R => '0'
    );
\SOAMout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(14),
      Q => SOAMout(14),
      R => '0'
    );
\SOAMout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(15),
      Q => SOAMout(15),
      R => '0'
    );
\SOAMout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(16),
      Q => SOAMout(16),
      R => '0'
    );
\SOAMout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(17),
      Q => SOAMout(17),
      R => '0'
    );
\SOAMout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(18),
      Q => SOAMout(18),
      R => '0'
    );
\SOAMout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(19),
      Q => SOAMout(19),
      R => '0'
    );
\SOAMout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(1),
      Q => SOAMout(1),
      R => '0'
    );
\SOAMout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(20),
      Q => SOAMout(20),
      R => '0'
    );
\SOAMout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(21),
      Q => SOAMout(21),
      R => '0'
    );
\SOAMout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(22),
      Q => SOAMout(22),
      R => '0'
    );
\SOAMout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(23),
      Q => SOAMout(23),
      R => '0'
    );
\SOAMout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(24),
      Q => SOAMout(24),
      R => '0'
    );
\SOAMout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(25),
      Q => SOAMout(25),
      R => '0'
    );
\SOAMout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(26),
      Q => SOAMout(26),
      R => '0'
    );
\SOAMout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(27),
      Q => SOAMout(27),
      R => '0'
    );
\SOAMout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(28),
      Q => SOAMout(28),
      R => '0'
    );
\SOAMout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(29),
      Q => SOAMout(29),
      R => '0'
    );
\SOAMout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(2),
      Q => SOAMout(2),
      R => '0'
    );
\SOAMout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(30),
      Q => SOAMout(30),
      R => '0'
    );
\SOAMout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(31),
      Q => SOAMout(31),
      R => '0'
    );
\SOAMout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(3),
      Q => SOAMout(3),
      R => '0'
    );
\SOAMout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(4),
      Q => SOAMout(4),
      R => '0'
    );
\SOAMout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(5),
      Q => SOAMout(5),
      R => '0'
    );
\SOAMout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(6),
      Q => SOAMout(6),
      R => '0'
    );
\SOAMout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(7),
      Q => SOAMout(7),
      R => '0'
    );
\SOAMout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(8),
      Q => SOAMout(8),
      R => '0'
    );
\SOAMout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \SOAMout[31]_i_1_n_0\,
      D => OAMin(9),
      Q => SOAMout(9),
      R => '0'
    );
SOAMpush_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \^soampush\,
      I1 => ENDscanline,
      I2 => \SOAMout1__5_carry__0_n_3\,
      I3 => \SOAMout1_carry__0_n_3\,
      O => SOAMpush_i_1_n_0
    );
SOAMpush_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => SOAMpush_i_1_n_0,
      Q => \^soampush\,
      R => '0'
    );
\objectIndex[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^oamadd\(0),
      O => plusOp(0)
    );
\objectIndex[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^oamadd\(0),
      I1 => \^oamadd\(1),
      O => plusOp(1)
    );
\objectIndex[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^oamadd\(0),
      I1 => \^oamadd\(1),
      I2 => \^oamadd\(2),
      O => plusOp(2)
    );
\objectIndex[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^oamadd\(1),
      I1 => \^oamadd\(0),
      I2 => \^oamadd\(2),
      I3 => \^oamadd\(3),
      O => plusOp(3)
    );
\objectIndex[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^oamadd\(2),
      I1 => \^oamadd\(0),
      I2 => \^oamadd\(1),
      I3 => \^oamadd\(3),
      I4 => \^oamadd\(4),
      O => plusOp(4)
    );
\objectIndex[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^oamadd\(3),
      I1 => \^oamadd\(1),
      I2 => \^oamadd\(0),
      I3 => \^oamadd\(2),
      I4 => \^oamadd\(4),
      I5 => \^oamadd\(5),
      O => plusOp(5)
    );
\objectIndex[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \objectIndex[6]_i_2_n_0\,
      I1 => \^oamadd\(5),
      I2 => \^oamadd\(6),
      O => plusOp(6)
    );
\objectIndex[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^oamadd\(4),
      I1 => \^oamadd\(2),
      I2 => \^oamadd\(0),
      I3 => \^oamadd\(1),
      I4 => \^oamadd\(3),
      O => \objectIndex[6]_i_2_n_0\
    );
\objectIndex_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => \^oamadd\(0),
      R => ENDscanline
    );
\objectIndex_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => \^oamadd\(1),
      R => ENDscanline
    );
\objectIndex_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => \^oamadd\(2),
      R => ENDscanline
    );
\objectIndex_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => \^oamadd\(3),
      R => ENDscanline
    );
\objectIndex_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => \^oamadd\(4),
      R => ENDscanline
    );
\objectIndex_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => \^oamadd\(5),
      R => ENDscanline
    );
\objectIndex_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => \^oamadd\(6),
      R => ENDscanline
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_ScanlineOAM_0_0 is
  port (
    clk : in STD_LOGIC;
    scanline : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ENDscanline : in STD_LOGIC;
    OAMin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    OAMadd : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SOAMout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SOAMpush : out STD_LOGIC;
    SOAMclear : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BOARD_DESIGN_ScanlineOAM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BOARD_DESIGN_ScanlineOAM_0_0 : entity is "BOARD_DESIGN_ScanlineOAM_0_0,ScanlineOAM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BOARD_DESIGN_ScanlineOAM_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BOARD_DESIGN_ScanlineOAM_0_0 : entity is "ScanlineOAM,Vivado 2017.4";
end BOARD_DESIGN_ScanlineOAM_0_0;

architecture STRUCTURE of BOARD_DESIGN_ScanlineOAM_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk";
begin
U0: entity work.BOARD_DESIGN_ScanlineOAM_0_0_ScanlineOAM
     port map (
      ENDscanline => ENDscanline,
      OAMadd(6 downto 0) => OAMadd(6 downto 0),
      OAMin(31 downto 0) => OAMin(31 downto 0),
      SOAMclear => SOAMclear,
      SOAMout(31 downto 0) => SOAMout(31 downto 0),
      SOAMpush => SOAMpush,
      clk => clk,
      scanline(8 downto 0) => scanline(8 downto 0)
    );
end STRUCTURE;
