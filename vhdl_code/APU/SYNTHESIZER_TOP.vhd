library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYNTHESIZER_TOP is
    port (
------------------------------------INPUTS--------------------------------------
        clk : in std_logic;
        start_music : in std_logic;
        reset : in std_logic;
        soundEffect : in std_logic_vector(7 downto 0);
		startAddress : in std_logic_vector(10 downto 0);
------------------------------------OUTPUTS-------------------------------------
        sound_out : out std_logic
    );
end entity;

architecture Behavioral of SYNTHESIZER_TOP is
    signal data : std_logic_vector(10 downto 0);
    signal write_enable : std_logic;
    signal register_select : std_logic_vector(3 downto 0);
begin

    SYNTHESIZER_CONTROLLER_1 : entity work.SYNTHESIZER_CONTROLLER(Behavioral)
    port map(
        clk => clk,
        startAddress => startAddress,
        start_music => start_music,
        reset => reset,
        data => data,
        write_enable => write_enable,
        register_select => register_select
    );

    SYNTHESIZER_1 : entity work.SYNTHESIZER(Behavioral)
    port map(
        clk => clk,
        write_enable => write_enable,
        register_select => register_select,
        data => data,
        soundEffect => soundEffect,
        sound_out => sound_out
    );

end architecture;
