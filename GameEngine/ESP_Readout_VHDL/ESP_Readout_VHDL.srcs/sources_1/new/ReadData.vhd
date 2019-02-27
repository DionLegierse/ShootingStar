library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ReadData is
Port
(
    clk : in std_logic;
    ESPCLK : in std_logic;
    ESPData : in std_logic_vector(7 downto 0);

    RCLK : in std_logic;
    RData : out std_logic_vector(7 downto 0);
    Raddress : in std_logic_vector(7 downto 0)
);
end ReadData;

architecture Behavioral of ReadData is
    constant maxBits : POSITIVE := 10;

    signal ESPDataMeta, ESPDataStable : std_logic_vector(7 downto 0);
    signal ESPClkMeta, ESPClkNew, ESPClkOld : std_logic;

    signal count : std_logic_vector(0 downto 7)

    TYPE ImageArray IS ARRAY (0 to 256) of STD_LOGIC_VECTOR(7 downto 0);
    signal imageData : ImageArray;
begin

clock_boundry : process(clk)
begin
    if rising_edge(clk) then
        ESPDataMeta     <= ESPData;
        ESPDataStable   <= ESPDatMeta;

        ESPClkMeta  <= ESPClk;
        ESPClkNew   <= ESPClkMeta;
        ESPClkOld   <= ESPClkNew;
    end if;
end process;

read_ESP : process(clk)
begin
    if rising_edge(clk) then
        if ESPClkOld = '1' and ESPClkNew = '0' then
            if (count < "11111111") then
                imageData(count) <= ESPData
                count <= count + '1';
            end if;
        end if;
    end if;
end process;

end Behavioral;
