library ieee;
use ieee.std_logic_1164.all;

package APU is

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
