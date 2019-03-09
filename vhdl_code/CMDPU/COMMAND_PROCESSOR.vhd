entity COMMAND_PROCESSOR is
    port (
-------------------------------------INPUTS_MICROCONTROLLER---------------------
        clk : in std_logic;
        data : in std_logic_vector(7 downto 0);
-------------------------------------OUTPUTS_GPU--------------------------------
-------------------------------------OUTPUTS_APU--------------------------------
        start_music : out std_logic;
        reset_APU : out std_logic;
        start_addres_APU : out std_logic_vector(10 downto 0)
    );
end entity;

architecture Behavioral of COMMAND_PROCESSOR is



begin



end architecture;
