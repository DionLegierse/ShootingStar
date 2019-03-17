----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/16/2019 02:18:46 PM
-- Design Name:
-- Module Name: sprite_rom_wrapper - Behavioral
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

entity sprite_rom_wrapper is
  Port (
  clk : in STD_LOGIC;
  addra : in std_logic_vector(15 downto 0);
  douta : out std_logic_vector(7 downto 0)
  );
end sprite_rom_wrapper;

architecture Behavioral of sprite_rom_wrapper is
    component sprite_rom is
        port(
        clka : in STD_LOGIC;
        addra : in std_logic_vector(15 downto 0);
        douta : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    sprite_rom_1 : sprite_rom port map(
        clka => clk,
        addra => addra,
        douta => douta
    );
end Behavioral;
