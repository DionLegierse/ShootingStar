library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SQUARE_WAVE is
  generic( frequencyClk : positive := 10 ** 8);
  port (
    clk : in std_logic;
    enable : in std_logic;
    frequency : in std_logic_vector(10 downto 0);
    waveOut : out std_logic_vector(7 downto 0)
  );
end entity;

architecture Behavioral of SQUARE_WAVE is

  signal frequencyInteger : POSITIVE RANGE 64 TO 131073;
  signal prescaler : POSITIVE RANGE 762 TO 1562500;
  signal prescalerCounter : INTEGER RANGE 0 TO 1562500;
  signal waveOutBuffer : std_logic_vector(7 downto 0) := (others => '0');

begin

  frequencyInteger <= 131072 / (2048 - to_integer(unsigned(frequency))); --gives frequency in Hertz
  prescaler <= (frequencyClk / frequencyInteger) / 2;
  waveOut <= waveOutBuffer;

  counter : process(clk)
  begin
    if rising_edge(clk) then
      if enable = '1' and prescalerCounter < prescaler then
        prescalerCounter <= prescalerCounter + 1;
      else
        prescalerCounter <= 0;
      end if;
    end if;
  end process;

  identifier : process(clk)
  begin
    if rising_edge(clk) then
      if prescalerCounter = prescaler then
        waveOutBuffer <= not waveOutBuffer;
      end if;
    end if;
  end process;

end architecture;
