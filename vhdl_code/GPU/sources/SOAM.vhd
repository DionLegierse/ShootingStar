library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SOAM is
    Port (
    clk : in STD_LOGIC;


    --Write
    SOAMin : in STD_LOGIC_VECTOR (31 downto 0);
    SOAMpush : in STD_LOGIC;
    SOAMclear : in STD_LOGIC;

    --Read
    SOAMout : out STD_LOGIC_VECTOR (31 downto 0);
    SOAMren : in STD_LOGIC;
    SOAMadd : in STD_LOGIC_VECTOR (3 downto 0);

    -- flags
    SOAMfull : out STD_LOGIC

    );
end SOAM;

architecture Behavioral of SOAM is
    type memory_type is array (0 to 31) of std_logic_vector(31 downto 0);
    signal memory : memory_type := (others => (others => '0'));
    signal toppointer : integer range 0 to 32;
    begin
        SOAMwrite : process(clk)
        begin
            if (rising_edge(clk)) then

                --Reset Conditionals
                if SOAMclear = '1' then
                    memory <= (others => (others => '0'));
                    toppointer <= 0;
                    SOAMfull <= '0';

                --Push Conditionals
                elsif SOAMpush = '1' then
                    toppointer <= toppointer + 1;
                    memory(toppointer) <= SOAMin;

                    --Check if SOAM is full
                    if toppointer >= 31 then
                        SOAMFull <= '1';
                    else
                        SOAMFull <= '0';
                    end if;

                end if;
            end if;
        end process;

        soamRead : process(clk)
        begin
            if rising_edge(clk) then
                if (SOAMren = '1') then
                    SOAMout <= memory(to_integer(unsigned(SOAMadd)));
                else
                    SOAMout <= (others => '0');
                end if;
            end if;
        end process;


    end Behavioral;
