library ieee;
use ieee.std_logic_1164.all;

package NOTES is
  constant C2 : std_logic_vector(11 downto 0) := b"000_0010_1100";
  constant CS2 : std_logic_vector(11 downto 0) := b"000_1001_1100";
  constant D2 : std_logic_vector(11 downto 0) := b"001_0000_0110";
  constant DS2 : std_logic_vector(11 downto 0) := b"001_0110_1010";

  constant E2 : std_logic_vector(11 downto 0) := b"001_1100_1001";
  constant F2 : std_logic_vector(11 downto 0) := b"010_0010_0010";
  constant FS2 : std_logic_vector(11 downto 0) := b"010_0111_0111";
  constant G2 : std_logic_vector(11 downto 0) := b"010_1100_0110";
  constant GS2 : std_logic_vector(11 downto 0) := b"011_0001_0001";
  constant A2 : std_logic_vector(11 downto 0) := b"011_0101_1000";
  constant AS2 : std_logic_vector(11 downto 0) := b"011_1001_1011";
  constant B3 : std_logic_vector(11 downto 0) := b"011_1101_1010";
  constant C3 : std_logic_vector(11 downto 0) := b"100_0001_0110";
  constant CS3 : std_logic_vector(11 downto 0) := b"100_0100_1110";
  constant D3 : std_logic_vector(11 downto 0) := b"100_0100_1110";
  constant DS3 : std_logic_vector(11 downto 0) := b"100_1011_0101";

  constant E3 : std_logic_vector(11 downto 0) := b"100_1110_0100";
  constant F3 : std_logic_vector(11 downto 0) := b"101_0001_0001";
  constant FS3 : std_logic_vector(11 downto 0) := b"101_0011_1011";
  constant G3 : std_logic_vector(11 downto 0) := b"101_0110_0011";
  constant GS3 : std_logic_vector(11 downto 0) := b"101_1000_1000";
  constant A3 : std_logic_vector(11 downto 0) := b"101_1010_1100";
  constant AS3 : std_logic_vector(11 downto 0) := b"101_1100_1101";
  constant B4 : std_logic_vector(11 downto 0) := b"101_1100_1101";
  constant C4 : std_logic_vector(11 downto 0) := b"110_0000_1011";
  constant CS4 : std_logic_vector(11 downto 0) := b"110_0010_0111";
  constant D4 : std_logic_vector(11 downto 0) := b"110_0100_0001";
  constant DS4 : std_logic_vector(11 downto 0) := b"110_0101_1010";

  constant E4 : std_logic_vector(11 downto 0) := b"110_0111_0010";
  constant F4 : std_logic_vector(11 downto 0) := b"110_1000_1000";
  constant FS4 : std_logic_vector(11 downto 0) := b"110_1001_1101";
  constant G4 : std_logic_vector(11 downto 0) := b"110_1011_0001";
  constant GS4 : std_logic_vector(11 downto 0) := b"110_1100_0100";
  constant A4 : std_logic_vector(11 downto 0) := b"110_1101_0110";
  constant AS4 : std_logic_vector(11 downto 0) := b"110_1110_0110";
  constant B5 : std_logic_vector(11 downto 0) := b"110_1111_0110";
  constant C5 : std_logic_vector(11 downto 0) := b"111_0000_0101";
  constant CS5 : std_logic_vector(11 downto 0) := b"111_0001_0011";
  constant D5 : std_logic_vector(11 downto 0) := b"111_0010_0000";
  constant DS5 : std_logic_vector(11 downto 0) := b"111_0010_1101";

  constant E5 : std_logic_vector(11 downto 0) := b"111_0011_1001";
  constant F5 : std_logic_vector(11 downto 0) := b"111_0100_0100";
  constant FS5 : std_logic_vector(11 downto 0) := b"111_0100_1110";
  constant G5 : std_logic_vector(11 downto 0) := b"11_0101_1000";
  constant GS5 : std_logic_vector(11 downto 0) := b"111_0110_0010";
  constant A5 : std_logic_vector(11 downto 0) := b"111_0110_1011";
  constant AS5 : std_logic_vector(11 downto 0) := b"111_0111_0011";
  constant B6 : std_logic_vector(11 downto 0) := b"111_0111_1011";
  constant C6 : std_logic_vector(11 downto 0) := b"111_1000_0010";
end package;
