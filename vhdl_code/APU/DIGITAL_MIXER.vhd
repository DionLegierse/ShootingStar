library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DIGITAL_MIXER is
  port (
    clk : in std_logic;
    square1 : in std_logic_vector(7 downto 0);
    square2 : in std_logic_vector(7 downto 0);
    triangle : in std_logic_vector(7 downto 0);
    noise : in std_logic_vector(7 downto 0);
    mixed : out std_logic_vector(11 downto 0)
  );
end entity;

architecture Behavior of DIGITAL_MIXER is

begin

MIXER : process(clk)
begin
  if rising_edge(clk) then
    mixed <= std_logic_vector(("0000" & unsigned(square1)) + ("0000" & unsigned(square2)) + ("0000" & unsigned(triangle)) + ("0000" & unsigned(noise)));
  end if;
end process;

end architecture;
