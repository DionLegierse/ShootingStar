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

signal ScanlineCounter : unsigned(9 downto 0) := (others => '1');
signal LastScanLine : unsigned(9 downto 0) := (others => '1');

signal SOAMAddressCounter : unsigned(5 downto 0) := (others => '1');
signal isSOAMReadReady : BOOLEAN := FALSE;

signal SOAMBuffer : memory := (others => (others => '1'));

signal xCounter : unsigned(9 downto 0) := (others => '0');

signal isRendering : BOOLEAN := FALSE;

type memory_states is (WAIT_ADDRESS, WAIT_DATA, DATA_READY);

signal memory_state : memory_states := WAIT_ADDRESS;

signal current_address : unsigned(15 downto 0) := (others=>'1');
signal old_address : unsigned(15 downto 0) := (others=>'1');
signal isFetchDone : boolean := false;

begin
------------------SCANLINE HANDLING---------------------------------------------
	SCAN_LINE_HANDLER : process (clk)
	variable result : std_logic_vector(9 downto 0);
	begin
		if rising_edge(clk) then

			isEndLine <= '0';

			--TODO add NextScanline statement here
			if ScanlineCounter >= 447 then
				NextScanline <= b"0_0000_0000";
			else
				result := std_logic_vector(ScanlineCounter + 1);
				NextScanline <= result(8 downto 0);
			end if;

			if (bufferFull = '1') then
				NULL;
			elsif(bufferClear = '1') then
			 	ScanlineCounter <= (others => '0');
			elsif(xCounter = 511) then
				isEndLine <= '1';

				if ScanlineCounter < 447 then
					ScanlineCounter <= ScanlineCounter + 1;
				else
					ScanlineCounter <= (others => '0');
				end if;
			end if;
		end if;
	end process;
------------------SOAM GETTER-----------------------------------------------------
	SOAMAddress <= std_logic_vector(SOAMAddressCounter(4 downto 0));

	SOAM_HANDLER : process(clk)
	begin
		if rising_edge(clk) then

			if SOAMAddressCounter = 0 then
				isSOAMReadReady <= TRUE;
			end if;

			if SOAMAddressCounter = 32 then
				SOAMReadEnable <= '0';
				isSOAMReadReady <= FALSE;
			end if;

			if ScanlineCounter /= LastScanline then
				SOAMAddressCounter <= (others => '0');
				SOAMReadEnable <= '1';
				LastScanline <= ScanlineCounter;
			end if;

			if SOAMAddressCounter < 32 and isSOAMReadReady then
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
					xOffsetAddres := xCounter - unsigned(SOAMBuffer(i)(22 downto 14));
					yOffsetAddres := ScanlineCounter - unsigned(SOAMBuffer(i)(31 downto 23));
				end if;
			end loop;

			if xCounter < 511 and SOAMAddressCounter >= 32 and bufferFull = '0' then
				xCounter <= xCounter + 1;
			elsif (xCounter >= 511 or SOAMAddressCounter < 32) then
				xCounter <= (others => '0');
			end if;

			current_address <= (spriteAddress * 64) + (xOffsetAddres(3 downto 0) + (yOffsetAddres(3 downto 0) * 8));
		end if;
	end process;

	process (clk) begin
		if rising_edge(clk) then
			if xCounter = 511 then
				isRendering <= FALSE;
			end if;

			if SOAMAddressCounter = 31 then
				isRendering <= TRUE;
			end if;
		end if;
	end process;

	SpriteROMAddr <= std_logic_vector(current_address);

	MEMORY_ACCESSOR : process(clk)
	begin
	if rising_edge(clk) then
		isFetchDone <= false;
		case( memory_state ) is
			when WAIT_ADDRESS =>
				if current_address /= old_address and isRendering then
					memory_state <= WAIT_DATA;
					old_address <= current_address;
				end if;
			when WAIT_DATA =>
				memory_state <= DATA_READY;
			when DATA_READY =>
				isFetchDone <= true;
				memory_state <= WAIT_ADDRESS;
			when others =>
				memory_state <= WAIT_ADDRESS;
				isFetchDone <= false;
		end case;
	end if;
	end process;



	PIXEL_WRITER : process(clk)
	begin
		if rising_edge(clk) then
			if isFetchDone and bufferFull /= '1' then
				BufferEnableWrite <= '1';
				BufferData <= SpriteROMDatout;
			else
				BufferEnableWrite <= '0';
			end if;
		end if;
	end process;
end architecture;

















--
