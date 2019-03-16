-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Mar 16 14:41:15 2019
-- Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/ShootingStar/vhdl_code/BOARD_DESIGN/ip/BOARD_DESIGN_circular_buffer_0_0/BOARD_DESIGN_circular_buffer_0_0_sim_netlist.vhdl
-- Design      : BOARD_DESIGN_circular_buffer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_circular_buffer_0_0_circular_buffer is
  port (
    Full : out STD_LOGIC;
    Empty : out STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Err : out STD_LOGIC;
    Wen : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Ren : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BOARD_DESIGN_circular_buffer_0_0_circular_buffer : entity is "circular_buffer";
end BOARD_DESIGN_circular_buffer_0_0_circular_buffer;

architecture STRUCTURE of BOARD_DESIGN_circular_buffer_0_0_circular_buffer is
  signal Dout0 : STD_LOGIC;
  signal Dout1 : STD_LOGIC;
  signal \Dout[0]_i_2_n_0\ : STD_LOGIC;
  signal \Dout[0]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[0]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[0]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[1]_i_2_n_0\ : STD_LOGIC;
  signal \Dout[1]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[1]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[1]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[2]_i_2_n_0\ : STD_LOGIC;
  signal \Dout[2]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[2]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[2]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[3]_i_2_n_0\ : STD_LOGIC;
  signal \Dout[3]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[3]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[3]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[4]_i_2_n_0\ : STD_LOGIC;
  signal \Dout[4]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[4]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[4]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[5]_i_2_n_0\ : STD_LOGIC;
  signal \Dout[5]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[5]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[5]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[6]_i_2_n_0\ : STD_LOGIC;
  signal \Dout[6]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[6]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[6]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[7]_i_3_n_0\ : STD_LOGIC;
  signal \Dout[7]_i_4_n_0\ : STD_LOGIC;
  signal \Dout[7]_i_5_n_0\ : STD_LOGIC;
  signal \Dout[7]_i_6_n_0\ : STD_LOGIC;
  signal \Dout[7]_i_7_n_0\ : STD_LOGIC;
  signal \Dout[7]_i_8_n_0\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal empty00 : STD_LOGIC;
  signal empty03 : STD_LOGIC;
  signal \empty03_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \empty03_carry__0_i_2_n_2\ : STD_LOGIC;
  signal \empty03_carry__0_i_2_n_3\ : STD_LOGIC;
  signal empty03_carry_i_1_n_0 : STD_LOGIC;
  signal empty03_carry_i_2_n_0 : STD_LOGIC;
  signal empty03_carry_i_3_n_0 : STD_LOGIC;
  signal empty03_carry_i_4_n_0 : STD_LOGIC;
  signal empty03_carry_i_5_n_0 : STD_LOGIC;
  signal empty03_carry_i_5_n_1 : STD_LOGIC;
  signal empty03_carry_i_5_n_2 : STD_LOGIC;
  signal empty03_carry_i_5_n_3 : STD_LOGIC;
  signal empty03_carry_i_6_n_0 : STD_LOGIC;
  signal empty03_carry_i_6_n_1 : STD_LOGIC;
  signal empty03_carry_i_6_n_2 : STD_LOGIC;
  signal empty03_carry_i_6_n_3 : STD_LOGIC;
  signal empty03_carry_i_7_n_0 : STD_LOGIC;
  signal empty03_carry_i_7_n_1 : STD_LOGIC;
  signal empty03_carry_i_7_n_2 : STD_LOGIC;
  signal empty03_carry_i_7_n_3 : STD_LOGIC;
  signal empty03_carry_i_8_n_0 : STD_LOGIC;
  signal empty03_carry_n_0 : STD_LOGIC;
  signal empty03_carry_n_1 : STD_LOGIC;
  signal empty03_carry_n_2 : STD_LOGIC;
  signal empty03_carry_n_3 : STD_LOGIC;
  signal empty0_i_10_n_0 : STD_LOGIC;
  signal empty0_i_11_n_0 : STD_LOGIC;
  signal empty0_i_12_n_0 : STD_LOGIC;
  signal empty0_i_2_n_0 : STD_LOGIC;
  signal empty0_i_3_n_0 : STD_LOGIC;
  signal empty0_i_4_n_0 : STD_LOGIC;
  signal empty0_i_5_n_0 : STD_LOGIC;
  signal empty0_i_6_n_0 : STD_LOGIC;
  signal empty0_i_7_n_0 : STD_LOGIC;
  signal empty0_i_8_n_0 : STD_LOGIC;
  signal empty0_i_9_n_0 : STD_LOGIC;
  signal full00 : STD_LOGIC;
  signal full03 : STD_LOGIC;
  signal \full03_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \full03_carry__0_i_2_n_2\ : STD_LOGIC;
  signal \full03_carry__0_i_2_n_3\ : STD_LOGIC;
  signal full03_carry_i_1_n_0 : STD_LOGIC;
  signal full03_carry_i_2_n_0 : STD_LOGIC;
  signal full03_carry_i_3_n_0 : STD_LOGIC;
  signal full03_carry_i_4_n_0 : STD_LOGIC;
  signal full03_carry_i_5_n_0 : STD_LOGIC;
  signal full03_carry_i_5_n_1 : STD_LOGIC;
  signal full03_carry_i_5_n_2 : STD_LOGIC;
  signal full03_carry_i_5_n_3 : STD_LOGIC;
  signal full03_carry_i_6_n_0 : STD_LOGIC;
  signal full03_carry_i_6_n_1 : STD_LOGIC;
  signal full03_carry_i_6_n_2 : STD_LOGIC;
  signal full03_carry_i_6_n_3 : STD_LOGIC;
  signal full03_carry_i_7_n_0 : STD_LOGIC;
  signal full03_carry_i_7_n_1 : STD_LOGIC;
  signal full03_carry_i_7_n_2 : STD_LOGIC;
  signal full03_carry_i_7_n_3 : STD_LOGIC;
  signal full03_carry_i_8_n_0 : STD_LOGIC;
  signal full03_carry_n_0 : STD_LOGIC;
  signal full03_carry_n_1 : STD_LOGIC;
  signal full03_carry_n_2 : STD_LOGIC;
  signal full03_carry_n_3 : STD_LOGIC;
  signal full0_i_2_n_0 : STD_LOGIC;
  signal full0_i_3_n_0 : STD_LOGIC;
  signal full0_i_4_n_0 : STD_LOGIC;
  signal full0_i_5_n_0 : STD_LOGIC;
  signal full0_i_6_n_0 : STD_LOGIC;
  signal \memory[0]1\ : STD_LOGIC;
  signal \memory[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \memory[0]_14\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory[10]_4\ : STD_LOGIC;
  signal \memory[11]_3\ : STD_LOGIC;
  signal \memory[12][7]_i_2_n_0\ : STD_LOGIC;
  signal \memory[12]_12\ : STD_LOGIC;
  signal \memory[13]_8\ : STD_LOGIC;
  signal \memory[14]_11\ : STD_LOGIC;
  signal \memory[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \memory[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \memory[1]_2\ : STD_LOGIC;
  signal \memory[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \memory[2]_1\ : STD_LOGIC;
  signal \memory[3]_0\ : STD_LOGIC;
  signal \memory[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \memory[4]_13\ : STD_LOGIC;
  signal \memory[5]_10\ : STD_LOGIC;
  signal \memory[6]_7\ : STD_LOGIC;
  signal \memory[7]_6\ : STD_LOGIC;
  signal \memory[8][7]_i_2_n_0\ : STD_LOGIC;
  signal \memory[8][7]_i_3_n_0\ : STD_LOGIC;
  signal \memory[8]_5\ : STD_LOGIC;
  signal \memory[9]_9\ : STD_LOGIC;
  signal \memory_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[12]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[13]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[8]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \memory_reg[9]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal plusOp0_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal readptr : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \readptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \readptr[14]_i_4_n_0\ : STD_LOGIC;
  signal \readptr[14]_i_5_n_0\ : STD_LOGIC;
  signal \readptr_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \readptr_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \readptr_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \readptr_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \readptr_reg[14]_i_3_n_3\ : STD_LOGIC;
  signal \readptr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \readptr_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \readptr_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \readptr_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \readptr_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \readptr_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \readptr_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \readptr_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \readptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[10]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[11]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[12]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[13]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[14]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[5]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[6]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[7]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[8]\ : STD_LOGIC;
  signal \readptr_reg_n_0_[9]\ : STD_LOGIC;
  signal writeptr : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \writeptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeptr[14]_i_4_n_0\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \writeptr_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \writeptr_reg[14]_i_3_n_3\ : STD_LOGIC;
  signal \writeptr_reg[14]_i_3_n_6\ : STD_LOGIC;
  signal \writeptr_reg[14]_i_3_n_7\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \writeptr_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \writeptr_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[10]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[11]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[12]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[13]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[14]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[2]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[3]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[4]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[5]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[6]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[7]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[8]\ : STD_LOGIC;
  signal \writeptr_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_empty03_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_empty03_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_empty03_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_empty03_carry__0_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_empty03_carry__0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_full03_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_full03_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_full03_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_full03_carry__0_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_full03_carry__0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_readptr_reg[14]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_readptr_reg[14]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_writeptr_reg[14]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_writeptr_reg[14]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Dout[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Dout[7]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of Err_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of empty0_i_11 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of empty0_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of empty0_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of empty0_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of empty0_i_9 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of full0_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of full0_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of full0_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of full0_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \memory[1][7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \memory[2][7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \memory[8][7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \memory[8][7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \readptr[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \readptr[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \readptr[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \readptr[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \readptr[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \readptr[14]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \readptr[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \readptr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \readptr[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \readptr[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \readptr[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \readptr[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \readptr[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \readptr[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \readptr[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \writeptr[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \writeptr[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \writeptr[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \writeptr[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \writeptr[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \writeptr[14]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \writeptr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \writeptr[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \writeptr[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \writeptr[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \writeptr[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \writeptr[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \writeptr[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \writeptr[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \writeptr[9]_i_1\ : label is "soft_lutpair21";
begin
  Empty <= \^empty\;
  Full <= \^full\;
\Dout[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[0]_i_2_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[0]_i_3_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[0]_i_4_n_0\,
      O => \memory[0]_14\(0)
    );
\Dout[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(0),
      I1 => \Dout[0]_i_5_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(0),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(0),
      O => \Dout[0]_i_2_n_0\
    );
\Dout[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(0),
      I1 => \memory_reg[6]\(0),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(0),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(0),
      O => \Dout[0]_i_3_n_0\
    );
\Dout[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(0),
      I1 => \memory_reg[2]\(0),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(0),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(0),
      O => \Dout[0]_i_4_n_0\
    );
\Dout[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(0),
      I1 => \memory_reg[10]\(0),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(0),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(0),
      O => \Dout[0]_i_5_n_0\
    );
\Dout[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[1]_i_2_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[1]_i_3_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[1]_i_4_n_0\,
      O => \memory[0]_14\(1)
    );
\Dout[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(1),
      I1 => \Dout[1]_i_5_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(1),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(1),
      O => \Dout[1]_i_2_n_0\
    );
\Dout[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(1),
      I1 => \memory_reg[6]\(1),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(1),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(1),
      O => \Dout[1]_i_3_n_0\
    );
\Dout[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(1),
      I1 => \memory_reg[2]\(1),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(1),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(1),
      O => \Dout[1]_i_4_n_0\
    );
\Dout[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(1),
      I1 => \memory_reg[10]\(1),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(1),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(1),
      O => \Dout[1]_i_5_n_0\
    );
\Dout[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[2]_i_2_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[2]_i_3_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[2]_i_4_n_0\,
      O => \memory[0]_14\(2)
    );
\Dout[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(2),
      I1 => \Dout[2]_i_5_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(2),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(2),
      O => \Dout[2]_i_2_n_0\
    );
\Dout[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(2),
      I1 => \memory_reg[6]\(2),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(2),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(2),
      O => \Dout[2]_i_3_n_0\
    );
\Dout[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(2),
      I1 => \memory_reg[2]\(2),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(2),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(2),
      O => \Dout[2]_i_4_n_0\
    );
\Dout[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(2),
      I1 => \memory_reg[10]\(2),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(2),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(2),
      O => \Dout[2]_i_5_n_0\
    );
\Dout[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[3]_i_2_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[3]_i_3_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[3]_i_4_n_0\,
      O => \memory[0]_14\(3)
    );
\Dout[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(3),
      I1 => \Dout[3]_i_5_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(3),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(3),
      O => \Dout[3]_i_2_n_0\
    );
\Dout[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(3),
      I1 => \memory_reg[6]\(3),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(3),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(3),
      O => \Dout[3]_i_3_n_0\
    );
\Dout[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(3),
      I1 => \memory_reg[2]\(3),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(3),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(3),
      O => \Dout[3]_i_4_n_0\
    );
\Dout[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(3),
      I1 => \memory_reg[10]\(3),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(3),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(3),
      O => \Dout[3]_i_5_n_0\
    );
\Dout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[4]_i_2_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[4]_i_3_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[4]_i_4_n_0\,
      O => \memory[0]_14\(4)
    );
\Dout[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(4),
      I1 => \Dout[4]_i_5_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(4),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(4),
      O => \Dout[4]_i_2_n_0\
    );
\Dout[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(4),
      I1 => \memory_reg[6]\(4),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(4),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(4),
      O => \Dout[4]_i_3_n_0\
    );
\Dout[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(4),
      I1 => \memory_reg[2]\(4),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(4),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(4),
      O => \Dout[4]_i_4_n_0\
    );
\Dout[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(4),
      I1 => \memory_reg[10]\(4),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(4),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(4),
      O => \Dout[4]_i_5_n_0\
    );
\Dout[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[5]_i_2_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[5]_i_3_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[5]_i_4_n_0\,
      O => \memory[0]_14\(5)
    );
\Dout[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(5),
      I1 => \Dout[5]_i_5_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(5),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(5),
      O => \Dout[5]_i_2_n_0\
    );
\Dout[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(5),
      I1 => \memory_reg[6]\(5),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(5),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(5),
      O => \Dout[5]_i_3_n_0\
    );
\Dout[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(5),
      I1 => \memory_reg[2]\(5),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(5),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(5),
      O => \Dout[5]_i_4_n_0\
    );
\Dout[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(5),
      I1 => \memory_reg[10]\(5),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(5),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(5),
      O => \Dout[5]_i_5_n_0\
    );
\Dout[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[6]_i_2_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[6]_i_3_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[6]_i_4_n_0\,
      O => \memory[0]_14\(6)
    );
\Dout[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(6),
      I1 => \Dout[6]_i_5_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(6),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(6),
      O => \Dout[6]_i_2_n_0\
    );
\Dout[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(6),
      I1 => \memory_reg[6]\(6),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(6),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(6),
      O => \Dout[6]_i_3_n_0\
    );
\Dout[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(6),
      I1 => \memory_reg[2]\(6),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(6),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(6),
      O => \Dout[6]_i_4_n_0\
    );
\Dout[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(6),
      I1 => \memory_reg[10]\(6),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(6),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(6),
      O => \Dout[6]_i_5_n_0\
    );
\Dout[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^empty\,
      I1 => Ren,
      I2 => reset,
      O => Dout0
    );
\Dout[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \Dout[7]_i_3_n_0\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \Dout[7]_i_4_n_0\,
      I3 => \readptr_reg_n_0_[2]\,
      I4 => \Dout[7]_i_5_n_0\,
      O => \memory[0]_14\(7)
    );
\Dout[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[14]\(7),
      I1 => \Dout[7]_i_6_n_0\,
      I2 => \Dout[7]_i_7_n_0\,
      I3 => \memory_reg[12]\(7),
      I4 => \Dout[7]_i_8_n_0\,
      I5 => \memory_reg[13]\(7),
      O => \Dout[7]_i_3_n_0\
    );
\Dout[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[7]\(7),
      I1 => \memory_reg[6]\(7),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[5]\(7),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[4]\(7),
      O => \Dout[7]_i_4_n_0\
    );
\Dout[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[3]\(7),
      I1 => \memory_reg[2]\(7),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[1]\(7),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[0]\(7),
      O => \Dout[7]_i_5_n_0\
    );
\Dout[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \memory_reg[11]\(7),
      I1 => \memory_reg[10]\(7),
      I2 => \readptr_reg_n_0_[1]\,
      I3 => \memory_reg[9]\(7),
      I4 => \readptr_reg_n_0_[0]\,
      I5 => \memory_reg[8]\(7),
      O => \Dout[7]_i_6_n_0\
    );
\Dout[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \readptr_reg_n_0_[1]\,
      I1 => \readptr_reg_n_0_[2]\,
      O => \Dout[7]_i_7_n_0\
    );
\Dout[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \readptr_reg_n_0_[0]\,
      I1 => \readptr_reg_n_0_[1]\,
      I2 => \readptr_reg_n_0_[2]\,
      O => \Dout[7]_i_8_n_0\
    );
\Dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(0),
      Q => Dout(0),
      R => '0'
    );
\Dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(1),
      Q => Dout(1),
      R => '0'
    );
\Dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(2),
      Q => Dout(2),
      R => '0'
    );
\Dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(3),
      Q => Dout(3),
      R => '0'
    );
\Dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(4),
      Q => Dout(4),
      R => '0'
    );
\Dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(5),
      Q => Dout(5),
      R => '0'
    );
\Dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(6),
      Q => Dout(6),
      R => '0'
    );
\Dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => Dout0,
      D => \memory[0]_14\(7),
      Q => Dout(7),
      R => '0'
    );
Err_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^full\,
      I1 => Wen,
      I2 => \^empty\,
      I3 => Ren,
      O => Err
    );
empty03_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => empty03_carry_n_0,
      CO(2) => empty03_carry_n_1,
      CO(1) => empty03_carry_n_2,
      CO(0) => empty03_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_empty03_carry_O_UNCONNECTED(3 downto 0),
      S(3) => empty03_carry_i_1_n_0,
      S(2) => empty03_carry_i_2_n_0,
      S(1) => empty03_carry_i_3_n_0,
      S(0) => empty03_carry_i_4_n_0
    );
\empty03_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => empty03_carry_n_0,
      CO(3 downto 1) => \NLW_empty03_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => empty03,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_empty03_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \empty03_carry__0_i_1_n_0\
    );
\empty03_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => plusOp(12),
      I1 => \writeptr_reg_n_0_[12]\,
      I2 => plusOp(13),
      I3 => \writeptr_reg_n_0_[13]\,
      I4 => \writeptr_reg_n_0_[14]\,
      I5 => plusOp(14),
      O => \empty03_carry__0_i_1_n_0\
    );
\empty03_carry__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => empty03_carry_i_5_n_0,
      CO(3 downto 2) => \NLW_empty03_carry__0_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \empty03_carry__0_i_2_n_2\,
      CO(0) => \empty03_carry__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_empty03_carry__0_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(14 downto 12),
      S(3) => '0',
      S(2) => \readptr_reg_n_0_[14]\,
      S(1) => \readptr_reg_n_0_[13]\,
      S(0) => \readptr_reg_n_0_[12]\
    );
empty03_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => plusOp(11),
      I1 => \writeptr_reg_n_0_[11]\,
      I2 => plusOp(9),
      I3 => \writeptr_reg_n_0_[9]\,
      I4 => \writeptr_reg_n_0_[10]\,
      I5 => plusOp(10),
      O => empty03_carry_i_1_n_0
    );
empty03_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => plusOp(7),
      I1 => \writeptr_reg_n_0_[7]\,
      I2 => plusOp(6),
      I3 => \writeptr_reg_n_0_[6]\,
      I4 => \writeptr_reg_n_0_[8]\,
      I5 => plusOp(8),
      O => empty03_carry_i_2_n_0
    );
empty03_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \writeptr_reg_n_0_[3]\,
      I1 => plusOp(3),
      I2 => plusOp(5),
      I3 => \writeptr_reg_n_0_[5]\,
      I4 => plusOp(4),
      I5 => \writeptr_reg_n_0_[4]\,
      O => empty03_carry_i_3_n_0
    );
empty03_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \writeptr_reg_n_0_[1]\,
      I1 => plusOp(1),
      I2 => plusOp(2),
      I3 => \writeptr_reg_n_0_[2]\,
      I4 => plusOp(0),
      I5 => \writeptr_reg_n_0_[0]\,
      O => empty03_carry_i_4_n_0
    );
empty03_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => empty03_carry_i_6_n_0,
      CO(3) => empty03_carry_i_5_n_0,
      CO(2) => empty03_carry_i_5_n_1,
      CO(1) => empty03_carry_i_5_n_2,
      CO(0) => empty03_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(11 downto 8),
      S(3) => \readptr_reg_n_0_[11]\,
      S(2) => \readptr_reg_n_0_[10]\,
      S(1) => \readptr_reg_n_0_[9]\,
      S(0) => \readptr_reg_n_0_[8]\
    );
empty03_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => empty03_carry_i_7_n_0,
      CO(3) => empty03_carry_i_6_n_0,
      CO(2) => empty03_carry_i_6_n_1,
      CO(1) => empty03_carry_i_6_n_2,
      CO(0) => empty03_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \readptr_reg_n_0_[7]\,
      S(2) => \readptr_reg_n_0_[6]\,
      S(1) => \readptr_reg_n_0_[5]\,
      S(0) => \readptr_reg_n_0_[4]\
    );
empty03_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => empty03_carry_i_7_n_0,
      CO(2) => empty03_carry_i_7_n_1,
      CO(1) => empty03_carry_i_7_n_2,
      CO(0) => empty03_carry_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \readptr_reg_n_0_[1]\,
      DI(0) => '0',
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \readptr_reg_n_0_[3]\,
      S(2) => \readptr_reg_n_0_[2]\,
      S(1) => empty03_carry_i_8_n_0,
      S(0) => \readptr_reg_n_0_[0]\
    );
empty03_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \readptr_reg_n_0_[1]\,
      O => empty03_carry_i_8_n_0
    );
empty0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00B3"
    )
        port map (
      I0 => empty0_i_2_n_0,
      I1 => empty0_i_3_n_0,
      I2 => empty0_i_4_n_0,
      I3 => empty0_i_5_n_0,
      I4 => empty03,
      I5 => empty0_i_6_n_0,
      O => empty00
    );
empty0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \writeptr_reg_n_0_[4]\,
      I1 => \writeptr_reg_n_0_[5]\,
      I2 => \writeptr_reg_n_0_[7]\,
      I3 => \writeptr_reg_n_0_[6]\,
      O => empty0_i_10_n_0
    );
empty0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \writeptr_reg_n_0_[9]\,
      I1 => \writeptr_reg_n_0_[8]\,
      I2 => \writeptr_reg_n_0_[11]\,
      I3 => \writeptr_reg_n_0_[10]\,
      O => empty0_i_11_n_0
    );
empty0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeptr_reg_n_0_[13]\,
      I1 => \writeptr_reg_n_0_[14]\,
      I2 => \writeptr_reg_n_0_[12]\,
      O => empty0_i_12_n_0
    );
empty0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \readptr_reg_n_0_[3]\,
      I1 => \readptr_reg_n_0_[2]\,
      O => empty0_i_2_n_0
    );
empty0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \readptr_reg_n_0_[12]\,
      I1 => \readptr_reg_n_0_[14]\,
      I2 => \readptr_reg_n_0_[13]\,
      I3 => empty0_i_7_n_0,
      I4 => empty0_i_8_n_0,
      O => empty0_i_3_n_0
    );
empty0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \readptr_reg_n_0_[1]\,
      I1 => \readptr_reg_n_0_[0]\,
      O => empty0_i_4_n_0
    );
empty0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \writeptr_reg_n_0_[3]\,
      I1 => \writeptr_reg_n_0_[2]\,
      I2 => empty0_i_9_n_0,
      I3 => empty0_i_10_n_0,
      I4 => empty0_i_11_n_0,
      I5 => empty0_i_12_n_0,
      O => empty0_i_5_n_0
    );
empty0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Wen,
      I1 => Ren,
      O => empty0_i_6_n_0
    );
empty0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \readptr_reg_n_0_[9]\,
      I1 => \readptr_reg_n_0_[8]\,
      I2 => \readptr_reg_n_0_[11]\,
      I3 => \readptr_reg_n_0_[10]\,
      O => empty0_i_7_n_0
    );
empty0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \readptr_reg_n_0_[6]\,
      I1 => \readptr_reg_n_0_[5]\,
      I2 => \readptr_reg_n_0_[7]\,
      I3 => \readptr_reg_n_0_[4]\,
      O => empty0_i_8_n_0
    );
empty0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \writeptr_reg_n_0_[0]\,
      I1 => \writeptr_reg_n_0_[1]\,
      O => empty0_i_9_n_0
    );
empty0_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty00,
      PRE => reset,
      Q => \^empty\
    );
full03_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full03_carry_n_0,
      CO(2) => full03_carry_n_1,
      CO(1) => full03_carry_n_2,
      CO(0) => full03_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_full03_carry_O_UNCONNECTED(3 downto 0),
      S(3) => full03_carry_i_1_n_0,
      S(2) => full03_carry_i_2_n_0,
      S(1) => full03_carry_i_3_n_0,
      S(0) => full03_carry_i_4_n_0
    );
