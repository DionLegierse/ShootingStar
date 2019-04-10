----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/17/2019 02:57:16 AM
-- Design Name:
-- Module Name: GPU - Behavioral
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

entity GPU is
    generic(
        --! The generic that controls the amount bits that should be used for the sprite address (final in FPGA_TOP)
        sprite_address_bits : integer := 7
    );
    Port (
        --! 25Mhz clock coming from the MMCM
        clk : in std_logic;

        --! The address for the sprite bank to select a sprite
        register_address : in std_logic_vector((sprite_address_bits - 1) downto 0);

        --! Signal for the x coördinate to set
        sprite_x : in std_logic_vector(8 downto 0);
        --! Signal for the y coördinate to set
        sprite_y : in std_logic_vector(8 downto 0);
        --! Signal for the sprite attribute to set
        sprite_attribute : in std_logic_vector(5 downto 0);
        --! Signal for the sprite to load
        sprite_number : in std_logic_vector(7 downto 0);

        --! Signal to update the x of the sprite selected with register_address
        update_x : in std_logic;
        --! Signal to update the y of the sprite selected with register_address
        update_y : in std_logic;
        --! Signal to update the x and y of the sprite selected with register_address
        update_xy : in std_logic;
        --! Signal to update the all data of the sprite selected with register_address
        update_all : in std_logic;
        --! Signal to reset all sprites to their initial state
        reset_bank : in std_logic;
        --! Signal to reset the selected sprite on register_address
        reset_sprite : in std_logic;

        --! The outputs for the VGA color signals
        redOut, greenOut, blueOut : out  std_logic_vector(3 downto 0);
        --! The outputs for the VGA synching signals
        hsync, vsync : out  STD_LOGIC
    );
end GPU;

--! @brief The behavior of the GPU
--! @details The top level of all video components containing the sprite bank,
--! the pixel getter and the VGA driver.
architecture Behavioral of GPU is
    component sprite_rom is
        port(
            addra : in std_logic_vector(14 downto 0);
            clka : in std_logic;
            douta : out std_logic_vector(7 downto 0)
        );
    end component;

    signal vpos : std_logic_vector(9 downto 0);
    signal hpos : std_logic_vector(9 downto 0);

    signal sprite_data : std_logic_vector(31 downto 0);
    signal sprite_vpos : std_logic_vector(9 downto 0);
    signal sprite_hpos : std_logic_vector(9 downto 0);

    signal ROM_address : std_logic_vector(14 downto 0);

    signal pixel_data : std_logic_vector(7 downto 0);

begin

    SPRITE_BANK_1 : entity work.SPRITE_BANK(Behavioral)
    generic map(
        sprite_address_bits => sprite_address_bits
    )
    port map(
        clk => clk,
        register_address => register_address,
        sprite_x => sprite_x,
        sprite_y => sprite_y,
        sprite_attribute => sprite_attribute,
        sprite_number => sprite_number,

        update_x => update_x,
        update_y => update_y,
        update_xy => update_xy,
        update_all => update_all,
        reset_bank => reset_bank,
        reset_sprite => reset_sprite,

        vpos => vpos,
        hpos => hpos,

        sprite_data => sprite_data,
        sprite_vpos => sprite_vpos,
        sprite_hpos => sprite_hpos
    );

    PIXEL_GETTER_1 : entity work.PIXEL_GETTER(Behavioral)
    port map(
        clk => clk,
        sprite => sprite_data,
        sprite_hpos => sprite_hpos,
        sprite_vpos => sprite_vpos,
        ROM_address => ROM_address
    );

    sprite_rom_1 : sprite_rom port map(
        addra => ROM_address,
        clka => clk,
        douta => pixel_data
    );

    VGA_1 : entity work.VGA(Behavioral_2)
    port map(
        clk25 => clk,
        pixel => pixel_data,
        redOut => redOut,
        greenOut => greenOut,
        blueOut => blueOut,
        nextX => hpos,
        nextY => vpos,
        hsync => hsync,
        vsync => vsync
    );

end Behavioral;
