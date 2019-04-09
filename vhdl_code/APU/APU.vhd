library ieee;
use ieee.std_logic_1164.all;

--! @brief Constants and custom types used for the APU.
--! @details This package contains constants for use within the apu regisers
--! and custom state types for the control unit of the APU

package APU is

    --! Address of the frequency register of square wave 1 (SQUARE_WAVE)
    constant SQUARE1_FREQUENCY_REGISTER : std_logic_vector(3 downto 0) := b"0000";
    --! Address of the enable register of square wave 1 (SQUARE_WAVE)
    constant SQUARE1_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"0001";
    --! Address of the volume register of square wave 1 (SQUARE_WAVE)
    constant SQUARE1_VOLUME_REGISTER : std_logic_vector(3 downto 0) := b"0010";

    --! Address of the frequency register of square wave 2 (SQUARE_WAVE)
    constant SQUARE2_FREQUENCY_REGISTER : std_logic_vector(3 downto 0) := b"0011";
    --! Address of the enable register of square wave 2 (SQUARE_WAVE)
    constant SQUARE2_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"0100";
    --! Address of the volume register of square wave 2 (SQUARE_WAVE)
    constant SQUARE2_VOLUME_REGISTER : std_logic_vector(3 downto 0) := b"0101";

    --! Address of the frequency register of the triangle wave (TRIANGLE_GENERATOR)
    constant TRIANGLE_FREQUENCY_REGISTER : std_logic_vector(3 downto 0) := b"0110";
    --! Address of the enable register of the triangle wave (TRIANGLE_GENERATOR)
    constant TRIANGLE_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"0111";

    --! Address of the sample select register of the noise generator (NOISE_GENERATOR)
    constant NOISE_SAMPLE_REGISTER : std_logic_vector(3 downto 0) := b"1000";
    --! Address of the enable register of the noise generator (NOISE_GENERATOR)
    constant NOISE_ENABLE_REGISTER : std_logic_vector(3 downto 0) := b"1010";
    --! Address of the volume register of the noise generator (NOISE_GENERATOR)
    constant NOISE_VOLUME_REGISTER : std_logic_vector(3 downto 0) := b"1001";

    --! The states of the memory fetcher of the SYNTHESIZER_CONTROLLER
    type MEMORY_STATES is(
        WAIT_ADDRESS,
        WAIT_DATA,
        DATA_READY
    );

    --! The states of the controller in SYNTHESIZER_CONTROLLER
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