\full03_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => full03_carry_n_0,
      CO(3 downto 1) => \NLW_full03_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => full03,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_full03_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \full03_carry__0_i_1_n_0\
    );
\full03_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => plusOp0_in(12),
      I1 => \readptr_reg_n_0_[12]\,
      I2 => plusOp0_in(13),
      I3 => \readptr_reg_n_0_[13]\,
      I4 => \readptr_reg_n_0_[14]\,
      I5 => plusOp0_in(14),
      O => \full03_carry__0_i_1_n_0\
    );
\full03_carry__0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => full03_carry_i_5_n_0,
      CO(3 downto 2) => \NLW_full03_carry__0_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \full03_carry__0_i_2_n_2\,
      CO(0) => \full03_carry__0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_full03_carry__0_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp0_in(14 downto 12),
      S(3) => '0',
      S(2) => \writeptr_reg_n_0_[14]\,
      S(1) => \writeptr_reg_n_0_[13]\,
      S(0) => \writeptr_reg_n_0_[12]\
    );
full03_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => plusOp0_in(11),
      I1 => \readptr_reg_n_0_[11]\,
      I2 => plusOp0_in(9),
      I3 => \readptr_reg_n_0_[9]\,
      I4 => \readptr_reg_n_0_[10]\,
      I5 => plusOp0_in(10),
      O => full03_carry_i_1_n_0
    );
