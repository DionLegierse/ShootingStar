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
        sprite_address_bits : integer := 7
    );
    Port (
        clk : in std_logic;

        register_address : in std_logic_vector((sprite_address_bits - 1) downto 0);

        sprite_x : in std_logic_vector(8 downto 0);
        sprite_y : in std_logic_vector(8 downto 0);
        sprite_attribute : in std_logic_vector(5 downto 0);
        sprite_number : in std_logic_vector(7 downto 0);

        update_x : in std_logic;
        update_y : in std_logic;
        update_xy : in std_logic;
        update_all : in std_logic;

        redOut, greenOut, blueOut : out  std_logic_vector(3 downto 0);
        hsync, vsync : out  STD_LOGIC
    );
end GPU;

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

    VGA_1 : entity work.VGA(Behavioral)
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
