--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Sat Mar 16 15:19:17 2019
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
    Dout_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Err_0 : out STD_LOGIC;
    Ren_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    mc_clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_register_select : in STD_LOGIC;
    sound_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of BOARD_DESIGN : entity is "BOARD_DESIGN,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BOARD_DESIGN,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of BOARD_DESIGN : entity is "BOARD_DESIGN.hwdef";
end BOARD_DESIGN;

architecture STRUCTURE of BOARD_DESIGN is
  component BOARD_DESIGN_SYNTHESIZER_TOP_0_1 is
  port (
    clk : in STD_LOGIC;
    start_music : in STD_LOGIC;
    reset : in STD_LOGIC;
    soundEffect : in STD_LOGIC_VECTOR ( 7 downto 0 );
    startAddress : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sound_out : out STD_LOGIC
  );
  end component BOARD_DESIGN_SYNTHESIZER_TOP_0_1;
  component BOARD_DESIGN_ScanlineOAM_0_0 is
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
  end component BOARD_DESIGN_ScanlineOAM_0_0;
  component BOARD_DESIGN_circular_buffer_0_0 is
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
  end component BOARD_DESIGN_circular_buffer_0_0;
  component BOARD_DESIGN_SOAM_0_1 is
  port (
    clk : in STD_LOGIC;
    SOAMin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SOAMpush : in STD_LOGIC;
    SOAMclear : in STD_LOGIC;
    SOAMout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SOAMren : in STD_LOGIC;
    SOAMadd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SOAMfull : out STD_LOGIC
  );
  end component BOARD_DESIGN_SOAM_0_1;
  component BOARD_DESIGN_Renderer_0_0 is
  port (
    clk : in STD_LOGIC;
    SOAMData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SpriteROMDatout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bufferFull : in STD_LOGIC;
    bufferClear : in STD_LOGIC;
    SOAMAddress : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SOAMReadEnable : out STD_LOGIC;
    NextScanline : out STD_LOGIC_VECTOR ( 8 downto 0 );
    BufferData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SpriteROMAddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    isEndLine : out STD_LOGIC;
    BufferEnableWrite : out STD_LOGIC
  );
  end component BOARD_DESIGN_Renderer_0_0;
  component BOARD_DESIGN_dataToSprite_0_0 is
  port (
    x_loc_sprite : in STD_LOGIC_VECTOR ( 8 downto 0 );
    y_loc_sprite : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sprite_memory_loc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_atttribute : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component BOARD_DESIGN_dataToSprite_0_0;
  component BOARD_DESIGN_sprite_rom_wrapper_0_0 is
  port (
    clk : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component BOARD_DESIGN_sprite_rom_wrapper_0_0;
  component BOARD_DESIGN_COMMAND_PROCESSOR_0_1 is
  port (
    clk : in STD_LOGIC;
    mc_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mc_clk : in STD_LOGIC;
    mc_register_select : in STD_LOGIC;
    x_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    y_loc_sprite : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sprite_memory_loc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_attribute : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sprite_register_loc : out STD_LOGIC_VECTOR ( 6 downto 0 );
    OAMEnable : out STD_LOGIC;
    start_music : out STD_LOGIC;
    reset_APU : out STD_LOGIC;
    start_addres_APU : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component BOARD_DESIGN_COMMAND_PROCESSOR_0_1;
  component BOARD_DESIGN_OAM_0_1 is
  port (
    clk : in STD_LOGIC;
    OAMreset : in STD_LOGIC;
    OAMin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    OAMwen : in STD_LOGIC;
    OAMwadd : in STD_LOGIC_VECTOR ( 6 downto 0 );
    OAMout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OAMren : in STD_LOGIC;
    OAMradd : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component BOARD_DESIGN_OAM_0_1;
  signal COMMAND_PROCESSOR_0_OAMEnable : STD_LOGIC;
  signal COMMAND_PROCESSOR_0_reset_APU : STD_LOGIC;
  signal COMMAND_PROCESSOR_0_sprite_attribute : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal COMMAND_PROCESSOR_0_sprite_memory_loc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal COMMAND_PROCESSOR_0_sprite_register_loc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal COMMAND_PROCESSOR_0_start_addres_APU : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal COMMAND_PROCESSOR_0_start_music : STD_LOGIC;
  signal COMMAND_PROCESSOR_0_x_loc_sprite : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal COMMAND_PROCESSOR_0_y_loc_sprite : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal OAM_0_OAMout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Ren_0_1 : STD_LOGIC;
  signal Renderer_0_BufferData : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Renderer_0_BufferEnableWrite : STD_LOGIC;
  signal Renderer_0_NextScanline : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal Renderer_0_SOAMAddress : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Renderer_0_SOAMReadEnable : STD_LOGIC;
  signal Renderer_0_SpriteROMAddr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Renderer_0_isEndLine : STD_LOGIC;
  signal SOAM_0_SOAMout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SYNTHESIZER_TOP_0_sound_out : STD_LOGIC;
  signal ScanlineOAM_0_OAMadd : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ScanlineOAM_0_SOAMclear : STD_LOGIC;
  signal ScanlineOAM_0_SOAMout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ScanlineOAM_0_SOAMpush : STD_LOGIC;
  signal circular_buffer_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal circular_buffer_0_Empty : STD_LOGIC;
  signal circular_buffer_0_Err : STD_LOGIC;
  signal circular_buffer_0_Full : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal dataToSprite_0_sprite_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mc_clk_1 : STD_LOGIC;
  signal mc_data_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mc_register_select_1 : STD_LOGIC;
  signal sprite_rom_wrapper_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_SOAM_0_SOAMfull_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN BOARD_DESIGN_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of mc_clk : signal is "xilinx.com:signal:clock:1.0 CLK.MC_CLK CLK";
  attribute X_INTERFACE_PARAMETER of mc_clk : signal is "XIL_INTERFACENAME CLK.MC_CLK, CLK_DOMAIN BOARD_DESIGN_mc_clk, FREQ_HZ 100000000, PHASE 0.000";
begin
  Dout_0(7 downto 0) <= circular_buffer_0_Dout(7 downto 0);
  Err_0 <= circular_buffer_0_Err;
  Ren_0_1 <= Ren_0;
  clk_1 <= clk;
  mc_clk_1 <= mc_clk;
  mc_data_1(7 downto 0) <= mc_data(7 downto 0);
  mc_register_select_1 <= mc_register_select;
  sound_out <= SYNTHESIZER_TOP_0_sound_out;
COMMAND_PROCESSOR_0: component BOARD_DESIGN_COMMAND_PROCESSOR_0_1
     port map (
      OAMEnable => COMMAND_PROCESSOR_0_OAMEnable,
      clk => clk_1,
      mc_clk => mc_clk_1,
      mc_data(7 downto 0) => mc_data_1(7 downto 0),
      mc_register_select => mc_register_select_1,
      reset_APU => COMMAND_PROCESSOR_0_reset_APU,
      sprite_attribute(7 downto 0) => COMMAND_PROCESSOR_0_sprite_attribute(7 downto 0),
      sprite_memory_loc(7 downto 0) => COMMAND_PROCESSOR_0_sprite_memory_loc(7 downto 0),
      sprite_register_loc(6 downto 0) => COMMAND_PROCESSOR_0_sprite_register_loc(6 downto 0),
      start_addres_APU(10 downto 0) => COMMAND_PROCESSOR_0_start_addres_APU(10 downto 0),
      start_music => COMMAND_PROCESSOR_0_start_music,
      x_loc_sprite(8 downto 0) => COMMAND_PROCESSOR_0_x_loc_sprite(8 downto 0),
      y_loc_sprite(8 downto 0) => COMMAND_PROCESSOR_0_y_loc_sprite(8 downto 0)
    );
OAM_0: component BOARD_DESIGN_OAM_0_1
     port map (
      OAMin(31 downto 0) => dataToSprite_0_sprite_data(31 downto 0),
      OAMout(31 downto 0) => OAM_0_OAMout(31 downto 0),
      OAMradd(6 downto 0) => ScanlineOAM_0_OAMadd(6 downto 0),
      OAMren => '0',
      OAMreset => COMMAND_PROCESSOR_0_reset_APU,
      OAMwadd(6 downto 0) => COMMAND_PROCESSOR_0_sprite_register_loc(6 downto 0),
      OAMwen => COMMAND_PROCESSOR_0_OAMEnable,
      clk => clk_1
    );
Renderer_0: component BOARD_DESIGN_Renderer_0_0
     port map (
      BufferData(7 downto 0) => Renderer_0_BufferData(7 downto 0),
      BufferEnableWrite => Renderer_0_BufferEnableWrite,
      NextScanline(8 downto 0) => Renderer_0_NextScanline(8 downto 0),
      SOAMAddress(4 downto 0) => Renderer_0_SOAMAddress(4 downto 0),
      SOAMData(31 downto 0) => SOAM_0_SOAMout(31 downto 0),
      SOAMReadEnable => Renderer_0_SOAMReadEnable,
      SpriteROMAddr(15 downto 0) => Renderer_0_SpriteROMAddr(15 downto 0),
      SpriteROMDatout(7 downto 0) => sprite_rom_wrapper_0_douta(7 downto 0),
      bufferClear => circular_buffer_0_Empty,
      bufferFull => circular_buffer_0_Full,
      clk => clk_1,
      isEndLine => Renderer_0_isEndLine
    );
SOAM_0: component BOARD_DESIGN_SOAM_0_1
     port map (
      SOAMadd(4 downto 0) => Renderer_0_SOAMAddress(4 downto 0),
      SOAMclear => ScanlineOAM_0_SOAMclear,
      SOAMfull => NLW_SOAM_0_SOAMfull_UNCONNECTED,
      SOAMin(31 downto 0) => ScanlineOAM_0_SOAMout(31 downto 0),
      SOAMout(31 downto 0) => SOAM_0_SOAMout(31 downto 0),
      SOAMpush => ScanlineOAM_0_SOAMpush,
      SOAMren => Renderer_0_SOAMReadEnable,
      clk => clk_1
    );
SYNTHESIZER_TOP_0: component BOARD_DESIGN_SYNTHESIZER_TOP_0_1
     port map (
      clk => clk_1,
      reset => COMMAND_PROCESSOR_0_reset_APU,
      soundEffect(7 downto 0) => B"00000000",
      sound_out => SYNTHESIZER_TOP_0_sound_out,
      startAddress(10 downto 0) => COMMAND_PROCESSOR_0_start_addres_APU(10 downto 0),
      start_music => COMMAND_PROCESSOR_0_start_music
    );
ScanlineOAM_0: component BOARD_DESIGN_ScanlineOAM_0_0
     port map (
      ENDscanline => Renderer_0_isEndLine,
      OAMadd(6 downto 0) => ScanlineOAM_0_OAMadd(6 downto 0),
      OAMin(31 downto 0) => OAM_0_OAMout(31 downto 0),
      SOAMclear => ScanlineOAM_0_SOAMclear,
      SOAMout(31 downto 0) => ScanlineOAM_0_SOAMout(31 downto 0),
      SOAMpush => ScanlineOAM_0_SOAMpush,
      clk => clk_1,
      scanline(8 downto 0) => Renderer_0_NextScanline(8 downto 0)
    );
circular_buffer_0: component BOARD_DESIGN_circular_buffer_0_0
     port map (
      Din(7 downto 0) => Renderer_0_BufferData(7 downto 0),
      Dout(7 downto 0) => circular_buffer_0_Dout(7 downto 0),
      Empty => circular_buffer_0_Empty,
      Err => circular_buffer_0_Err,
      Full => circular_buffer_0_Full,
      Ren => Ren_0_1,
      Wen => Renderer_0_BufferEnableWrite,
      clk => clk_1,
      reset => COMMAND_PROCESSOR_0_reset_APU
    );
dataToSprite_0: component BOARD_DESIGN_dataToSprite_0_0
     port map (
      sprite_atttribute(7 downto 0) => COMMAND_PROCESSOR_0_sprite_attribute(7 downto 0),
      sprite_data(31 downto 0) => dataToSprite_0_sprite_data(31 downto 0),
      sprite_memory_loc(7 downto 0) => COMMAND_PROCESSOR_0_sprite_memory_loc(7 downto 0),
      x_loc_sprite(8 downto 0) => COMMAND_PROCESSOR_0_x_loc_sprite(8 downto 0),
      y_loc_sprite(8 downto 0) => COMMAND_PROCESSOR_0_y_loc_sprite(8 downto 0)
    );
sprite_rom_wrapper_0: component BOARD_DESIGN_sprite_rom_wrapper_0_0
     port map (
      addra(15 downto 0) => Renderer_0_SpriteROMAddr(15 downto 0),
      clk => clk_1,
      douta(7 downto 0) => sprite_rom_wrapper_0_douta(7 downto 0)
    );
end STRUCTURE;
