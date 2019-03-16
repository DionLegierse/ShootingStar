----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2019 02:29:17 PM
-- Design Name:
-- Module Name: dataToSprite - Behavioral
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

entity dataToSprite is
    Port ( x_loc_sprite : in STD_LOGIC_VECTOR (8 downto 0);
           y_loc_sprite : in STD_LOGIC_VECTOR (8 downto 0);
           sprite_memory_loc : in STD_LOGIC_VECTOR (7 downto 0);
           sprite_atttribute : in STD_LOGIC_VECTOR (7 downto 0);
           sprite_data : out STD_LOGIC_VECTOR (31 downto 0));
end dataToSprite;

architecture Behavioral of dataToSprite is

begin

sprite_data <= y_loc_sprite & x_loc_sprite & sprite_atttribute(5 downto 0) & sprite_memory_loc;

end Behavioral;
