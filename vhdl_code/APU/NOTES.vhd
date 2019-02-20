library ieee;
use ieee.std_logic_1164.all;

package NOTES is
  constant E1 : std_logic_vector(11 downto 0) := b"1010_1101_1110";
  constant F1 : std_logic_vector(11 downto 0) := b"1010_0011_1110";
  constant FS1 : std_logic_vector(11 downto 0) := b"1001_1010_1000";
  constant G1 : std_logic_vector(11 downto 0) := b"1001_0001_1010";
  constant GS1 : std_logic_vector(11 downto 0) := b"1001_1001_0101";
  constant A1 : std_logic_vector(11 downto 0) := b"1000_0001_0111";
  constant AS1 : std_logic_vector(11 downto 0) := b"0111_1010_0001";
  constant B2 : std_logic_vector(11 downto 0) := b"0111_0011_0001";
  constant C2 : std_logic_vector(11 downto 0) := b"0110_1100_1000";
  constant CS2 : std_logic_vector(11 downto 0) := b"0110_0110_0101";
  constant D2 : std_logic_vector(11 downto 0) := b"0110_0000_1000";
  constant DS2 : std_logic_vector(11 downto 0) := b"0101_1011_0000";

  constant E2 : std_logic_vector(11 downto 0) := b"0101_0101_1110";
  constant F2 : std_logic_vector(11 downto 0) := b"0101_0001_0000";
  constant FS2 : std_logic_vector(11 downto 0) := b"0100_1100_0110";
  constant G2 : std_logic_vector(11 downto 0) := b"0100_1000_0001";
  constant GS2 : std_logic_vector(11 downto 0) := b"0100_0011_1111";
  constant A2 : std_logic_vector(11 downto 0) := b"0100_0000_0010";
  constant AS2 : std_logic_vector(11 downto 0) := b"0011_1101_1010";
  constant B3 : std_logic_vector(11 downto 0) := b"0011_1001_0001";
  constant C3 : std_logic_vector(11 downto 0) := b"0011_0101_1101";
  constant CS3 : std_logic_vector(11 downto 0) := b"0011_0010_1100";
  constant D3 : std_logic_vector(11 downto 0) := b"0010_1111_1111";
  constant DS3 : std_logic_vector(11 downto 0) := b"0010_1101_0011";

  constant E3 : std_logic_vector(11 downto 0) := b"0010_1010_1010";
  constant F3 : std_logic_vector(11 downto 0) := b"0010_1000_0100";
  constant FS3 : std_logic_vector(11 downto 0) := b"0010_0101_1111";
  constant G3 : std_logic_vector(11 downto 0) := b"0010_0011_1101";
  constant GS3 : std_logic_vector(11 downto 0) := b"0010_0001_1101";
  constant A3 : std_logic_vector(11 downto 0) := b"0001_1111_1110";
  constant AS3 : std_logic_vector(11 downto 0) := b"0001_1110_0001";
  constant B4 : std_logic_vector(11 downto 0) := b"0001_1100_0110";
  constant C4 : std_logic_vector(11 downto 0) := b"0001_1010_1101";
  constant CS4 : std_logic_vector(11 downto 0) := b"0001_1001_0101";
  constant D4 : std_logic_vector(11 downto 0) := b"0001_0111_1110";
  constant DS4 : std_logic_vector(11 downto 0) := b"0001_0110_1000";

  constant E4 : std_logic_vector(11 downto 0) := b"0001_0101_0100";
  constant F4 : std_logic_vector(11 downto 0) := b"0001_0100_0001";
  constant FS4 : std_logic_vector(11 downto 0) := b"0001_0010_1111";
  constant G4 : std_logic_vector(11 downto 0) := b"0001_0001_0110";
  constant GS4 : std_logic_vector(11 downto 0) := b"0001_0000_1101";
  constant A4 : std_logic_vector(11 downto 0) := b"0000_1111_1110";
  constant AS4 : std_logic_vector(11 downto 0) := b"0000_1111_0000";
  constant B5 : std_logic_vector(11 downto 0) := b"0000_1110_0010";
  constant C5 : std_logic_vector(11 downto 0) := b"0000_1101_0110";
  constant CS5 : std_logic_vector(11 downto 0) := b"0000_1100_1010";
  constant D5 : std_logic_vector(11 downto 0) := b"0000_1011_1110";
  constant DS5 : std_logic_vector(11 downto 0) := b"0000_1011_0100";

  constant E5 : std_logic_vector(11 downto 0) := b"0000_1010_1001";
  constant F5 : std_logic_vector(11 downto 0) := b"0000_1010_0000";
  constant FS5 : std_logic_vector(11 downto 0) := b"0000_1001_0111";
  constant G5 : std_logic_vector(11 downto 0) := b"0000_1000_1110";
  constant GS5 : std_logic_vector(11 downto 0) := b"0000_1000_0110";
  constant A5 : std_logic_vector(11 downto 0) := b"0000_0111_1111";
  constant AS5 : std_logic_vector(11 downto 0) := b"0000_0111_1000";
  constant B6 : std_logic_vector(11 downto 0) := b"0000_0111_0001";
  constant C6 : std_logic_vector(11 downto 0) := b"0000_0110_1010";
  constant CS6 : std_logic_vector(11 downto 0) := b"0000_0110_0100";
  constant D6 : std_logic_vector(11 downto 0) := b"0000_0101_1111";
  constant DS6 : std_logic_vector(11 downto 0) := b"0000_0101_1001";
end package;
