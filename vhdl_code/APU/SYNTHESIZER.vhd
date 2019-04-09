library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYNTHESIZER is
    port (
----------------------------------INPUTS------------------------------
        --! 100Mhz clock coming from the basys 3
        clk : in std_logic;
        --! The register write enable
        write_enable : in std_logic;
        --! Select the register to write to
        register_select : in std_logic_vector(3 downto 0);
        --! The data to set in the register
        data : in std_logic_vector(10 downto 0);
        --! The sound channel of the DIGITAL_MIXER
        soundEffect : in std_logic_vector(7 downto 0);
        --! The reset to reset the register bank for the APU
        reset : in std_logic;
----------------------------------OUTPUTS-----------------------------
        --! The sound that the synthesizer generated
        sound_out : out std_logic
    );
end entity;


--! @brief The SYNTHESIZER_REGISTERS connected to the generators and PWM modulator
--! @details The SYNTHESIZER_REGISTERS registers connected to two square wave generators
--! (SQUARE_WAVE), one triangle generator (TRIANGLE_GENERATOR), and one noise generators
--! (NOISE_GENERATOR) mixed in the DIGITAL_MIXER and modulated with the PWM_GENERATOR
architecture Behavioral of SYNTHESIZER is

    signal square1_frequency : std_logic_vector(10 downto 0);
    signal square1_enable : std_logic;
    signal square1_volume : std_logic_vector(7 downto 0);

    signal square2_frequency : std_logic_vector(10 downto 0);
    signal square2_enable : std_logic;
    signal square2_volume : std_logic_vector(7 downto 0);

    signal triangle_frequency : std_logic_vector(10 downto 0);
    signal triangle_enable : std_logic;

    signal noise_selectSample : std_logic_vector(3 downto 0);
    signal noise_volume : std_logic_vector(7 downto 0);
    signal noise_enable : std_logic;

    signal square1_out : std_logic_vector(7 downto 0);
    signal square2_out : std_logic_vector(7 downto 0);
    signal triangle_out : std_logic_vector(7 downto 0);
    signal noise_out : std_logic_vector(7 downto 0);

    signal mixed_out : std_logic_vector(11 downto 0);
begin
    SYNTHESIZER_REGISTERS_1 : ENTITY WORK.SYNTHESIZER_REGISTERS(Behavioral)
    PORT MAP(
        clk => clk,
        write_enable => write_enable,
        register_select => register_select,
        data => data,
        reset => reset,

        square1_frequency => square1_frequency,
        square1_enable => square1_enable,
        square1_volume => square1_volume,

        square2_frequency => square2_frequency,
        square2_enable => square2_enable,
        square2_volume => square2_volume,

        triangle_frequency => triangle_frequency,
        triangle_enable => triangle_enable,

        noise_selectSample => noise_selectSample,
        noise_volume => noise_volume,
        noise_enable => noise_enable
    );

    SQUARE_WAVE_1 : ENTITY WORK.SQUARE_WAVE(Behavioral)
    PORT MAP(
        clk => clk,
        enable => square1_enable,
        frequency => square1_frequency,
        volume => square1_volume,
        waveOut => square1_out
    );

    SQUARE_WAVE_2 : ENTITY WORK.SQUARE_WAVE(Behavioral)
    PORT MAP(
        clk => clk,
        enable => square2_enable,
        frequency => square2_frequency,
        volume => square2_volume,
        waveOut => square2_out
    );

    TRIANGLE_GENERATOR_1 : ENTITY WORK.TRIANGLE_GENERATOR(Behavioral)
    PORT MAP(
        clk => clk,
        enable => triangle_enable,
        frequency => triangle_frequency,
        waveOut => triangle_out
    );

    NOISE_GENERATOR_1 : ENTITY WORK.NOISE_GENERATOR(Behavioral)
    PORT MAP(
        clk => clk,
        selectSample => noise_selectSample,
        enable => noise_enable,
        volume => noise_volume,
        noiseWaveOut => noise_out
    );

    DIGITAL_MIXER_1 : ENTITY WORK.DIGITAL_MIXER(Behavioral)
    PORT MAP(
        clk => clk,
        square1 => square1_out,
        square2 => square2_out,
        triangle => triangle_out,
        noise => noise_out,
        soundEffect => soundEffect,
        mixed => mixed_out
    );

    PWM_GENERATOR_1 : ENTITY WORK.PWM_GENERATOR(Behavioral)
    PORT MAP(
        clk => clk,
        waveIn => mixed_out,
        pwm => sound_out
    );
end architecture;
