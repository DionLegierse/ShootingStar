library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ScanlineOAM is
    Port (
    clk : in STD_LOGIC;

    --scanline
    scanline : in STD_LOGIC_VECTOR (9 downto 0);
    ENDscanline : in STD_LOGIC;

    --Object Attribute Memory
    OAMin : in STD_LOGIC_VECTOR (31 downto 0);
    OAMadd : out STD_LOGIC_VECTOR (6 downto 0);

    --Secondary Object Attribute Memory
    --SOAMfull : in STD_LOGIC;
    SOAMout : out STD_LOGIC_VECTOR (31 downto 0);
    SOAMpush : out STD_LOGIC;
    SOAMclear : out STD_LOGIC

    );
end ScanlineOAM;

architecture Behavioral of ScanlineOAM is
    signal objectIndex : STD_LOGIC_VECTOR (6 downto 0);
    begin
        process(clk)
        variable objY : STD_LOGIC_VECTOR (8 downto 0);
        begin
            if (rising_edge(clk)) then
                if (ENDscanline = '1') then
                    OAMadd <= (others => '0');
                    SOAMclear <= '1';
                else
                    SOAMclear <= '0';
                    objY := OAMin(31 downto 22);
                    OAMadd <= std_logic_vector(unsigned(objectIndex) + 1);
                    if ( (unsigned(objY) <= unsigned(scanline)) AND (unsigned(objY) >= unsigned(scanline) - 7) ) then
                        SOAMout <= OAMin;
                        SOAMpush <= '1';
                    else
                        SOAMpush <= '0';
                    end if;
                end if;
            end if;
        end process;


    end Behavioral;
