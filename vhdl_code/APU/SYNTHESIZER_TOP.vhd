library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYNTHESIZER_TOP is
    port (
------------------------------------INPUTS--------------------------------------
        --! 100Mhz clock signal coming from the Basys 3
        clk : in std_logic;
        --! Signal that starts the music on the address on startAddress
        start_music : in std_logic;
        --! Signal to reset the synthesizer
        reset : in std_logic;
        --! Input for the sound effects
        soundEffect : in std_logic_vector(7 downto 0);
        --! Start address of the song
		startAddress : in std_logic_vector(10 downto 0);
------------------------------------OUTPUTS-------------------------------------
        --! The output of the synthesizer that has been PWM modulated
        sound_out : out std_logic
    );
end entity;

--! @brief The top unit containing all parts of the synthesizer
--! @details This top unit contains the synthesizer itself and the controller
--! that controls the synthesizer
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
        reset => reset,
        sound_out => sound_out
    );

end architecture;
