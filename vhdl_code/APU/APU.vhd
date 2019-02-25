library ieee;
use ieee.std_logic_1164.all;

package APU is
    constant C2 : std_logic_vector(10 downto 0) := b"000_0010_1100";
    constant CS2 : std_logic_vector(10 downto 0) := b"000_1001_1100";
    constant D2 : std_logic_vector(10 downto 0) := b"001_0000_0110";
    constant DS2 : std_logic_vector(10 downto 0) := b"001_0110_1010";

    constant E2 : std_logic_vector(10 downto 0) := b"001_1100_1001";
    constant F2 : std_logic_vector(10 downto 0) := b"010_0010_0010";
    constant FS2 : std_logic_vector(10 downto 0) := b"010_0111_0111";
    constant G2 : std_logic_vector(10 downto 0) := b"010_1100_0110";
    constant GS2 : std_logic_vector(10 downto 0) := b"011_0001_0001";
    constant A2 : std_logic_vector(10 downto 0) := b"011_0101_1000";
    constant AS2 : std_logic_vector(10 downto 0) := b"011_1001_1011";
    constant B3 : std_logic_vector(10 downto 0) := b"011_1101_1010";
    constant C3 : std_logic_vector(10 downto 0) := b"100_0001_0110";
    constant CS3 : std_logic_vector(10 downto 0) := b"100_0100_1110";
    constant D3 : std_logic_vector(10 downto 0) := b"100_1000_0011";
    constant DS3 : std_logic_vector(10 downto 0) := b"100_1011_0101";

    constant E3 : std_logic_vector(10 downto 0) := b"100_1110_0100";
    constant F3 : std_logic_vector(10 downto 0) := b"101_0001_0001";
    constant FS3 : std_logic_vector(10 downto 0) := b"101_0011_1011";
    constant G3 : std_logic_vector(10 downto 0) := b"101_0110_0011";
    constant GS3 : std_logic_vector(10 downto 0) := b"101_1000_1000";
    constant A3 : std_logic_vector(10 downto 0) := b"101_1010_1100";
    constant AS3 : std_logic_vector(10 downto 0) := b"101_1100_1101";
    constant B4 : std_logic_vector(10 downto 0) := b"101_1100_1101";
    constant C4 : std_logic_vector(10 downto 0) := b"110_0000_1011";
    constant CS4 : std_logic_vector(10 downto 0) := b"110_0010_0111";
    constant D4 : std_logic_vector(10 downto 0) := b"110_0100_0010";
    constant DS4 : std_logic_vector(10 downto 0) := b"110_0101_1010";

    constant E4 : std_logic_vector(10 downto 0) := b"110_0111_0010";
    constant F4 : std_logic_vector(10 downto 0) := b"110_1000_1000";
    constant FS4 : std_logic_vector(10 downto 0) := b"110_1001_1101";
    constant G4 : std_logic_vector(10 downto 0) := b"110_1011_0001";
    constant GS4 : std_logic_vector(10 downto 0) := b"110_1100_0100";
    constant A4 : std_logic_vector(10 downto 0) := b"110_1101_0110";
    constant AS4 : std_logic_vector(10 downto 0) := b"110_1110_0110";
    constant B5 : std_logic_vector(10 downto 0) := b"110_1111_0110";
    constant C5 : std_logic_vector(10 downto 0) := b"111_0000_0101";
    constant CS5 : std_logic_vector(10 downto 0) := b"111_0001_0011";
    constant D5 : std_logic_vector(10 downto 0) := b"111_0010_0000";
    constant DS5 : std_logic_vector(10 downto 0) := b"111_0010_1101";

    constant E5 : std_logic_vector(10 downto 0) := b"111_0011_1001";
    constant F5 : std_logic_vector(10 downto 0) := b"111_0100_0100";
    constant FS5 : std_logic_vector(10 downto 0) := b"111_0100_1110";
    constant G5 : std_logic_vector(10 downto 0) := b"111_0101_1000";
    constant GS5 : std_logic_vector(10 downto 0) := b"111_0110_0010";
    constant A5 : std_logic_vector(10 downto 0) := b"111_0110_1011";
    constant AS5 : std_logic_vector(10 downto 0) := b"111_0111_0011";
    constant B6 : std_logic_vector(10 downto 0) := b"111_0111_1011";
    constant C6 : std_logic_vector(10 downto 0) := b"111_1000_0010";

    constant SQUARE1_FREQUENCY_REGISTER : std_logic_vector(3 downto 0) := b"0000";
    constant SQUARE1_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"0001";
    constant SQUARE1_VOLUME_REGISTER : std_logic_vector(3 downto 0) := b"0010";

    constant SQUARE2_FREQUENCY_REGISTER : std_logic_vector(3 downto 0) := b"0011";
    constant SQUARE2_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"0100";
    constant SQUARE2_VOLUME_REGISTER : std_logic_vector(3 downto 0) := b"0101";

    constant TRIANGLE_FREQUENCY_REGISTER : std_logic_vector(3 downto 0) := b"0110";
    constant TRIANGLE_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"0111";

    constant NOISE_SAMPLE_REGISTER : std_logic_vector(3 downto 0) := b"1000";
    constant NOISE_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"1010";
    constant NOISE_VOLUME_REGISTER : std_logic_vector(3 downto 0) := b"1001";

    type MEMORY_STATES is(
        WAIT_ADDRESS,
        WAIT_DATA,
        DATA_READY
    );

    type CONTROL_STATES is (
        HOLD,--
        GET_BPM_MSB,--
        GET_BPM_LSB,--
        GET_SQUARE1_ADDRESS,--
        GET_SQUARE2_ADDRESS,--
        GET_TRIANGLE_ADDRESS,--
        GET_NOISE_ADDRESS,--
        WAIT_FRAME,--
        CHECK_SQUARE1,--
        SQUARE1_INSTRUCTION,--
        CHECK_SQUARE2,--
        SQUARE2_INSTRUCTION,--
        CHECK_TRIANGLE,
        TRIANGLE_INSTRUCTION,
        CHECK_NOISE,
        NOISE_INSTRUCTION
    );
end package;
















--