full03_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => plusOp0_in(6),
      I1 => \readptr_reg_n_0_[6]\,
      I2 => plusOp0_in(7),
      I3 => \readptr_reg_n_0_[7]\,
      I4 => \readptr_reg_n_0_[8]\,
      I5 => plusOp0_in(8),
      O => full03_carry_i_2_n_0
    );
full03_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => plusOp0_in(3),
      I1 => \readptr_reg_n_0_[3]\,
      I2 => plusOp0_in(4),
      I3 => \readptr_reg_n_0_[4]\,
      I4 => \readptr_reg_n_0_[5]\,
      I5 => plusOp0_in(5),
      O => full03_carry_i_3_n_0
    );
full03_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \readptr_reg_n_0_[0]\,
      I1 => plusOp0_in(0),
      I2 => plusOp0_in(2),
      I3 => \readptr_reg_n_0_[2]\,
      I4 => plusOp0_in(1),
      I5 => \readptr_reg_n_0_[1]\,
      O => full03_carry_i_4_n_0
    );
full03_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => full03_carry_i_6_n_0,
      CO(3) => full03_carry_i_5_n_0,
      CO(2) => full03_carry_i_5_n_1,
      CO(1) => full03_carry_i_5_n_2,
      CO(0) => full03_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(11 downto 8),
      S(3) => \writeptr_reg_n_0_[11]\,
      S(2) => \writeptr_reg_n_0_[10]\,
      S(1) => \writeptr_reg_n_0_[9]\,
      S(0) => \writeptr_reg_n_0_[8]\
    );
