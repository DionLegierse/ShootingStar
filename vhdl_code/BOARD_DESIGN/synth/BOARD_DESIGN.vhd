--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Mar 11 21:14:58 2019
--Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
--Command     : generate_target BOARD_DESIGN.bd
--Design      : BOARD_DESIGN
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BOARD_DESIGN is
  port (
    clk : in STD_LOGIC;
    mc_clk_0 : in STD_LOGIC;
    mc_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sound_out_0 : out STD_LOGIC;
    sprite_attribute_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of BOARD_DESIGN : entity is "BOARD_DESIGN,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BOARD_DESIGN,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of BOARD_DESIGN : entity is "BOARD_DESIGN.hwdef";
end BOARD_DESIGN;

architecture STRUCTURE of BOARD_DESIGN is
  component BOARD_DESIGN_SYNTHESIZER_TOP_0_0 is
  port (
    clk : in STD_LOGIC;
    start_music : in STD_LOGIC;
    reset : in STD_LOGIC;
    soundEffect : in STD_LOGIC_VECTOR ( 7 downto 0 );
    startAddress : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sound_out : out STD_LOGIC
  );
  end component BOARD_DESIGN_SYNTHESIZER_TOP_0_0;
  component BOARD_DESIGN_COMMAND_PROCESSOR_0_0 is
  port (
    clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_clk : in STD_LOGIC;
    x_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    y_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sprite_memory_loc : out STD_LOGIC_VECTOR ( 12 downto 0 );
    sprite_attribute : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_register_loc : out STD_LOGIC_VECTOR ( 6 downto 0 );
    start_music : out STD_LOGIC;
    reset_APU : out STD_LOGIC;
    start_addres_APU : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component BOARD_DESIGN_COMMAND_PROCESSOR_0_0;
  signal COMMAND_PROCESSOR_0_reset_APU : STD_LOGIC;
  signal COMMAND_PROCESSOR_0_sprite_attribute : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal COMMAND_PROCESSOR_0_start_addres_APU : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal COMMAND_PROCESSOR_0_start_music : STD_LOGIC;
  signal SYNTHESIZER_TOP_0_sound_out : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal mc_clk_0_1 : STD_LOGIC;
  signal mc_data_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_COMMAND_PROCESSOR_0_sprite_memory_loc_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_COMMAND_PROCESSOR_0_sprite_register_loc_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_COMMAND_PROCESSOR_0_x_loc_sprite_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_COMMAND_PROCESSOR_0_y_loc_sprite_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN BOARD_DESIGN_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of mc_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.MC_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER of mc_clk_0 : signal is "XIL_INTERFACENAME CLK.MC_CLK_0, CLK_DOMAIN BOARD_DESIGN_mc_clk_0, FREQ_HZ 100000000, PHASE 0.000";
begin
  clk_1 <= clk;
  mc_clk_0_1 <= mc_clk_0;
  mc_data_0_1(7 downto 0) <= mc_data_0(7 downto 0);
  sound_out_0 <= SYNTHESIZER_TOP_0_sound_out;
  sprite_attribute_0(7 downto 0) <= COMMAND_PROCESSOR_0_sprite_attribute(7 downto 0);
COMMAND_PROCESSOR_0: component BOARD_DESIGN_COMMAND_PROCESSOR_0_0
     port map (
      clk => clk_1,
      mc_clk => mc_clk_0_1,
      mc_data(7 downto 0) => mc_data_0_1(7 downto 0),
      reset_APU => COMMAND_PROCESSOR_0_reset_APU,
      sprite_attribute(7 downto 0) => COMMAND_PROCESSOR_0_sprite_attribute(7 downto 0),
      sprite_memory_loc(12 downto 0) => NLW_COMMAND_PROCESSOR_0_sprite_memory_loc_UNCONNECTED(12 downto 0),
      sprite_register_loc(6 downto 0) => NLW_COMMAND_PROCESSOR_0_sprite_register_loc_UNCONNECTED(6 downto 0),
      start_addres_APU(10 downto 0) => COMMAND_PROCESSOR_0_start_addres_APU(10 downto 0),
      start_music => COMMAND_PROCESSOR_0_start_music,
      x_loc_sprite(8 downto 0) => NLW_COMMAND_PROCESSOR_0_x_loc_sprite_UNCONNECTED(8 downto 0),
      y_loc_sprite(8 downto 0) => NLW_COMMAND_PROCESSOR_0_y_loc_sprite_UNCONNECTED(8 downto 0)
    );
SYNTHESIZER_TOP_0: component BOARD_DESIGN_SYNTHESIZER_TOP_0_0
     port map (
      clk => clk_1,
      reset => COMMAND_PROCESSOR_0_reset_APU,
      soundEffect(7 downto 0) => B"00000000",
      sound_out => SYNTHESIZER_TOP_0_sound_out,
      startAddress(10 downto 0) => COMMAND_PROCESSOR_0_start_addres_APU(10 downto 0),
      start_music => COMMAND_PROCESSOR_0_start_music
    );
end STRUCTURE;
