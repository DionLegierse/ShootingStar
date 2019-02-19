library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SOUND_GENERATORS_TEST is
  port (
    clk : in std_logic;
    pwm : out std_logic
  );
end entity;

architecture Behavior of SOUND_GENERATORS_TEST is
-------------------------------------SQUARE_WAVE_1/1_TEST_VALUES----------------
    type chordStates is (CHORD_1, CHORD_2, CHORD_3, CHORD_4);

    constant square1_enable : std_logic := '1';
    constant square2_enable : std_logic := '1';

    constant G4 : std_logic_vector(10 downto 0) := b"110_1011_0001";
    constant D5 : std_logic_vector(10 downto 0) := b"111_0010_0000";

    constant A4 : std_logic_vector(10 downto 0) := b"110_1101_0110";
    constant E5 : std_logic_vector(10 downto 0) := b"111_0011_1001";

    constant B5 : std_logic_vector(10 downto 0) := b"110_1111_0110";
    constant FS5 : std_logic_vector(10 downto 0) := b"111_0100_1110";

    constant C5 : std_logic_vector(10 downto 0) := b"111_0000_0101";
    constant G5 : std_logic_vector(10 downto 0) := b"111_0101_1000";

    constant chordPrescaler : natural := 50000000;

    signal chordCounter : natural range 0 to chordPrescaler := 0;

    signal square1_frequency : std_logic_vector(10 downto 0) := b"110_1011_0001";
    signal square2_frequency : std_logic_vector(10 downto 0) := b"111_0010_0000";

    signal currentChordState : chordStates := CHORD_1;
-------------------------------------TRIANGLE_TEST_VALUES-----------------------
    constant triangle_frequency : std_logic_vector(10 downto 0) := b"010_1100_0110";
    constant trianglePrescaler : natural := 12500000;

    signal triangle_enable : std_logic := '0';
    signal triangleCounter : natural range 0 to trianglePrescaler := 0;
-------------------------------------TRIANGLE_TEST_VALUES-----------------------
    constant noise_enable : std_logic := '0';
    constant noise_frequency : std_logic_vector(10 downto 0) := (others => '0');
    constant noise_sample : std_logic_vector(3 downto 0) := (others => '0');
--------------------------------------------------------------------------------
    signal square1 : std_logic_vector(7 downto 0);
    signal square2 : std_logic_vector(7 downto 0);
    signal triangle : std_logic_vector(7 downto 0);
    signal noise : std_logic_vector(7 downto 0);

    signal mixedSignal : std_logic_vector(11 downto 0);
begin
    CHORD_BEAT : process(clk)
    begin
        if rising_edge(clk) then
            if chordCounter = 0 then
                case( currentChordState ) is
                    when CHORD_1 =>
                        square1_frequency <= G4;
                        square2_frequency <= D5;
                        currentChordState <= CHORD_2;

                    when CHORD_2 =>
                        square1_frequency <= A4;
                        square2_frequency <= C5;
                        currentChordState <= CHORD_3;

                    when CHORD_3 =>
                        square1_frequency <= B5;
                        square2_frequency <= D5;
                        currentChordState <= CHORD_4;

                    when CHORD_4 =>
                        square1_frequency <= C5;
                        square2_frequency <= G5;
                        currentChordState <= CHORD_1;

                    when others =>
                        currentChordState <= CHORD_1;

                end case;
            end if;

            if chordCounter /= chordPrescaler then
                chordCounter <= chordCounter + 1;
            else
                chordCounter <= 0;
            end if;
        end if;
    end process;

    TRIANGLE_BEAT : process(clk)
    begin
        if rising_edge(clk) then
            if triangleCounter = 0 then
                triangle_enable <= not triangle_enable;
            end if;

            if triangleCounter /= trianglePrescaler then
                triangleCounter <= triangleCounter + 1;
            else
                triangleCounter <= 0;
            end if;
        end if;
    end process;

    DIGITAL_MIXER_1 : entity work.DIGITAL_MIXER(Behavioral)
    port map(
        clk => clk,
        square1 => square1,
        square2 => square2,
        triangle => triangle,
        noise => noise,
        soundEffect => x"00",
        mixed => mixedSignal
    );

    SQUARE_WAVE_1 : entity work.SQUARE_WAVE(Behavioral)
    generic map(
        frequencyClk => 10 **8
    )
    port map(
        clk => clk,
        enable => square1_enable,
        frequency => square1_frequency,
        waveOut => square1
    );

    SQUARE_WAVE_2 : entity work.SQUARE_WAVE(Behavioral)
    generic map(
        frequencyClk => 10 **8
    )
    port map(
        clk => clk,
        enable => square2_enable,
        frequency => square2_frequency,
        waveOut => square2
    );

    TRIANGLE_WAVE_1 : entity work.TRIANGLE_GENERATOR(Behavioral)
    generic map(
        frequencyClk => 10 **8
    )
    port map(
        clk => clk,
        enable => triangle_enable,
        frequency => triangle_frequency,
        waveOut => triangle
    );


    NOISE_GENERATOR_1 : entity work.NOISE_GENERATOR(Behavioral)
    generic map(
        clkSpeed => 10 **8
    )
    port map(
        clk => clk,
        frequency => noise_frequency,
        setSample => noise_sample,
        enable => noise_enable,
        noiseWaveOut => noise
    );

    PWM_GENERATOR_1 : entity work.PWM_GENERATOR(Behavioral)
    port map(
        clk => clk,
        waveIn => mixedSignal,
        pwm => pwm
    );


end architecture;
