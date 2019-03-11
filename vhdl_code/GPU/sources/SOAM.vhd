library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SOAM is
    Port (
    clk : in STD_LOGIC;
    --input
    SOAMout : in STD_LOGIC_VECTOR (31 downto 0);
    SOAMpush : in STD_LOGIC;
    SOAMclear : in STD_LOGIC;

    -- output
    SOAMfull : out STD_LOGIC

    );
end SOAM;

architecture Behavioral of SOAM is

    begin
        process(clk)

        begin
            if (rising_edge(clk)) then

            end if;
        end process;


    end Behavioral;
