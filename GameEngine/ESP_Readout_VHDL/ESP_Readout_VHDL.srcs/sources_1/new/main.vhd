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
    Switch      : in std_logic_vector(1 downto 0)
);
end main;

architecture Behavioral of main is
    signal tAddress, tRAddress, tWAddress : std_logic_vector(7 downto 0)  := (others=>'0');

    signal tDataIn      : std_logic_vector(7 downto 0)  := (others=>'0');
    signal tDataOut     : std_logic_vector(7 downto 0)  := (others=>'0');
    signal tCLK         : std_logic := '0';

    component RAMTHING is
    Port
    (
        clka    : IN STD_LOGIC;
        ena     : IN STD_LOGIC;
        wea     : IN STD_LOGIC;
        addra   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dina    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
    end component;
begin
    RAM : RAMTHING
    port map
    (
        clka    => clk,
        ena     => switch(1),
        wea     => switch(0),
        addra   => tAddress,
        dina    => tDataIn,
        douta   => tDataOut
    );

    writeMem: entity work.Memory(Behavioral)
    port map
    (
        CLK         => CLK,
        ESPCLK      => ESPCLK,
        ESPData     => ESPData,

        addra   =>  tWAddress,
        douta   =>  tDataIn,
        cmd     =>  Switch
    );

    readMem: entity work.ReadMemory(Behavioral)
    port map
    (
        clk     => CLK,

        addra   => tRAddress,
        dina    => ESPData,
        douta   => DataOut,
        cmd     => Switch
    );

    SEL: entity work.RWSelector(Behavioral)
    port map
    (
        CLK         => CLK,
        writeAdd    => tWAddress,
        readAdd     => tRAddress,
        outAdd      => tAddress,
        cmd         => Switch
   );
end Behavioral;