full03_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => full03_carry_i_7_n_0,
      CO(3) => full03_carry_i_6_n_0,
      CO(2) => full03_carry_i_6_n_1,
      CO(1) => full03_carry_i_6_n_2,
      CO(0) => full03_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(7 downto 4),
      S(3) => \writeptr_reg_n_0_[7]\,
      S(2) => \writeptr_reg_n_0_[6]\,
      S(1) => \writeptr_reg_n_0_[5]\,
      S(0) => \writeptr_reg_n_0_[4]\
    );
full03_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full03_carry_i_7_n_0,
      CO(2) => full03_carry_i_7_n_1,
      CO(1) => full03_carry_i_7_n_2,
      CO(0) => full03_carry_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \writeptr_reg_n_0_[1]\,
      DI(0) => '0',
      O(3 downto 0) => plusOp0_in(3 downto 0),
      S(3) => \writeptr_reg_n_0_[3]\,
      S(2) => \writeptr_reg_n_0_[2]\,
      S(1) => full03_carry_i_8_n_0,
      S(0) => \writeptr_reg_n_0_[0]\
    );
full03_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeptr_reg_n_0_[1]\,
      O => full03_carry_i_8_n_0
    );
full0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0200"
    )
        port map (
      I0 => full0_i_2_n_0,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \readptr_reg_n_0_[2]\,
      I3 => full0_i_3_n_0,
      I4 => full03,
      I5 => full0_i_4_n_0,
      O => full00
    );
