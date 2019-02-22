library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYNTHESIZER is
    generic(
        clkSpeed : POSITIVE := 10 ** 8
    );
    port (
----------------------------------INPUTS------------------------------
        clk : in std_logic;
        write_enable : in std_logic;
        register_select : in std_logic_vector(3 downto 0);
        data : in std_logic_vector(7 downto 0);
----------------------------------OUTPUTS-----------------------------
        sound_out : out std_logic
    );
end entity;

architecture Behavioral of SYNTHESIZER is

    signal square1_frequency_lsb : std_logic_vector(7 downto 0);
    signal square1_frequency_msb : std_logic_vector(3 downto 0);
    signal square1_volume : std_logic_vector(7 downto 0);

    signal square2_frequency_lsb : std_logic_vector(7 downto 0);
    signal square2_frequency_msb : std_logic_vector(3 downto 0);
    signal square2_volume : std_logic_vector(7 downto 0);

    signal triangle_frequency_lsb : std_logic_vector(7 downto 0);
    signal triangle_frequency_msb : std_logic_vector(3 downto 0);

    signal noise_selectSample : std_logic_vector(4 downto 0);
    signal noise_volume : std_logic_vector(7 downto 0);

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

        square1_frequency_lsb => square1_frequency_lsb,
        square1_frequency_msb => square1_frequency_msb,
        square1_volume => square1_volume,

        square2_frequency_lsb => square2_frequency_lsb,
        square2_frequency_msb => square2_frequency_msb,
        square2_volume => square2_volume,

        triangle_frequency_lsb => triangle_frequency_lsb,
        triangle_frequency_msb => triangle_frequency_msb,

        noise_selectSample => noise_selectSample,
        noise_volume => noise_volume
    );

    SQUARE_WAVE_1 : ENTITY WORK.SQUARE_WAVE(Behavioral)
    GENERIC MAP(
        frequencyClk => clkSpeed
    )
    PORT MAP(
        clk => clk,
        enable => square1_frequency_msb(3),
        frequency => square1_frequency_msb(2 downto 0) & square1_frequency_lsb,
        volume => square1_volume,
        waveOut => square1_out
    );

    SQUARE_WAVE_2 : ENTITY WORK.SQUARE_WAVE(Behavioral)
    GENERIC MAP(
        frequencyClk => clkSpeed
    )
    PORT MAP(
        clk => clk,
        enable => square2_frequency_msb(3),
        frequency => square2_frequency_msb(2 downto 0) & square2_frequency_lsb,
        volume => square2_volume,
        waveOut => square2_out
    );

    TRIANGLE_GENERATOR_1 : ENTITY WORK.TRIANGLE_GENERATOR(Behavioral)
    GENERIC MAP(
        frequencyClk => clkSpeed
    )
    PORT MAP(
        clk => clk,
        enable => triangle_frequency_msb(3),
        frequency => triangle_frequency_msb(2 downto 0) & triangle_frequency_lsb,
        waveOut => triangle_out
    );

    NOISE_GENERATOR_1 : ENTITY WORK.NOISE_GENERATOR(Behavioral)
    GENERIC MAP(
        clkSpeed => clkSpeed
    )
    PORT MAP(
        clk => clk,
        selectSample => noise_selectSample(3 downto 0),
        enable => noise_selectSample(4),
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
        soundEffect => x"00",
        mixed => mixed_out
    );

    PWM_GENERATOR_1 : ENTITY WORK.PWM_GENERATOR(Behavioral)
    PORT MAP(
        clk => clk,
        waveIn => mixed_out,
        pwm => sound_out
    );
end architecture;
