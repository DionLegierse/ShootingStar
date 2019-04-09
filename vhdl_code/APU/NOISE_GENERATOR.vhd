library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NOISE_GENERATOR is
    port (
------------------------------------INPUTS--------------------------------------
        --! A 100 Mhz clock coming from the basys 3
        clk : in std_logic;
        --! Selects the sample to be played
        selectSample : in std_logic_vector(3 downto 0);
        --! Enables the noise generator to make sound
        enable : in std_logic;
        --! Controls the volume of the noise generator higher is louder
        volume : in std_logic_vector(7 downto 0);
------------------------------------OUTPUTS-------------------------------------
        --! Sends out the generated noise signal
        noiseWaveOut : out std_logic_vector(7 downto 0)
    );
end entity;

--! @brief The behavior of the NOISE_GENERATOR for generating percussion sounds.
--! @details generates a noise signal. The noise to be generated is selected by
--! adjusting the selectSample. The volume can be controlled with the volume
--! input.
architecture Behavioral of NOISE_GENERATOR is
    constant clkSpeed : positive := 10 ** 8;

    constant frequency1 : integer := 447443;
    constant frequency2 : integer := 223721;
    constant frequency3 : integer := 111860;
    constant frequency4 : integer := 55930;
    constant frequency5 : integer := 27965;
    constant frequency6 : integer := 18643;
    constant frequency7 : integer := 13982;
    constant frequency8 : integer := 11186;
    constant frequency9 : integer := 8860;
    constant frequency10 : integer := 7046;
    constant frequency11 : integer := 4709;
    constant frequency12 : integer := 3523;
    constant frequency13 : integer := 2348;
    constant frequency14 : integer := 1761;
    constant frequency15 : integer := 880;
    constant frequency16 : integer := 440;

    constant prescaler1 : integer := clkSpeed / frequency1;
    constant prescaler2 : integer := clkSpeed / frequency2;
    constant prescaler3 : integer := clkSpeed / frequency3;
    constant prescaler4 : integer := clkSpeed / frequency4;
    constant prescaler5 : integer := clkSpeed / frequency5;
    constant prescaler6 : integer := clkSpeed / frequency6;
    constant prescaler7 : integer := clkSpeed / frequency7;
    constant prescaler8 : integer := clkSpeed / frequency8;
    constant prescaler9 : integer := clkSpeed / frequency9;
    constant prescaler10 : integer := clkSpeed / frequency10;
    constant prescaler11 : integer := clkSpeed / frequency11;
    constant prescaler12 : integer := clkSpeed / frequency12;
    constant prescaler13 : integer := clkSpeed / frequency13;
    constant prescaler14 : integer := clkSpeed / frequency14;
    constant prescaler15 : integer := clkSpeed / frequency15;
    constant prescaler16 : integer := clkSpeed / frequency16;

    signal prescaler : natural RANGE 0 TO clkSpeed := 440;
    signal counter : natural RANGE 0 TO prescaler16;

    signal randomRegister : std_logic_vector(13 downto 0) := (0 => '1', others => '0');
    signal oldSample : std_logic_vector(3 downto 0) := (others => '0');

begin
--------------------------------------------------------------------------------
frequency_selector : process(clk)
begin
    if rising_edge(clk) then
        case( selectSample ) is
            when "0000" =>
                prescaler <= prescaler1;
            when "0001" =>
                prescaler <= prescaler2;
            when "0010" =>
                prescaler <= prescaler3;
            when "0011" =>
                prescaler <= prescaler4;
            when "0100" =>
                prescaler <= prescaler5;
            when "0101" =>
                prescaler <= prescaler6;
            when "0110" =>
                prescaler <= prescaler7;
            when "0111" =>
                prescaler <= prescaler8;
            when "1000" =>
                prescaler <= prescaler9;
            when "1001" =>
                prescaler <= prescaler10;
            when "1010" =>
                prescaler <= prescaler11;
            when "1011" =>
                prescaler <= prescaler12;
            when "1100" =>
                prescaler <= prescaler13;
            when "1101" =>
                prescaler <= prescaler14;
            when "1110" =>
                prescaler <= prescaler15;
            when "1111" =>
                prescaler <= prescaler16;
            when others =>
                NULL;
        end case;
    end if;
end process;
--------------------------------------------------------------------------------
counter_process : process(clk)
begin
  if rising_edge(clk) then
      if enable = '1' and oldSample = selectSample then
          if counter /= prescaler then
              counter <= counter + 1;
          else
              counter <= 0;
          end if;
      else
          counter <= 0;
      end if;
  end if;
end process;
--------------------------------------------------------------------------------
pseudo_random_generator : process(clk)
begin
    if rising_edge(clk) then
        if enable = '1' then
            if counter = 0 then
                randomRegister <= (randomRegister(0) xor randomRegister(1)) & randomRegister(13 downto 1);
            end if;

            if randomRegister(0) = '1' then
                noiseWaveOut <= volume;
            else
                noiseWaveOut <= (others => '0');
            end if;

            if oldSample /= selectSample then
                oldSample <= selectSample;
                randomRegister <= b"00_0000_0000_0001";
            end if;
        end if;
    end if;
end process;
--------------------------------------------------------------------------------
end architecture;