full0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFFFFFFFE"
    )
        port map (
      I0 => empty0_i_10_n_0,
      I1 => empty0_i_11_n_0,
      I2 => empty0_i_12_n_0,
      I3 => \writeptr_reg_n_0_[0]\,
      I4 => \writeptr_reg_n_0_[1]\,
      I5 => full0_i_5_n_0,
      O => full0_i_2_n_0
    );
full0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => empty0_i_8_n_0,
      I1 => empty0_i_7_n_0,
      I2 => full0_i_6_n_0,
      I3 => \readptr_reg_n_0_[0]\,
      I4 => \readptr_reg_n_0_[1]\,
      O => full0_i_3_n_0
    );
full0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Ren,
      I1 => Wen,
      O => full0_i_4_n_0
    );
full0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \writeptr_reg_n_0_[2]\,
      I1 => \writeptr_reg_n_0_[3]\,
      O => full0_i_5_n_0
    );
full0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \readptr_reg_n_0_[13]\,
      I1 => \readptr_reg_n_0_[14]\,
      I2 => \readptr_reg_n_0_[12]\,
      O => full0_i_6_n_0
    );
full0_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => full00,
      Q => \^full\
    );
\memory[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Wen,
      I1 => \^full\,
      I2 => empty0_i_5_n_0,
      O => \memory[0][7]_i_1_n_0\
    );
\memory[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \memory[2][7]_i_2_n_0\,
      I1 => \memory[1][7]_i_3_n_0\,
      I2 => \writeptr_reg_n_0_[2]\,
      I3 => \writeptr_reg_n_0_[3]\,
      I4 => \writeptr_reg_n_0_[4]\,
      I5 => \writeptr_reg_n_0_[0]\,
      O => \memory[10]_4\
    );
\memory[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \writeptr_reg_n_0_[4]\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \memory[1][7]_i_2_n_0\,
      I3 => \writeptr_reg_n_0_[3]\,
      I4 => \writeptr_reg_n_0_[2]\,
      I5 => \memory[1][7]_i_3_n_0\,
      O => \memory[11]_3\
    );
\memory[12][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \writeptr_reg_n_0_[4]\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \writeptr_reg_n_0_[0]\,
      I3 => \memory[12][7]_i_2_n_0\,
      O => \memory[12]_12\
    );
\memory[12][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \writeptr_reg_n_0_[3]\,
      I1 => \memory[1][7]_i_3_n_0\,
      I2 => \writeptr_reg_n_0_[2]\,
      I3 => \writeptr_reg_n_0_[13]\,
      I4 => \writeptr_reg_n_0_[14]\,
      I5 => \memory[8][7]_i_2_n_0\,
      O => \memory[12][7]_i_2_n_0\
    );
\memory[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \memory[1][7]_i_3_n_0\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \writeptr_reg_n_0_[4]\,
      I3 => \memory[1][7]_i_2_n_0\,
      I4 => \writeptr_reg_n_0_[3]\,
      I5 => \writeptr_reg_n_0_[2]\,
      O => \memory[13]_8\
    );
