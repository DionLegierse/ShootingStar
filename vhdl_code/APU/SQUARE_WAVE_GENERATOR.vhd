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
            A : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            P : OUT STD_LOGIC_VECTOR(21 DOWNTO 0)
        );
    end component;

    constant constant1 : std_logic_vector(8 downto 0) := b"1_0111_1110";
    constant constant2 : unsigned(11 downto 0) := b"1000_0000_0000";

    signal multiplyResult : std_logic_vector(21 downto 0);
    signal subtractionResult : std_logic_vector(11 downto 0);

    signal prescaler : unsigned(21 downto 0);
    signal prescalerCounter : unsigned(21 downto 0) := (others => '0');

    signal waveOutBuffer : std_logic_vector(7 downto 0) := (others => '0');

begin

    subtractionResult <= std_logic_vector(constant2 - ('0' & unsigned(frequency)));
    prescaler <= unsigned(multiplyResult);

    waveOut <= waveOutBuffer;

    DSP1 : xbip_dsp48_macro_0 port map(
        CLK => clk,
        A => '0' & constant1,
        B => subtractionResult,
        P => multiplyResult
    );

    counter : process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' and prescalerCounter < prescaler then
                prescalerCounter <= prescalerCounter + 1;
            else
                prescalerCounter <= (others => '0');
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
