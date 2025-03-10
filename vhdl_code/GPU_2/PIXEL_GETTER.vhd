----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/17/2019 02:15:30 AM
-- Design Name:
-- Module Name: PIXEL_GETTER - Behavioral
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

entity PIXEL_GETTER is
    Port (
        clk : in std_logic;
        sprite : in std_logic_vector(31 downto 0);
        sprite_hpos : in std_logic_vector(9 downto 0);
        sprite_vpos : in std_logic_vector(9 downto 0);
        ROM_address : out std_logic_vector(14 downto 0)
    );
end PIXEL_GETTER;

architecture Behavioral of PIXEL_GETTER is
    constant no_sprite : std_logic_vector(31 downto 0) := (others => '1');
    constant addressOffMultiplier : integer := 64;
    constant yOffMultiplier : integer := 8;

    signal address_with_x : unsigned(7 downto 0);

begin
    Addres_Calculator : process(clk)
        variable xOffset : unsigned(9 downto 0);
        variable yOffset : unsigned(9 downto 0);
        variable spriteNumber : unsigned(7 downto 0);
    begin
        if rising_edge(clk) then
            xOffset := unsigned(sprite_hpos) - unsigned(sprite(22 downto 14));
            yOffset := unsigned(sprite_vpos) - unsigned(sprite(31 downto 23));
            spriteNumber := unsigned(sprite(7 downto 0));

            if sprite /= no_sprite then
                ROM_address <=  std_logic_vector(
                                    to_unsigned(
                                        (to_integer(spriteNumber) * addressOffMultiplier) +
                                        to_integer(xOffset(3 downto 0)) +
                                        (to_integer(yOffset(3 downto 0)) * yOffMultiplier),
                                        ROM_address'length
                                    )
                                );
            else
                ROM_address <= (others => '1');
            end if;
        end if;
    end process;

end Behavioral;












--
