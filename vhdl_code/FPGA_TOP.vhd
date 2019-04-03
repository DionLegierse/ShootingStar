----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2019 11:03:16 PM
-- Design Name:
-- Module Name: FPGA_TOP - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FPGA_TOP is
    Port (
        clk : in std_logic;
        mc_data : in std_logic_vector(7 downto 0);
        mc_clk : in std_logic;
        mc_register_select : in std_logic;

        redOut, greenOut, blueOut : out  std_logic_vector(3 downto 0);
        hsync, vsync : out  STD_LOGIC;

        sound_out : out std_logic
    );
end FPGA_TOP;

architecture Behavioral of FPGA_TOP is
    signal x_loc_sprite : std_logic_vector(8 downto 0);
    signal y_loc_sprite : std_logic_vector(8 downto 0);
    signal sprite_memory_loc : std_logic_vector(7 downto 0);
    signal sprite_attribute : std_logic_vector(5 downto 0);
    signal sprite_register_loc : std_logic_vector(7 downto 0);
    signal update_x : std_logic;
    signal update_y : std_logic;
    signal update_xy : std_logic;
    signal update_all : std_logic;
    signal reset_bank : std_logic;

    signal start_music : std_logic;
    signal reset_APU : std_logic;
    signal start_addres_APU : std_logic_vector(10 downto 0);

    component gpu_clk is
        port(
            clk100 : in std_logic;
            clk25 : out std_logic;
            clkOut : out std_logic
        );
    end component;

    signal clk25 : std_logic;
    signal clkOut : std_logic;

begin

    gpu_clk_1 : gpu_clk port map(
        clk100 => clk,
        clk25 => clk25,
        clkOut => clkOut
    );


    COMMAND_PROCESSOR_1 : entity work.COMMAND_PROCESSOR(Behavioral)
    port map(
        clk => clkOut,
        mc_data => mc_data,
        mc_clk => mc_clk,
        mc_register_select => mc_register_select,

        x_loc_sprite => x_loc_sprite,
        y_loc_sprite => y_loc_sprite,
        sprite_memory_loc => sprite_memory_loc,
        sprite_attribute => sprite_attribute,
        sprite_register_loc => sprite_register_loc,
        update_x => update_x,
        update_y => update_y,
        update_xy => update_xy,
        update_all => update_all,
        reset_bank => reset_bank,

        start_music => start_music,
        reset_APU => reset_APU,
        start_addres_APU => start_addres_APU
    );

    GPU_1 : entity work.GPU(Behavioral)
    generic map(
        sprite_address_bits => 8
    )
    port map(
        clk => clk25,

        register_address => sprite_register_loc,

        sprite_x => x_loc_sprite,
        sprite_y => y_loc_sprite,
        sprite_attribute => sprite_attribute,
        sprite_number => sprite_memory_loc,

        update_x => update_x,
        update_y => update_y,
        update_xy => update_xy,
        update_all => update_all,
        reset_bank => reset_bank,

        redOut => redOut,
        greenOut => greenOut,
        blueOut => blueOut,
        hsync => hsync ,
        vsync => vsync
    );

    SYNTHESIZER_TOP_1 : entity work.SYNTHESIZER_TOP(Behavioral)
    port map(
        clk => clkOut,
        start_music => start_music,
        reset => reset_APU,
        soundEffect => b"0000_0000",
        startAddress => start_addres_APU,

        sound_out => sound_out
    );
end Behavioral;






















--
