library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DIGITAL_MIXER is
  port (
------------------------------------INPUTS--------------------------------------
    --! 100 Mhz clock coming from the basys 3 board
    clk : in std_logic;
    --! The signal coming from the square wave 1 to be mixed with the other signals (SQUARE_WAVE)
    square1 : in std_logic_vector(7 downto 0);
    --! The signal coming from the square wave 2 to be mixed with the other signals (SQUARE_WAVE)
    square2 : in std_logic_vector(7 downto 0);
    --! The signal coming from the triangle wave to be mixed with the other signals (TRIANGLE_GENERATOR)
    triangle : in std_logic_vector(7 downto 0);
    --! The signal coming from the noise generator to be mixed with the other signals (NOISE_GENERATOR)
    noise : in std_logic_vector(7 downto 0);
    --! The signal coming from the sound effect generator to be mixed with the other signals
    soundEffect : in std_logic_vector(7 downto 0);
------------------------------------OUTPUTS-------------------------------------
    --! The mixed output where all signals are added to each other
    mixed : out std_logic_vector(11 downto 0)
  );
end entity;

--! @brief The behavior of the DIGITAL_MIXER for mixing all signals.
--! @details The DIGITAL_MIXER adds all signals coming in and sending out this mixed
--! signal.
architecture Behavioral of DIGITAL_MIXER is
    signal soundEffectMetaStable : std_logic_vector(7 downto 0);
    signal soundEffectStable : std_logic_vector(7 downto 0);
begin

sound_effect_stablizer : process(clk)
begin
    if rising_edge(clk) then
        soundEffectMetaStable <= soundEffect;
        soundEffectStable <= soundEffectMetaStable;
    end if;
end process;

MIXER : process(clk)
begin
  if rising_edge(clk) then
    mixed <= std_logic_vector(unsigned("0000" &square1) +
                              unsigned("0000" & square2) +
                              unsigned("0000" & triangle) +
                              unsigned("0000" & noise) +
                              unsigned("0000" & soundEffectStable)
                              );
  end if;
end process;

end architecture;
