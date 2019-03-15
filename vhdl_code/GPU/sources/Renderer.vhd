library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Renderer is
port(
-----------------INPUTS------------------
	clk : in std_logic;
	SOAMData : in std_logic_vector(31 downto 0);
	SpriteROMDatout : in std_logic_vector(7 downto 0);
	bufferFull : in std_logic;
	bufferClear : in std_logic;
-----------------OUTPUT------------------
	SOAMAddress : out std_logic_vector(4 downto 0);
	SOAMReadEnable : out std_logic;
	NextScanline : out std_logic_vector(8 downto 0);
	BufferData : out std_logic_vector(7 downto 0);
	SpriteROMAddr : out std_logic_vector(15 downto 0);
	isEndLine : out std_logic;
	BufferEnableWrite : out std_logic
);
end Renderer;

architecture Behavioral of Renderer is
type memory is array (0 to 31) of std_logic_vector(31 downto 0);

signal SOAMBuffer : memory := (others => (others => '1'));
signal isBufferReady : BOOLEAN := TRUE;

signal xCounter : unsigned(9 downto 0) := (others => '0');

signal ScanLineCounter : unsigned(8 downto 0) := b"1_1011_1111";

signal SOAMAddressCounter : unsigned(4 downto 0) := (others => '0');

begin
	X_Counter : process(clk)
	begin
		if rising_edge(clk) then
			if bufferFull = '0' and isBufferReady then
				xCounter <= xCounter + 1;
			end if;

			if xCounter = 511 then
				xCounter <= (others => '0');
			end if;
		end if;
	end process;

	Scanline_Counter : process(clk)
	begin
		if rising_edge(clk) then

			isEndLine <= '0';

			if ScanLineCounter = 447 then
				NextScanline <= (others => '0');
			else
				NextScanline <= std_logic_vector(ScanlineCounter + 1);
			end if;

			if xCounter = 511 then
				isEndLine <= '1';

				if ScanLineCounter = 447 then
					ScanLineCounter <= (others => '0');
				else
					ScanLineCounter <= ScanLineCounter + 1;
				end if;
			end if;
		end if;
	end process;

	SOAMAddress <= std_logic_vector(SOAMAddressCounter);

	SOAM_BUFFER_HANDLER : process(clk)
	begin
		if rising_edge(clk) then
			if xCounter = 511 then
				isBufferReady <= FALSE;
				SOAMReadEnable <= '1';
				SOAMAddressCounter <= (others => '0');
			end if;

			if not isBufferReady then

				SOAMBuffer(to_integer(SOAMAddressCounter)) <= SOAMData;

				if SOAMAddressCounter < 31 then
					SOAMAddressCounter <= SOAMAddressCounter + 1;
				else
					isBufferReady <= TRUE;
					SOAMReadEnable <= '0';
				end if;
			end if;

		end if;
	end process;
end architecture;

















--