\memory[14][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \memory[12][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \writeptr_reg_n_0_[4]\,
      I3 => \writeptr_reg_n_0_[0]\,
      O => \memory[14]_11\
    );
\memory[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \memory[1][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[4]\,
      I2 => \writeptr_reg_n_0_[1]\,
      I3 => \writeptr_reg_n_0_[3]\,
      I4 => \writeptr_reg_n_0_[2]\,
      I5 => \memory[1][7]_i_3_n_0\,
      O => \memory[1]_2\
    );
\memory[1][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \memory[8][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[0]\,
      I2 => \writeptr_reg_n_0_[13]\,
      I3 => \writeptr_reg_n_0_[14]\,
      O => \memory[1][7]_i_2_n_0\
    );
\memory[1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \writeptr_reg_n_0_[6]\,
      I1 => \writeptr_reg_n_0_[7]\,
      I2 => \writeptr_reg_n_0_[5]\,
      I3 => \writeptr_reg_n_0_[8]\,
      I4 => Wen,
      I5 => \^full\,
      O => \memory[1][7]_i_3_n_0\
    );
\memory[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \memory[2][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[4]\,
      I2 => \writeptr_reg_n_0_[0]\,
      I3 => \writeptr_reg_n_0_[3]\,
      I4 => \writeptr_reg_n_0_[2]\,
      I5 => \memory[1][7]_i_3_n_0\,
      O => \memory[2]_1\
    );
\memory[2][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \memory[8][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \writeptr_reg_n_0_[13]\,
      I3 => \writeptr_reg_n_0_[14]\,
      O => \memory[2][7]_i_2_n_0\
    );
\memory[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \writeptr_reg_n_0_[4]\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \memory[1][7]_i_2_n_0\,
      I3 => \memory[1][7]_i_3_n_0\,
      I4 => \writeptr_reg_n_0_[2]\,
      I5 => \writeptr_reg_n_0_[3]\,
      O => \memory[3]_0\
    );
\memory[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \memory[4][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[0]\,
      I2 => \writeptr_reg_n_0_[1]\,
      I3 => \writeptr_reg_n_0_[4]\,
      I4 => \writeptr_reg_n_0_[3]\,
      O => \memory[4]_13\
    );
\memory[4][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \memory[8][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[14]\,
      I2 => \writeptr_reg_n_0_[13]\,
      I3 => \writeptr_reg_n_0_[2]\,
      I4 => \memory[1][7]_i_3_n_0\,
      O => \memory[4][7]_i_2_n_0\
    );
\memory[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \writeptr_reg_n_0_[4]\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \memory[1][7]_i_3_n_0\,
      I3 => \memory[1][7]_i_2_n_0\,
      I4 => \writeptr_reg_n_0_[3]\,
      I5 => \writeptr_reg_n_0_[2]\,
      O => \memory[5]_10\
    );
\memory[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \memory[2][7]_i_2_n_0\,
      I1 => \writeptr_reg_n_0_[0]\,
      I2 => \writeptr_reg_n_0_[4]\,
      I3 => \writeptr_reg_n_0_[2]\,
      I4 => \writeptr_reg_n_0_[3]\,
      I5 => \memory[1][7]_i_3_n_0\,
      O => \memory[6]_7\
    );
\memory[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \writeptr_reg_n_0_[4]\,
      I1 => \writeptr_reg_n_0_[1]\,
      I2 => \memory[1][7]_i_2_n_0\,
      I3 => \writeptr_reg_n_0_[3]\,
      I4 => \writeptr_reg_n_0_[2]\,
      I5 => \memory[1][7]_i_3_n_0\,
      O => \memory[7]_6\
    );
\memory[8][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \writeptr_reg_n_0_[1]\,
      I1 => \writeptr_reg_n_0_[14]\,
      I2 => \writeptr_reg_n_0_[13]\,
      I3 => \memory[8][7]_i_2_n_0\,
      I4 => \memory[8][7]_i_3_n_0\,
      O => \memory[8]_5\
    );
\memory[8][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \writeptr_reg_n_0_[10]\,
      I1 => \writeptr_reg_n_0_[11]\,
      I2 => \writeptr_reg_n_0_[12]\,
      I3 => \writeptr_reg_n_0_[9]\,
      O => \memory[8][7]_i_2_n_0\
    );
\memory[8][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \writeptr_reg_n_0_[0]\,
      I1 => \writeptr_reg_n_0_[4]\,
      I2 => \writeptr_reg_n_0_[3]\,
      I3 => \writeptr_reg_n_0_[2]\,
      I4 => \memory[1][7]_i_3_n_0\,
      O => \memory[8][7]_i_3_n_0\
    );
\memory[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \writeptr_reg_n_0_[2]\,
      I1 => \writeptr_reg_n_0_[3]\,
      I2 => \memory[1][7]_i_3_n_0\,
      I3 => \writeptr_reg_n_0_[1]\,
      I4 => \writeptr_reg_n_0_[4]\,
      I5 => \memory[1][7]_i_2_n_0\,
      O => \memory[9]_9\
    );
\memory_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[0]\(0)
    );
\memory_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[0]\(1)
    );
\memory_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[0]\(2)
    );
\memory_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[0]\(3)
    );
\memory_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[0]\(4)
    );
\memory_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[0]\(5)
    );
\memory_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[0]\(6)
    );
\memory_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0][7]_i_1_n_0\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[0]\(7)
    );
\memory_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[10]\(0)
    );
\memory_reg[10][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[10]\(1)
    );
\memory_reg[10][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[10]\(2)
    );
\memory_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[10]\(3)
    );
\memory_reg[10][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[10]\(4)
    );
\memory_reg[10][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[10]\(5)
    );
\memory_reg[10][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[10]\(6)
    );
\memory_reg[10][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[10]_4\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[10]\(7)
    );
\memory_reg[11][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[11]\(0)
    );
\memory_reg[11][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[11]\(1)
    );
\memory_reg[11][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[11]\(2)
    );
\memory_reg[11][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[11]\(3)
    );
\memory_reg[11][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[11]\(4)
    );
\memory_reg[11][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[11]\(5)
    );
\memory_reg[11][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[11]\(6)
    );
\memory_reg[11][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[11]_3\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[11]\(7)
    );
\memory_reg[12][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[12]\(0)
    );
\memory_reg[12][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[12]\(1)
    );
\memory_reg[12][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[12]\(2)
    );
\memory_reg[12][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[12]\(3)
    );
\memory_reg[12][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[12]\(4)
    );
\memory_reg[12][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[12]\(5)
    );
\memory_reg[12][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[12]\(6)
    );
\memory_reg[12][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[12]_12\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[12]\(7)
    );
\memory_reg[13][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[13]\(0)
    );
\memory_reg[13][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[13]\(1)
    );
\memory_reg[13][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[13]\(2)
    );
\memory_reg[13][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[13]\(3)
    );
\memory_reg[13][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[13]\(4)
    );
\memory_reg[13][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[13]\(5)
    );
\memory_reg[13][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[13]\(6)
    );
\memory_reg[13][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[13]_8\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[13]\(7)
    );
\memory_reg[14][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[14]\(0)
    );
\memory_reg[14][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[14]\(1)
    );
\memory_reg[14][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[14]\(2)
    );
\memory_reg[14][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[14]\(3)
    );
\memory_reg[14][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[14]\(4)
    );
\memory_reg[14][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[14]\(5)
    );
\memory_reg[14][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[14]\(6)
    );
\memory_reg[14][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[14]_11\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[14]\(7)
    );
\memory_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[1]\(0)
    );
\memory_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[1]\(1)
    );
\memory_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[1]\(2)
    );
\memory_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[1]\(3)
    );
\memory_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[1]\(4)
    );
\memory_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[1]\(5)
    );
\memory_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[1]\(6)
    );
\memory_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[1]_2\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[1]\(7)
    );
\memory_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[2]\(0)
    );
\memory_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[2]\(1)
    );
\memory_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[2]\(2)
    );
\memory_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[2]\(3)
    );
\memory_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[2]\(4)
    );
\memory_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[2]\(5)
    );
\memory_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[2]\(6)
    );
\memory_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[2]_1\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[2]\(7)
    );
\memory_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[3]\(0)
    );
\memory_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[3]\(1)
    );
\memory_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[3]\(2)
    );
\memory_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[3]\(3)
    );
\memory_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[3]\(4)
    );
\memory_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[3]\(5)
    );
\memory_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[3]\(6)
    );
\memory_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[3]_0\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[3]\(7)
    );
\memory_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[4]\(0)
    );
\memory_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[4]\(1)
    );
