library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYNTH_CONTROL_UNIT is
    generic(
        clkSpeed : positive := 10 ** 8;
        ramBusWidth : positive := 18
    );
    port (
----------------------------------INPUTS----------------------------------------
        clk : in :std_logic;
        songStart : in std_logic_vector(ramBusWidth - 1 downto 0);
        ramData : in std_logic_vector(7 downto 0);
----------------------------------OUTPUTS_SQUARE_1------------------------------
        square1Enable : out std_logic;
        square1Frequency : out std_logic_vector(10 downto 0);
----------------------------------OUTPUTS_SQUARE_2------------------------------
        square2Enable : out std_logic;
        square2Frequency : out std_logic_vector(10 downto 0);
----------------------------------OUTPUTS_TRIANGLE------------------------------
        triangleEnable : out std_logic;
        triangleFrequency : out std_logic_vector(10 downto 0);
----------------------------------OUTPUTS_NOISE---------------------------------
        noiseEnable : out std_logic;
        noiseSampleSelect : out std_logic_vector(3 downto 0);
        noiseFrequency : out std_logic_vector(10 downto 0)
    );
end entity;

architecture Behavioral of SYNTH_CONTROL_UNIT is
------------------------------------repeat-counters-----------------------------
    signal square1Counter : std_logic_vector(7 downto 0) := (others => '0');
    signal square2Counter : std_logic_vector(7 downto 0) := (others => '0');
    signal triangleCounter : std_logic_vector(7 downto 0) := (others => '0');
    signal noiseCounter : std_logic_vector(7 downto 0) := (others => '0');
-----------------------------------address-counters-----------------------------
    signal square1CurrentAddress : std_logic_vector(ramBusWidth - 1 downto 0) := (others => '0');
    signal square2CurrentAddress : std_logic_vector(ramBusWidth - 1 downto 0) := (others => '0');
    signal triangleCurrentAddress : std_logic_vector(ramBusWidth - 1 downto 0) := (others => '0');
    signal noiseCurrentAddress : std_logic_vector(ramBusWidth - 1 downto 0) := (others => '0');
    signal genericAddresRegister : std_logic_vector(ramBusWidth - 1 downto 0) := (others => '0');
---------------------------------------song-data--------------------------------
    signal BPM : std_logic_vector(7 downto 0) := (others => '0');
--------------------------------------------------------------------------------
begin

end architecture;























--
