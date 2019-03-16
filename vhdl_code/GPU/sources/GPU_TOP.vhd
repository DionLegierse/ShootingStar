----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2019 06:43:45 PM
-- Design Name:
-- Module Name: GPU_TOP - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GPU_TOP is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        sprite_data : in std_logic_vector(31 downto 0);
        sprite_register : in std_logic_vector(6 downto 0);
        write_sprite : in std_logic;
        next_pixel : in std_logic;
        pixel_data : out std_logic_vector(7 downto 0);
        buffer_clear_out : out std_logic
    );
end GPU_TOP;

architecture Behavioral of GPU_TOP is

    signal OAM_data_out : std_logic_vector(31 downto 0);
    signal OAM_read_address : std_logic_vector(6 downto 0);

    signal next_scanline : std_logic_vector(8 downto 0);

    signal isScanlineEnd : std_logic;
    signal SOAM_data_in : std_logic_vector(31 downto 0);
    signal SOAM_push : std_logic;
    signal SOAM_clear : std_logic;

    signal SOAM_data_out : std_logic_vector(31 downto 0);
    signal SOAM_read_enable : std_logic;
    signal SOAM_read_address : std_logic_vector(4 downto 0);
    signal SOAM_full : std_logic;

    signal sprite_rom_data : std_logic_vector(7 downto 0);
    signal buffer_full : std_logic;
    signal buffer_clear : std_logic;
    signal buffer_data : std_logic_vector(7 downto 0);
    signal sprite_rom_address : std_logic_vector(15 downto 0);
    signal buffer_enable_write : std_logic;

    signal buffer_error : std_logic;

begin
    buffer_clear_out <= buffer_clear;

    OAM_1 : entity work.OAM(Behavioral)
    port map(
        clk => clk,
        OAMReset => reset,
        OAMin => sprite_data,
        OAMwen => write_sprite,
        OAMwadd => sprite_register,
        OAMout => OAM_data_out,
        OAMren => '1',
        OAMradd => OAM_read_address
    );

    ScanlineOAM_1 : entity work.ScanlineOAM(Behavioral)
    port map(
        clk => clk,

        scanline => next_scanline,
        ENDscanline => isScanlineEnd,

        OAMin => OAM_data_out,
        OAMadd => OAM_read_address,

        SOAMout => SOAM_data_in,
        SOAMpush => SOAM_push,
        SOAMclear => SOAM_clear
    );

    SOAM_1 : entity work.SOAM(Behavioral)
    port map(
        clk => clk,

        SOAMin => SOAM_data_in,
        SOAMpush => SOAM_push,
        SOAMclear => SOAM_clear,

        SOAMout => SOAM_data_out,
        SOAMren => SOAM_read_enable,
        SOAMadd => SOAM_read_address,

        SOAMfull => SOAM_full
    );

    Renderer_1 : entity work.Renderer(Behavioral)
    port map(
        clk => clk,
        SOAMData => SOAM_data_out,
        SpriteROMDatout => sprite_rom_data,
        bufferFull => buffer_full,
        bufferClear => buffer_clear,

        SOAMAddress => SOAM_read_address,
        SOAMReadEnable => SOAM_read_enable,
        NextScanline => next_scanline,
        BufferData => buffer_data,
        SpriteROMAddr => sprite_rom_address,
        isEndLine => isScanlineEnd,
        BufferEnableWrite => buffer_enable_write
    );

    sprite_rom_wrapper : entity work.sprite_rom_wrapper(Behavioral)
    port map(
        clk => clk,
        addra => sprite_rom_address,
        douta => sprite_rom_data
    );

    circular_buffer : entity work.circular_buffer(Behavioral)
    port map(
        clk => clk,

        reset => reset,
        Ren => next_pixel,
        Wen => buffer_enable_write,

        Dout => pixel_data,
        Din => buffer_data,

        Empty => buffer_clear,
        Err => buffer_error,
        Full => buffer_full
    );
end Behavioral;















--
