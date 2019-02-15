library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NOISE_GENERATOR is
    generic(
        clkSpeed : positive := 10 ** 8
    );
    port (
------------------------------------INPUTS--------------------------------------
        clk : in std_logic;
        frequency : in std_logic_vector(10 downto 0);
        setSample : in std_logic_vector(3 downto 0);
        enable : in std_logic;
------------------------------------OUTPUTS-------------------------------------
        noiseWaveOut : out std_logic_vector(7 downto 0)
    );
end entity;

architecture Behavioral of NOISE_GENERATOR is

    signal frequencyInteger : POSITIVE RANGE 64 TO 131073;
    signal prescaler : POSITIVE RANGE 762 TO 1562500;
    signal prescalerCounter : INTEGER RANGE 0 TO 1562500;

    signal randomRegister : std_logic_vector(15 downto 0) := (others => '0');
    signal selectSampleBit : natural range 0 to 15;

begin
--------------------------------------------------------------------------------
    frequencyInteger <= 131072 / (2048 - to_integer(unsigned(frequency))); --gives frequency in Hertz
    prescaler <= (clkSpeed / frequencyInteger) / 63;
    noiseWaveOut <= randomRegister(7 downto 0);
    selectSampleBit <= to_integer(unsigned(setSample));
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
pseudo_random_generator : process(clk)
begin
    if rising_edge(clk) then
        if randomRegister = x"FFFF" then
            randomRegister <= (others => '0');
        elsif prescalerCounter = prescaler then
            randomRegister <= (not (randomRegister(0) xor randomRegister(selectSampleBit))) & randomRegister(15 downto 1);
        end if;
    end if;
end process;
--------------------------------------------------------------------------------
end architecture;
