--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sat Mar  9 15:56:26 2019
--Host        : DESKTOP-24KCCOQ running 64-bit major release  (build 9200)
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
    data_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sound_out_0 : out STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of shootingBoard : entity is "shootingBoard.hwdef";
  attribute core_generation_info : string;
  attribute core_generation_info of shootingBoard : entity is "shootingBoard,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=shootingBoard,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
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
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_music : out STD_LOGIC;
    reset_APU : out STD_LOGIC;
    start_addres_APU : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component shootingBoard_COMMAND_PROCESSOR_0_0;
  component shootingBoard_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component shootingBoard_clk_wiz_0_0;
  signal COMMAND_PROCESSOR_0_reset_APU : STD_LOGIC;
  signal COMMAND_PROCESSOR_0_start_addres_APU : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal COMMAND_PROCESSOR_0_start_music : STD_LOGIC;
  signal SYNTHESIZER_TOP_0_sound_out : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal data_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sys_clock_1 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN shootingBoard_sys_clock, FREQ_HZ 100000000, PHASE 0.000";
begin
  data_0_1(7 downto 0) <= data_0(7 downto 0);
  sound_out_0 <= SYNTHESIZER_TOP_0_sound_out;
  sys_clock_1 <= sys_clock;
COMMAND_PROCESSOR_0: component shootingBoard_COMMAND_PROCESSOR_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      data(7 downto 0) => data_0_1(7 downto 0),
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
clk_wiz_0: component shootingBoard_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
end STRUCTURE;
