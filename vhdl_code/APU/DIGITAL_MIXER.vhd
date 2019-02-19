library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DIGITAL_MIXER is
  port (
------------------------------------INPUTS--------------------------------------
    clk : in std_logic;
    square1 : in std_logic_vector(7 downto 0);
    square2 : in std_logic_vector(7 downto 0);
    triangle : in std_logic_vector(7 downto 0);
    noise : in std_logic_vector(7 downto 0);
    soundEffect : in std_logic_vector(7 downto 0);
------------------------------------OUTPUTS-------------------------------------
    mixed : out std_logic_vector(11 downto 0)
  );
end entity;

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
                              unsigned("00" & triangle & "00") +
                              unsigned("0000" & noise) +
                              unsigned("0000" & soundEffectStable)
                              );
  end if;
end process;

end architecture;
