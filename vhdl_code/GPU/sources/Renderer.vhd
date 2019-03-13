library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Renderer is
port(
-----------------INPUTS------------------
	clk : in std_logic;
	isEndLine : in std_logic;
	SOAMData : in std_logic_vector(31 downto 0);
	SpriteROMDatout : in std_logic_vector(7 downto 0);
	bufferFull : in std_logic;
	bufferClear : in std_logic;
-----------------OUTPUT------------------
	SOAMAddress : out std_logic_vector(4 downto 0);
	SOAMReadEnable : out std_logic;
	Scanline : out std_logic_vector(9 downto 0);
	BufferData : out std_logic_vector(7 downto 0);
	SpriteROMAddr : out std_logic_vector(12 downto 0);
	BufferEnableWrite : out std_logic
);
end Renderer;

architecture Behavioral of Renderer is
type memory is array (0 to 31) of std_logic_vector(31 downto 0);

signal ScanlineCounter : unsigned(9 downto 0) := (others => '0');
signal LastScanLine : unsigned(9 downto 0) := (others => '1');

signal SOAMAddressCounter : unsigned(4 downto 0) := (others => '1');
signal isSOAMReadReady : BOOLEAN := FALSE;

signal SOAMBuffer : memory := (others => (others => '0'));

signal xCounter : unsigned(9 downto 0) := (others => '0');

signal uSpriteRomAddr : unsigned(12 downto 0);
signal uSpriteRomOffset : unsigned(12 downto 0);

begin
------------------SCANLINE HANDLING---------------------------------------------
	Scanline <= std_logic_vector(ScanlineCounter);

	SCAN_LINE_HANDLER : process (clk)
	begin
		if rising_edge(clk) then
			if (bufferFull = '1') then
				NULL;
			elsif(bufferClear = '1') then
			 	ScanlineCounter <= (others => '0');
			elsif(isEndLine = '1') then
				if ScanlineCounter < b"1_1100_0000" then
					ScanlineCounter <= ScanlineCounter + 1;
				else
					ScanlineCounter <= (others => '0');
				end if;
			end if;
		end if;
	end process;
------------------SOAM GETTER-----------------------------------------------------
	SOAMAddress <= std_logic_vector(SOAMAddressCounter);

	SOAM_HANDLER : process(clk)
	begin
		if rising_edge(clk) then

			isSOAMReadReady <= TRUE;

			if ScanlineCounter /= LastScanline then
				SOAMAddressCounter <= (others => '0');
				SOAMReadEnable <= '1';
				isSOAMReadReady <= FALSE;
				LastScanline <= ScanlineCounter;
			end if;

			if SOAMAddressCounter < 31 and isSOAMReadReady then
				SOAMBuffer(to_integer(SOAMAddressCounter)) <= SOAMData;
				SOAMAddressCounter <= SOAMAddressCounter + 1;
			end if;
		end if;
	end process;
-------------------SOAM BUFFER COMPARER----------------------------------------------
	SOAM_COMPARER : process(clk)
	variable spriteAddress : unsigned(7 downto 0);
	variable xOffsetAddres : unsigned(9 downto 0);
	variable yOffsetAddres : unsigned(9 downto 0);
	begin
		if rising_edge(clk) then
			for i in 0 to 31 loop
				if unsigned(SOAMBuffer(i)(22 downto 13)) >= xCounter and (unsigned(SOAMBuffer(i)(22 downto 13)) + 7) <= xCounter then
					spriteAddress := unsigned(SOAMBuffer(i)(7 downto 0));
					xOffsetAddres := xCounter - unsigned(SOAMBuffer(i)(22 downto 13));
					yOffsetAddres := ScanlineCounter - unsigned(SOAMBuffer(i)(31 downto 23));
				end if;
			end loop;

			if xCounter < 511 then
				xCounter <= xCounter + 1;
			else
				xCounter <= (others => '0');
			end if;
		end if;
	end process;
end architecture;

















--
