library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TRIANGLE_GENERATOR is
  generic(frequencyClk : POSITIVE := 10 ** 8);
  port (
    clk : in std_logic;
    enable : in std_logic;
    frequency : in std_logic_vector(10 downto 0);
    waveOut : out std_logic_vector(7 downto 0)
  );
end entity;

architecture Behavior of TRIANGLE_GENERATOR is
  type state is (UP, DOWN);

  signal frequencyInteger : POSITIVE RANGE 64 TO 131073;
  signal prescaler : POSITIVE RANGE 762 TO 1562500;
  signal prescalerCounter : INTEGER RANGE 0 TO 1562500;
  signal waveOutBuffer : std_logic_vector(7 downto 0) := (others => '0');
  signal currentState : state := UP;

begin

  frequencyInteger <= 131072 / (2048 - to_integer(unsigned(frequency))); --gives frequency in Hertz
  prescaler <= (frequencyClk / frequencyInteger) / 512;
  waveOut <= waveOutBuffer;

  COUNTER : process(clk)
  begin
    if rising_edge(clk) then
      if enable = '1' and prescalerCounter < prescaler then
        prescalerCounter <= prescalerCounter + 1;
      else
        prescalerCounter <= 0;
      end if;
    end if;
  end process;

  TRIANGLE_GENERATOR : process(clk)
  begin
    if rising_edge(clk) then

      if (prescaler = prescalerCounter) and (currentState = UP) then
        waveOutBuffer <= std_logic_vector(unsigned(waveOutBuffer) + 1);
      elsif (prescaler = prescalerCounter) and (currentState = DOWN) then
        waveOutBuffer <= std_logic_vector(unsigned(waveOutBuffer) - 1);
      end if;

      if waveOutBuffer = "11111111" then
        currentState <= DOWN;
      elsif waveOutBuffer = "00000000" then
        currentState <= UP;
      end if;

    end if;
  end process;

end architecture;
