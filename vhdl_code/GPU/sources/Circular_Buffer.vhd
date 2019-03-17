library	ieee;
use		ieee.std_logic_1164.all;
use		ieee.numeric_std.all;

entity circular_buffer is
	generic(
	data_depth		: integer range 2 to 15 := 15;
	data_width		: integer range 1 to 32 := 8);
	port(


	clk				: in std_logic;
	reset			: in std_logic;
	Ren				: in std_logic;
	Wen				: in std_logic;

	Dout			: out std_logic_vector(data_width-1 downto 0);
	Din				: in  std_logic_vector(data_width-1 downto 0);

	Empty			: out std_logic;
	Err				: out std_logic;
	Full			: out std_logic);
end circular_buffer;

architecture Behavioral of circular_buffer is

	type memory_type is array (0 to data_depth-1) of std_logic_vector(data_width-1 downto 0);

	signal memory			: memory_type := (others => (others => '0'));

	signal readptr,writeptr	: unsigned(data_depth-1 downto 0) := to_unsigned(0, data_depth);
	signal full0			: std_logic := '0';
	signal empty0			: std_logic := '1';

	begin
		full <= full0;
		empty <= empty0;

		err <= '1' when (empty0='1' and ren='1') or (full0='1' and wen='1')
	else '0';

	fifo0: process(clk,reset)
	begin
		if reset='1' then
			memory <= (others => (others => '0'));
			readptr <= to_unsigned(0, data_depth);
			writeptr <= to_unsigned(0, data_depth);
			full0 <= '0';
			empty0 <= '1';
		elsif rising_edge(clk) then
			if (wen='1' and full0='0') then
				memory(to_integer(writeptr)) <= Din ;
				if writeptr = data_depth-1 then
                    writeptr <= to_unsigned(0, data_depth);
                else
                    writeptr <= writeptr+1;
                end if;
			end if;

			if (ren='1' and empty0='0') then
				Dout <= memory(to_integer(readptr));
				if readptr = data_depth-1 then
				    readptr <= to_unsigned(0, data_depth);
				    else
				    readptr <= readptr+1;
				end if;
			end if ;

			if ((writeptr+2=readptr) or ((writeptr>=data_depth-2) and (readptr=0))) and (ren='0') and (wen='1') then
				full0 <= '1';
			else
				full0 <= '0';
			end if;

			if ((readptr+2=writeptr) or ((readptr>=data_depth-2) and (writeptr=0))) and (wen='0') and (ren='1') then
				empty0 <= '1';
			else
				empty0 <= '0';
			end if;

		end if;
	end process;
end Behavioral;
