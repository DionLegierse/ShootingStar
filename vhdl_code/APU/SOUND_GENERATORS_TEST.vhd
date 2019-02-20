library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.NOTES.all;

entity SOUND_GENERATORS_TEST is
    generic(
        clkSpeed : positive := 10 ** 8
    );
    port (
        clk : in std_logic;
        pwm : out std_logic
    );
end entity;

architecture Behavior of SOUND_GENERATORS_TEST is
-------------------------------------SQUARE_WAVE_1/1_TEST_VALUES----------------
    signal square1_enable : std_logic := '1';
    constant square2_enable : std_logic := '0';

    signal square1_frequency : std_logic_vector(10 downto 0) := b"110_1011_0001";
    signal square1_openingNote : std_logic_vector(10 downto 0) := D4;
    signal square2_frequency : std_logic_vector(10 downto 0) := b"111_0010_0000";
-------------------------------------TRIANGLE_TEST_VALUES-----------------------
    signal triangle_frequency : std_logic_vector(10 downto 0) := D3;
    signal triangle_enable : std_logic := '0';
-------------------------------------NOISE_TEST_VALUES--------------------------
    signal noise_sample : std_logic_vector(3 downto 0);
    signal noise_enable : std_logic;
--------------------------------------------------------------------------------
    signal square1 : std_logic_vector(7 downto 0);
    signal square2 : std_logic_vector(7 downto 0);
    signal triangle : std_logic_vector(7 downto 0);
    signal noise : std_logic_vector(7 downto 0);

    signal mixedSignal : std_logic_vector(11 downto 0);
--------------------------------------------------------------------------------
    constant framePrescaler : NATURAL := clkSpeed / 16;
    constant maxFrames : POSITIVE := 31;

    signal frameTimer : NATURAL range 0 to framePrescaler := 0;
    signal frameCounter : NATURAL range 0 to maxFrames := 0;
--------------------------------------------------------------------------------
    type openingNotes is (NOTE1, NOTE2, NOTE3, NOTE4);

    signal currentNote : openingNotes := NOTE1;
--------------------------------------------------------------------------------
begin
    frame_timer : process(clk)
    begin
        if rising_edge(clk) then
            if frameTimer = framePrescaler then
                frameTimer <= 0;

                if frameCounter = maxFrames then
                    frameCounter <= 0;

                    case( currentNote ) is
                        when NOTE1 =>
                            square1_openingNote <= C4;
                            triangle_frequency <= C3;
                            currentNote <= NOTE2;
                        when NOTE2 =>
                            square1_openingNote <= B4;
                            triangle_frequency <= B3;
                            currentNote <= NOTE3;
                        when NOTE3 =>
                            square1_openingNote <= AS3;
                            triangle_frequency <= AS2;
                            currentNote <= NOTE4;
                        when NOTE4 =>
                            square1_openingNote <= D4;
                            triangle_frequency <= D3;
                            currentNote <= NOTE1;
                        when others =>
                            NULL;
                    end case;
                else
                    frameCounter <= frameCounter + 1;
                end if;
            else
                frameTimer <= frameTimer + 1;
            end if;
        end if;
    end process;

    FRAME_NOTES : process(clk)
    begin
        if rising_edge(clk) then
            square1_enable <= '1';
            triangle_enable <= '1';
            noise_enable <= '0';

            case( frameCounter ) is
                when 0 =>
                    square1_frequency <= square1_openingNote;
                    noise_enable <= '1';
                    noise_sample <= "1110";
                when 1 =>
                    square1_enable <= '0';
                when 2 =>
                    square1_frequency <= square1_openingNote;
                when 4 =>
                    square1_frequency <= D5;
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1000";
                when 8 =>
                    square1_frequency <= A4;
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1110";
                when 10 =>
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1110";
                when 12 =>
                    noise_enable <= '1';
                    noise_sample <= "1000";
                when 14 =>
                    square1_frequency <= GS4;
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1110";
                when 18 =>
                    square1_frequency <= G4;
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1110";
                when 20 =>
                    noise_enable <= '1';
                    noise_sample <= "1000";
                when 22 =>
                    square1_frequency <= F4;
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1110";
                when 24 =>
                    triangle_enable <= '0';
                when 26 =>
                    square1_frequency <= D4;
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1110";
                when 28 =>
                    square1_frequency <= F4;
                    triangle_enable <= '0';
                    noise_enable <= '1';
                    noise_sample <= "1000";
                when 30 =>
                    square1_frequency <= G4;
                when others =>
                    NULL;
            end case;
        end if;
    end process;


    NOISE_GENERATOR_1 : entity work.NOISE_GENERATOR(Behavioral)
    generic map(
        clkSpeed => clkSpeed
    )
    port map(
        clk => clk,
        selectSample => noise_sample,
        enable => noise_enable,
        volume => b"0011_1111",
        noiseWaveOut => noise
    );

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
        frequencyClk => clkSpeed
    )
    port map(
        clk => clk,
        enable => square1_enable,
        frequency => square1_frequency,
        volume => b"0011_1111",
        waveOut => square1
    );

    SQUARE_WAVE_2 : entity work.SQUARE_WAVE(Behavioral)
    generic map(
        frequencyClk => clkSpeed
    )
    port map(
        clk => clk,
        enable => square2_enable,
        frequency => square2_frequency,
        volume => b"0011_1111",
        waveOut => square2
    );

    TRIANGLE_WAVE_1 : entity work.TRIANGLE_GENERATOR(Behavioral)
    generic map(
        frequencyClk => clkSpeed
    )
    port map(
        clk => clk,
        enable => triangle_enable,
        frequency => triangle_frequency,
        waveOut => triangle
    );

    PWM_GENERATOR_1 : entity work.PWM_GENERATOR(Behavioral)
    port map(
        clk => clk,
        waveIn => mixedSignal,
        pwm => pwm
    );



end architecture;