\memory_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[4]\(2)
    );
\memory_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[4]\(3)
    );
\memory_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[4]\(4)
    );
\memory_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[4]\(5)
    );
\memory_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[4]\(6)
    );
\memory_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[4]_13\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[4]\(7)
    );
\memory_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[5]\(0)
    );
\memory_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[5]\(1)
    );
\memory_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[5]\(2)
    );
\memory_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[5]\(3)
    );
\memory_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[5]\(4)
    );
\memory_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[5]\(5)
    );
\memory_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[5]\(6)
    );
\memory_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[5]_10\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[5]\(7)
    );
\memory_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[6]\(0)
    );
\memory_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[6]\(1)
    );
\memory_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[6]\(2)
    );
\memory_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[6]\(3)
    );
\memory_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[6]\(4)
    );
\memory_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[6]\(5)
    );
\memory_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[6]\(6)
    );
\memory_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[6]_7\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[6]\(7)
    );
\memory_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[7]\(0)
    );
\memory_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[7]\(1)
    );
\memory_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[7]\(2)
    );
\memory_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[7]\(3)
    );
\memory_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[7]\(4)
    );
\memory_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[7]\(5)
    );
\memory_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[7]\(6)
    );
\memory_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[7]_6\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[7]\(7)
    );
\memory_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[8]\(0)
    );
\memory_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[8]\(1)
    );
\memory_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[8]\(2)
    );
\memory_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[8]\(3)
    );
\memory_reg[8][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[8]\(4)
    );
\memory_reg[8][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[8]\(5)
    );
\memory_reg[8][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[8]\(6)
    );
\memory_reg[8][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[8]_5\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[8]\(7)
    );
\memory_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(0),
      Q => \memory_reg[9]\(0)
    );
\memory_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(1),
      Q => \memory_reg[9]\(1)
    );
\memory_reg[9][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(2),
      Q => \memory_reg[9]\(2)
    );
\memory_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(3),
      Q => \memory_reg[9]\(3)
    );
\memory_reg[9][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(4),
      Q => \memory_reg[9]\(4)
    );
\memory_reg[9][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(5),
      Q => \memory_reg[9]\(5)
    );
\memory_reg[9][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(6),
      Q => \memory_reg[9]\(6)
    );
\memory_reg[9][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[9]_9\,
      CLR => reset,
      D => Din(7),
      Q => \memory_reg[9]\(7)
    );
\readptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \readptr_reg_n_0_[0]\,
      I1 => \readptr[14]_i_4_n_0\,
      O => \readptr[0]_i_1_n_0\
    );
\readptr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(10)
    );
\readptr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(11)
    );
\readptr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(12)
    );
\readptr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(13)
    );
\readptr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Ren,
      I1 => \^empty\,
      O => Dout1
    );
\readptr[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(14)
    );
\readptr[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => empty0_i_8_n_0,
      I1 => empty0_i_7_n_0,
      I2 => \readptr_reg_n_0_[13]\,
      I3 => \readptr_reg_n_0_[14]\,
      I4 => \readptr_reg_n_0_[12]\,
      I5 => \readptr[14]_i_5_n_0\,
      O => \readptr[14]_i_4_n_0\
    );
\readptr[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \readptr_reg_n_0_[2]\,
      I1 => \readptr_reg_n_0_[3]\,
      I2 => \readptr_reg_n_0_[0]\,
      I3 => \readptr_reg_n_0_[1]\,
      O => \readptr[14]_i_5_n_0\
    );
\readptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(1)
    );
\readptr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(2)
    );
\readptr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(3)
    );
\readptr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(4)
    );
\readptr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(5)
    );
\readptr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(6)
    );
\readptr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(7)
    );
\readptr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(8)
    );
\readptr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \readptr[14]_i_4_n_0\,
      O => readptr(9)
    );
\readptr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => \readptr[0]_i_1_n_0\,
      Q => \readptr_reg_n_0_[0]\
    );
\readptr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(10),
      Q => \readptr_reg_n_0_[10]\
    );
\readptr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(11),
      Q => \readptr_reg_n_0_[11]\
    );
\readptr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(12),
      Q => \readptr_reg_n_0_[12]\
    );
\readptr_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \readptr_reg[8]_i_2_n_0\,
      CO(3) => \readptr_reg[12]_i_2_n_0\,
      CO(2) => \readptr_reg[12]_i_2_n_1\,
      CO(1) => \readptr_reg[12]_i_2_n_2\,
      CO(0) => \readptr_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \readptr_reg_n_0_[12]\,
      S(2) => \readptr_reg_n_0_[11]\,
      S(1) => \readptr_reg_n_0_[10]\,
      S(0) => \readptr_reg_n_0_[9]\
    );
\readptr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(13),
      Q => \readptr_reg_n_0_[13]\
    );
\readptr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(14),
      Q => \readptr_reg_n_0_[14]\
    );
\readptr_reg[14]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \readptr_reg[12]_i_2_n_0\,
      CO(3 downto 1) => \NLW_readptr_reg[14]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \readptr_reg[14]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_readptr_reg[14]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \readptr_reg_n_0_[14]\,
      S(0) => \readptr_reg_n_0_[13]\
    );
\readptr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(1),
      Q => \readptr_reg_n_0_[1]\
    );
\readptr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(2),
      Q => \readptr_reg_n_0_[2]\
    );
\readptr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(3),
      Q => \readptr_reg_n_0_[3]\
    );
\readptr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(4),
      Q => \readptr_reg_n_0_[4]\
    );
\readptr_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \readptr_reg[4]_i_2_n_0\,
      CO(2) => \readptr_reg[4]_i_2_n_1\,
      CO(1) => \readptr_reg[4]_i_2_n_2\,
      CO(0) => \readptr_reg[4]_i_2_n_3\,
      CYINIT => \readptr_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \readptr_reg_n_0_[4]\,
      S(2) => \readptr_reg_n_0_[3]\,
      S(1) => \readptr_reg_n_0_[2]\,
      S(0) => \readptr_reg_n_0_[1]\
    );
\readptr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(5),
      Q => \readptr_reg_n_0_[5]\
    );
\readptr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(6),
      Q => \readptr_reg_n_0_[6]\
    );
\readptr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(7),
      Q => \readptr_reg_n_0_[7]\
    );
\readptr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(8),
      Q => \readptr_reg_n_0_[8]\
    );
\readptr_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \readptr_reg[4]_i_2_n_0\,
      CO(3) => \readptr_reg[8]_i_2_n_0\,
      CO(2) => \readptr_reg[8]_i_2_n_1\,
      CO(1) => \readptr_reg[8]_i_2_n_2\,
      CO(0) => \readptr_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \readptr_reg_n_0_[8]\,
      S(2) => \readptr_reg_n_0_[7]\,
      S(1) => \readptr_reg_n_0_[6]\,
      S(0) => \readptr_reg_n_0_[5]\
    );
