library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SQUARE_WAVE is
  generic( frequencyClk : positive := 10 ** 8);
  port (
    clk : in std_logic;
    enable : in std_logic;
    frequency : in std_logic_vector(10 downto 0);
    volume : in std_logic_vector(7 downto 0);
    waveOut : out std_logic_vector(7 downto 0)
  );
end entity;

architecture Behavioral of SQUARE_WAVE is
    component xbip_dsp48_macro_0 is
        port(
            CLK : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
            P : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
        );
    end component;

    constant constant1 : std_logic_vector(18 downto 0) := b"101_1111_0101_1110_0001";
    constant constant2 : unsigned(19 downto 0) := b"1011_1110_1011_1100_0010";

    signal multiplyResult : std_logic_vector(29 downto 0);

    signal prescaler : positive range 1 to 40161;
    signal prescalerCounter : positive range 1 to 40161;

  signal waveOutBuffer : std_logic_vector(7 downto 0) := (others => '0');

begin

  waveOut <= waveOutBuffer;

  DSP1 : xbip_dsp48_macro_0 port map(
        CLK => clk,
        A => constant1,
        B => frequency,
        P => multiplyResult
  );

  prescaler <= to_integer(constant2 - unsigned(multiplyResult(29 downto 10)));

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
      if prescalerCounter = prescaler and enable = '1' then
          if waveOutBuffer = x"00" then
              waveOutBuffer <= volume;
          else
              waveOutBuffer <= (others => '0');
          end if;
      end if;
    end if;
  end process;

end architecture;
