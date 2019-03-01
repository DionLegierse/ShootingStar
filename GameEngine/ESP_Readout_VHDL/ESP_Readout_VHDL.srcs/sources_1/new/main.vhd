library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity main is
Port
(
    CLK         : in std_logic;
    ESPCLK      : in std_logic;
    ESPData     : in std_logic_vector(7 downto 0);

    DataOut     : out std_logic_vector(7 downto 0);
    Switch      : in std_logic_vector(2 downto 0)
);
end main;

architecture Behavioral of main is
    signal tAddress : std_logic_vector(7 downto 0) := (others=>'0');
    signal tData    : std_logic_vector(7 downto 0) := (others=>'0');
    signal tCLK     : std_logic;
begin
    mem: entity work.Memory
    port map
    (
        CLK         => CLK,
        ESPCLK      => ESPCLK,
        ESPData     => ESPData,
        wEnable     => Switch(0),

        rCLK        => tCLK,
        rData       => tData,
        rAddress    => tAddress,
        rEnable     => Switch(1)
    );

    readMem: entity work.ReadMemory
    port map
    (
        CLK         => CLK,

        DataIn      => tData,
        DataOut     => DataOut,
        AddressSel  => tAddress,

        rEnable     => Switch(1),
        rCLK        => tCLK,

        doShow      => Switch(2)
    );
end Behavioral;