\readptr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => Dout1,
      CLR => reset,
      D => readptr(9),
      Q => \readptr_reg_n_0_[9]\
    );
\writeptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeptr_reg_n_0_[0]\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => \writeptr[0]_i_1_n_0\
    );
\writeptr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[12]_i_2_n_6\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(10)
    );
\writeptr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[12]_i_2_n_5\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(11)
    );
\writeptr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[12]_i_2_n_4\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(12)
    );
\writeptr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[14]_i_3_n_7\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(13)
    );
\writeptr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Wen,
      I1 => \^full\,
      O => \memory[0]1\
    );
\writeptr[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[14]_i_3_n_6\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(14)
    );
\writeptr[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => empty0_i_10_n_0,
      I1 => empty0_i_11_n_0,
      I2 => empty0_i_12_n_0,
      I3 => \writeptr_reg_n_0_[0]\,
      I4 => \writeptr_reg_n_0_[1]\,
      I5 => full0_i_5_n_0,
      O => \writeptr[14]_i_4_n_0\
    );
\writeptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[4]_i_2_n_7\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(1)
    );
\writeptr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[4]_i_2_n_6\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(2)
    );
\writeptr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[4]_i_2_n_5\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(3)
    );
\writeptr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[4]_i_2_n_4\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(4)
    );
\writeptr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[8]_i_2_n_7\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(5)
    );
\writeptr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[8]_i_2_n_6\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(6)
    );
\writeptr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[8]_i_2_n_5\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(7)
    );
\writeptr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[8]_i_2_n_4\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(8)
    );
\writeptr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \writeptr_reg[12]_i_2_n_7\,
      I1 => \writeptr[14]_i_4_n_0\,
      O => writeptr(9)
    );
\writeptr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => \writeptr[0]_i_1_n_0\,
      Q => \writeptr_reg_n_0_[0]\
    );
\writeptr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(10),
      Q => \writeptr_reg_n_0_[10]\
    );
\writeptr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(11),
      Q => \writeptr_reg_n_0_[11]\
    );
\writeptr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(12),
      Q => \writeptr_reg_n_0_[12]\
    );
\writeptr_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeptr_reg[8]_i_2_n_0\,
      CO(3) => \writeptr_reg[12]_i_2_n_0\,
      CO(2) => \writeptr_reg[12]_i_2_n_1\,
      CO(1) => \writeptr_reg[12]_i_2_n_2\,
      CO(0) => \writeptr_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeptr_reg[12]_i_2_n_4\,
      O(2) => \writeptr_reg[12]_i_2_n_5\,
      O(1) => \writeptr_reg[12]_i_2_n_6\,
      O(0) => \writeptr_reg[12]_i_2_n_7\,
      S(3) => \writeptr_reg_n_0_[12]\,
      S(2) => \writeptr_reg_n_0_[11]\,
      S(1) => \writeptr_reg_n_0_[10]\,
      S(0) => \writeptr_reg_n_0_[9]\
    );
\writeptr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(13),
      Q => \writeptr_reg_n_0_[13]\
    );
\writeptr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(14),
      Q => \writeptr_reg_n_0_[14]\
    );
\writeptr_reg[14]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeptr_reg[12]_i_2_n_0\,
      CO(3 downto 1) => \NLW_writeptr_reg[14]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \writeptr_reg[14]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_writeptr_reg[14]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \writeptr_reg[14]_i_3_n_6\,
      O(0) => \writeptr_reg[14]_i_3_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \writeptr_reg_n_0_[14]\,
      S(0) => \writeptr_reg_n_0_[13]\
    );
\writeptr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(1),
      Q => \writeptr_reg_n_0_[1]\
    );
\writeptr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(2),
      Q => \writeptr_reg_n_0_[2]\
    );
\writeptr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(3),
      Q => \writeptr_reg_n_0_[3]\
    );
\writeptr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(4),
      Q => \writeptr_reg_n_0_[4]\
    );
\writeptr_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \writeptr_reg[4]_i_2_n_0\,
      CO(2) => \writeptr_reg[4]_i_2_n_1\,
      CO(1) => \writeptr_reg[4]_i_2_n_2\,
      CO(0) => \writeptr_reg[4]_i_2_n_3\,
      CYINIT => \writeptr_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \writeptr_reg[4]_i_2_n_4\,
      O(2) => \writeptr_reg[4]_i_2_n_5\,
      O(1) => \writeptr_reg[4]_i_2_n_6\,
      O(0) => \writeptr_reg[4]_i_2_n_7\,
      S(3) => \writeptr_reg_n_0_[4]\,
      S(2) => \writeptr_reg_n_0_[3]\,
      S(1) => \writeptr_reg_n_0_[2]\,
      S(0) => \writeptr_reg_n_0_[1]\
    );
\writeptr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(5),
      Q => \writeptr_reg_n_0_[5]\
    );
\writeptr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(6),
      Q => \writeptr_reg_n_0_[6]\
    );
\writeptr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(7),
      Q => \writeptr_reg_n_0_[7]\
    );
\writeptr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(8),
      Q => \writeptr_reg_n_0_[8]\
    );
\writeptr_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeptr_reg[4]_i_2_n_0\,
      CO(3) => \writeptr_reg[8]_i_2_n_0\,
      CO(2) => \writeptr_reg[8]_i_2_n_1\,
      CO(1) => \writeptr_reg[8]_i_2_n_2\,
      CO(0) => \writeptr_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeptr_reg[8]_i_2_n_4\,
      O(2) => \writeptr_reg[8]_i_2_n_5\,
      O(1) => \writeptr_reg[8]_i_2_n_6\,
      O(0) => \writeptr_reg[8]_i_2_n_7\,
      S(3) => \writeptr_reg_n_0_[8]\,
      S(2) => \writeptr_reg_n_0_[7]\,
      S(1) => \writeptr_reg_n_0_[6]\,
      S(0) => \writeptr_reg_n_0_[5]\
    );
\writeptr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \memory[0]1\,
      CLR => reset,
      D => writeptr(9),
      Q => \writeptr_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN_circular_buffer_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Ren : in STD_LOGIC;
    Wen : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Empty : out STD_LOGIC;
    Err : out STD_LOGIC;
    Full : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BOARD_DESIGN_circular_buffer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BOARD_DESIGN_circular_buffer_0_0 : entity is "BOARD_DESIGN_circular_buffer_0_0,circular_buffer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BOARD_DESIGN_circular_buffer_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BOARD_DESIGN_circular_buffer_0_0 : entity is "circular_buffer,Vivado 2017.4";
end BOARD_DESIGN_circular_buffer_0_0;

architecture STRUCTURE of BOARD_DESIGN_circular_buffer_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
U0: entity work.BOARD_DESIGN_circular_buffer_0_0_circular_buffer
     port map (
      Din(7 downto 0) => Din(7 downto 0),
      Dout(7 downto 0) => Dout(7 downto 0),
      Empty => Empty,
      Err => Err,
      Full => Full,
      Ren => Ren,
      Wen => Wen,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
