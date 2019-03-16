library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

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
	isEndLine : inout std_logic;
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

signal CurrentSprite : std_logic_vector(31 downto 0) := (others => '0');

signal SpriteY : unsigned(2 downto 0) := (others => '1');
signal SpriteOffset : unsigned(15 downto 0) := (others => '1');

signal isStarted : BOOLEAN := FALSE;

signal pixelData1, pixelData2, pixelData3, pixelData4 : std_logic_vector(7 downto 0) := (others => '0');
signal isBufferReady1, isBufferReady2, isBufferReady3, isBufferReady4 : BOOLEAN := FALSE;
signal isStarted1, isStarted2, isStarted3, isStarted4 : BOOLEAN := FALSE;
signal bufferFull1, bufferFull2, bufferFull3, bufferFull4 : std_logic := '0';

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

	Object_Picker : process(clk)
	begin
		if rising_edge(clk) then
			if isBufferReady then
				if unsigned(SOAMBuffer(0)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(0)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(0);
				elsif unsigned(SOAMBuffer(1)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(1)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(1);
				elsif unsigned(SOAMBuffer(2)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(2)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(2);
				elsif unsigned(SOAMBuffer(3)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(3)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(3);
				elsif unsigned(SOAMBuffer(4)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(4)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(4);
				elsif unsigned(SOAMBuffer(5)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(5)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(5);
				elsif unsigned(SOAMBuffer(6)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(6)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(6);
				elsif unsigned(SOAMBuffer(7)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(7)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(7);
				elsif unsigned(SOAMBuffer(8)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(8)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(8);
				elsif unsigned(SOAMBuffer(9)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(9)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(9);
				elsif unsigned(SOAMBuffer(10)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(10)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(10);
				elsif unsigned(SOAMBuffer(11)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(11)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(11);
				elsif unsigned(SOAMBuffer(12)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(12)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(12);
				elsif unsigned(SOAMBuffer(13)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(13)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(13);
				elsif unsigned(SOAMBuffer(14)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(14)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(14);
				elsif unsigned(SOAMBuffer(15)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(15)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(15);
				elsif unsigned(SOAMBuffer(16)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(16)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(16);
				elsif unsigned(SOAMBuffer(17)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(17)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(17);
				elsif unsigned(SOAMBuffer(18)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(18)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(18);
				elsif unsigned(SOAMBuffer(19)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(19)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(19);
				elsif unsigned(SOAMBuffer(20)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(20)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(20);
				elsif unsigned(SOAMBuffer(21)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(21)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(21);
				elsif unsigned(SOAMBuffer(22)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(22)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(22);
				elsif unsigned(SOAMBuffer(23)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(23)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(23);
				elsif unsigned(SOAMBuffer(24)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(24)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(24);
				elsif unsigned(SOAMBuffer(25)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(25)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(25);
				elsif unsigned(SOAMBuffer(26)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(26)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(26);
				elsif unsigned(SOAMBuffer(27)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(27)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(27);
				elsif unsigned(SOAMBuffer(28)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(28)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(28);
				elsif unsigned(SOAMBuffer(29)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(29)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(29);
				elsif unsigned(SOAMBuffer(30)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(30)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(30);
				elsif unsigned(SOAMBuffer(31)(22 downto 14)) <= xCounter and (unsigned(SOAMBuffer(31)(22 downto 14)) + 8) > xCounter then
					CurrentSprite <= SOAMBuffer(31);
				else
					CurrentSprite <= (others => '1');
				end if;
			end if;
		end if;
	end process;

	Addres_Calculator : process(clk)
	variable tempX : unsigned(9 downto 0);
	variable tempY : unsigned(8 downto 0);
	begin
		if rising_edge(clk) then
			if CurrentSprite /= x"FFFFFFFF" then
				tempX := (xCounter - 1) - unsigned(CurrentSprite(22 downto 14));
				tempY := ScanLineCounter - unsigned(CurrentSprite(31 downto 23));

				SpriteY <= tempY(2 downto 0);
				SpriteOffset <= tempX(2 downto 0) + (unsigned(CurrentSprite(7 downto 0)) * 64);
			else
				SpriteY <= (others => '1');
				SpriteOffset <= (others => '1');
			end if;

			if SpriteOffset = x"FFFF" then
				SpriteROMAddr <= (others => '1');
			else
				SpriteROMAddr <= std_logic_vector(SpriteOffset + (8 * ('0' & SpriteY)));
			end if;

		end if;
	end process;

	Start_Writing : process(clk)
	begin
		if rising_edge(clk) then
			if isEndLine = '1' then
				isStarted <= TRUE;
			end if;
		end if;
	end process;

	Writer_Synchronyser : process(clk)
	begin
		if rising_edge(clk) then
			if bufferFull3 /= '1' then
				pixelData1 <= SpriteROMDatout;
				pixelData2 <= pixelData1;
				pixelData3 <= pixelData2;
				pixelData4 <= pixelData3;

				isBufferReady1 <= isBufferReady;
				isBufferReady2 <= isBufferReady1;
				isBufferReady3 <= isBufferReady2;
				isBufferReady4 <= isBufferReady3;

				isStarted1 <= isStarted;
				isStarted2 <= isStarted1;
				isStarted3 <= isStarted2;
				isStarted4 <= isStarted3;
			end if;

			if bufferFull3 = '1' and bufferFull = '0' then
					pixelData1 <= SpriteROMDatout;
					pixelData2 <= pixelData1;
					pixelData3 <= pixelData2;
					pixelData4 <= pixelData3;
			end if;

			bufferFull1 <= bufferFull;
			bufferFull2 <= bufferFull1;
			bufferFull3 <= bufferFull2;
			bufferFull4 <= bufferFull3;
		end if;
	end process;

	buffer_writer : process(clk)
	begin
		if rising_edge(clk) then
			if bufferFull /= '1' then
				BufferData <= pixelData4;
				BufferEnableWrite <= '1';
			else
				BufferEnableWrite <= '0';
			end if;
		end if;
	end process;
end architecture;

















--
