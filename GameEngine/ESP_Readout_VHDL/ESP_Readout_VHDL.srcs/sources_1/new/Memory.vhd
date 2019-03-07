library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memory is
Port
(
    clk : in std_logic;

    ESPCLK  : in std_logic;
    ESPData : in std_logic_vector(7 downto 0);

    addra   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cmd     : in std_logic_vector(1 downto 0)
);
end Memory;

architecture Behavioral of Memory is
    constant maxBits : POSITIVE := 10;

    signal ESPDataMeta, ESPDataStable : std_logic_vector(7 downto 0);
    signal ESPClkMeta, ESPClkNew, ESPClkOld : std_logic;
    signal rClkMeta, rClkNew, rClkOld : std_logic;

    signal count : std_logic_vector(7 downto 0) := (others=>'0');
begin
    clock_boundry : process(clk)
    begin
        if rising_edge(clk) then
            ESPDataMeta     <= ESPData;
            ESPDataStable   <= ESPDataMeta;

            ESPClkMeta  <= ESPClk;
            ESPClkNew   <= ESPClkMeta;
            ESPClkOld   <= ESPClkNew;
        end if;
    end process;

    w_RAM : process(clk)
    begin
        if rising_edge(clk) then
            if (ESPClkOld = '0' and ESPClkNew = '1') then
                if (cmd = "11") then
                    addra <= count;
                    douta <= ESPDataStable;
                    count <= count + '1';
                else
                    count <= (others=>'0');
                end if;
            end if;
        end if;
    end process;
end Behavioral;
