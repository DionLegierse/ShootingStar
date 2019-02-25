library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TRIANGLE_GENERATOR is
  port (
    clk : in std_logic;
    enable : in std_logic;
    frequency : in std_logic_vector(10 downto 0);
    waveOut : out std_logic_vector(7 downto 0)
  );
end entity;

architecture Behavioral of TRIANGLE_GENERATOR is
    component triangle_dsp is
        port(
            CLK : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            P : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
        );
    end component;

    constant constant1 : std_logic_vector(2 downto 0) := b"011";
    constant constant2 : unsigned(11 downto 0) := b"1000_0000_0000";

    type state is (UP, DOWN);

    signal waveOutBuffer : std_logic_vector(7 downto 0) := (others => '0');
    signal currentState : state := UP;

    signal subtractionResult : std_logic_vector(11 downto 0);
    signal multiplyResult : std_logic_vector(14 downto 0);

    signal prescaler : unsigned(13 downto 0);
    signal prescalerCounter : unsigned(13 downto 0) := (others => '0');

begin

  waveOut <= waveOutBuffer;

  subtractionResult <= std_logic_vector(constant2 - ('0' & unsigned(frequency)));
  prescaler <= unsigned(multiplyResult(14 downto 1));

  DSP1 : triangle_dsp port map(
      CLK => clk,
      A => constant1,
      B => subtractionResult,
      P => multiplyResult
  );

  COUNTER : process(clk)
  begin
    if rising_edge(clk) then
      if enable = '1' and prescalerCounter < prescaler then
        prescalerCounter <= prescalerCounter + 1;
      else
        prescalerCounter <= (others => '0');
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
