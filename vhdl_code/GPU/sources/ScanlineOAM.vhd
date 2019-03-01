library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ScanlineOAM is
    Port (
    clk : in STD_LOGIC;

    --scanline
    scanline : in STD_LOGIC_VECTOR (9 downto 0);

    --Object Attribute Memory
    OAMin : in STD_LOGIC_VECTOR (31 downto 0);
    OAMadd : out STD_LOGIC_VECTOR (6 downto 0);

    --Secondary Object Attribute Memory
    SOAMout : out STD_LOGIC_VECTOR (31 downto 0);
    SOAMadd : out STD_LOGIC
    );
end ScanlineOAM;

architecture Behavioral of ScanlineOAM is
    signal objectIndex : STD_LOGIC_VECTOR (6 downto 0);
    begin

        process(clk)
        variable objY : STD_LOGIC_VECTOR (8 downto 0);

        begin
            if (rising_edge(clk)) then
                objY := OAMin(31 downto 23);
                if ( (unsigned(objY) <= unsigned(scanline)) AND (unsigned(objY) >=unsigned(scanline) - 7) ) then
                    if(not SOAMfull) then
                        SOAMout <= OAMin;
                        SOAMpush <= '1';
                    end if;
                else
                    SOAMpush <= '0';
                end if;
            elsif (falling_edge(clk)) then
                SOAMpush <= '0';
            end if;
        end process;


    end Behavioral;
