--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Mon Mar 11 15:33:09 2019
--Host        : LAPTOP-MCELIKGK running 64-bit major release  (build 9200)
--Command     : generate_target shootingBoard.bd
--Design      : shootingBoard
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shootingBoard is
  port (
    mc_clk_0 : in STD_LOGIC;
    mc_data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sound_out_0 : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of shootingBoard : entity is "shootingBoard,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=shootingBoard,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of shootingBoard : entity is "shootingBoard.hwdef";
end shootingBoard;

architecture STRUCTURE of shootingBoard is
  component shootingBoard_SYNTHESIZER_TOP_0_0 is
  port (
    clk : in STD_LOGIC;
    start_music : in STD_LOGIC;
    reset : in STD_LOGIC;
    soundEffect : in STD_LOGIC_VECTOR ( 7 downto 0 );
    startAddress : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sound_out : out STD_LOGIC
  );
  end component shootingBoard_SYNTHESIZER_TOP_0_0;
  component shootingBoard_COMMAND_PROCESSOR_0_0 is
  port (
    clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_clk : in STD_LOGIC;
    start_music : out STD_LOGIC;
    reset_APU : out STD_LOGIC;
    start_addres_APU : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component shootingBoard_COMMAND_PROCESSOR_0_0;
  signal COMMAND_PROCESSOR_0_reset_APU : STD_LOGIC;
  signal COMMAND_PROCESSOR_0_start_addres_APU : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal COMMAND_PROCESSOR_0_start_music : STD_LOGIC;
  signal SYNTHESIZER_TOP_0_sound_out : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal mc_clk_0_1 : STD_LOGIC;
  signal mc_data_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of mc_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.MC_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of mc_clk_0 : signal is "XIL_INTERFACENAME CLK.MC_CLK_0, CLK_DOMAIN shootingBoard_mc_clk_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN shootingBoard_sys_clock, FREQ_HZ 100000000, PHASE 0.000";
begin
  clk_wiz_0_clk_out1 <= sys_clock;
  mc_clk_0_1 <= mc_clk_0;
  mc_data_0_1(7 downto 0) <= mc_data_0(7 downto 0);
  sound_out_0 <= SYNTHESIZER_TOP_0_sound_out;
COMMAND_PROCESSOR_0: component shootingBoard_COMMAND_PROCESSOR_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      mc_clk => mc_clk_0_1,
      mc_data(7 downto 0) => mc_data_0_1(7 downto 0),
      reset_APU => COMMAND_PROCESSOR_0_reset_APU,
      start_addres_APU(10 downto 0) => COMMAND_PROCESSOR_0_start_addres_APU(10 downto 0),
      start_music => COMMAND_PROCESSOR_0_start_music
    );
SYNTHESIZER_TOP_0: component shootingBoard_SYNTHESIZER_TOP_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      reset => COMMAND_PROCESSOR_0_reset_APU,
      soundEffect(7 downto 0) => B"00000000",
      sound_out => SYNTHESIZER_TOP_0_sound_out,
      startAddress(10 downto 0) => COMMAND_PROCESSOR_0_start_addres_APU(10 downto 0),
      start_music => COMMAND_PROCESSOR_0_start_music
    );
end STRUCTURE;
