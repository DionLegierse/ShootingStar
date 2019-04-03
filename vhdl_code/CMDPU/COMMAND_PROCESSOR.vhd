library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity COMMAND_PROCESSOR is
    port (
-------------------------------------INPUTS_MICROCONTROLLER---------------------
        --! 100Mhz clock signal from the Basys 3
        clk : in std_logic;
        --! 8 Bits of parallel data coming from the microcontroller
        mc_data : in std_logic_vector(7 downto 0);
        --! The enable signal coming from the microcontroller
        mc_clk : in std_logic;
        --! The register select signal coming from the microcontroller
        mc_register_select : in std_logic;
-------------------------------------OUTPUTS_GPU--------------------------------
        --! The x location going to the GPU
        x_loc_sprite : out std_logic_vector(8 downto 0);
        --! The y location going to the GPU
        y_loc_sprite : out std_logic_vector(8 downto 0);
        --! The number of the sprite to draw
        sprite_memory_loc : out std_logic_vector(7 downto 0);
        --! The attributes of the sprite going to the GPU
        sprite_attribute : out std_logic_vector(5 downto 0);
        --! The register location where to store the sprite
        sprite_register_loc : out std_logic_vector(6 downto 0);
        --! Enable the GPU to update the x location of the sprite in sprite_register_loc
        update_x : out std_logic;
        --! Enable the GPU to update the y location of the sprite in sprite_register_loc
        update_y : out std_logic;
        --! Enable the GPU to update the xy location of the sprite in sprite_register_loc
        update_xy : out std_logic;
        --! Enable the GPU to update all data of the sprite in sprite_register_loc
        update_all : out std_logic;
        --! Signal to let the GPU reset the sprite bank
        reset_bank : out std_logic;
-------------------------------------OUTPUTS_APU--------------------------------
        --! Signal to let the APU start playing the song in start_addres_APU
        start_music : out std_logic;
        --! Reset the APU to stop playing music
        reset_APU : out std_logic;
        --! The start address of the song within the song ROM
        start_addres_APU : out std_logic_vector(10 downto 0)
    );
end entity;

--! @brief The behavior of the command processor
--! @details When the register bit is set '1' high and the enable is high then
--! Registers can be selected or commands be executed. When the set bit '0' and
--! enable is high then data can be changed within a register.
architecture Behavioral of COMMAND_PROCESSOR is

type controller_states is (SET_ADDRESS, SET_DATA, SEND_DATA);

signal controllerState : controller_states := SET_ADDRESS;

signal address : std_logic_vector(7 downto 0);

signal mc_clk_meta_0, mc_clk_meta_1, mc_clk_meta_2, mc_clk_stable, mc_clk_old : std_logic;
signal mc_select_meta_0, mc_select_meta_1, mc_select_meta_2, mc_select_stable : std_logic;
signal mc_data_meta_0, mc_data_meta_1, mc_data_meta_2, mc_data_stable : std_logic_vector(7 downto 0);

begin
    SYNCHRONYSER : process(clk)
    begin
        if rising_edge(clk) then
            mc_clk_meta_0 <= mc_clk;
            mc_clk_meta_1 <= mc_clk_meta_0;
            mc_clk_meta_2 <= mc_clk_meta_1;
            mc_clk_stable <= mc_clk_meta_2;

            mc_select_meta_0 <= mc_register_select;
            mc_select_meta_1 <= mc_select_meta_0;
            mc_select_meta_2 <= mc_select_meta_1;
            mc_select_stable <= mc_select_meta_2;

            mc_data_meta_0 <= mc_data;
            mc_data_meta_1 <= mc_data_meta_0;
            mc_data_meta_2 <= mc_data_meta_1;
            mc_data_stable <= mc_data_meta_2;
        end if;
    end process;

    CONTROLLER_FSM : process(clk)

    begin

    if rising_edge(clk) then

        start_music <= '0';
        reset_APU <= '0';

        update_x <= '0';
        update_y <= '0';
        update_xy <= '0';
        update_all <= '0';
        reset_bank <= '0';

        if mc_clk_stable = '1' then
            if (mc_data_stable(7) = '1') and mc_select_stable = '1' then
                case (mc_data_stable) is
                    when x"80" =>
                        start_music <= '1';
                    when x"81" =>
                        reset_APU <= '1';
                    when x"82" =>
                        update_x <= '1';
                    when x"83" =>
                        update_y <= '1';
                    when x"84" =>
                        update_xy <= '1';
                    when x"85" =>
                        update_all <= '1';
                    when x"86" =>
                        reset_bank <= '1';
                    when others => NULL;
                end case;
            elsif mc_select_stable = '1' then
                address <= mc_data_stable;
            else
                case (address) is
                when x"00" =>
                    start_addres_APU(7 downto 0) <= mc_data_stable;
                when x"01" =>
                    start_addres_APU(10 downto 8) <= mc_data_stable(2 downto 0);
                when x"02" =>
                    x_loc_sprite(7 downto 0) <= mc_data_stable;
                when x"03" =>
                    x_loc_sprite(8) <= mc_data_stable(0);
                when x"04" =>
                    y_loc_sprite(7 downto 0) <= mc_data_stable;
                when x"05" =>
                    y_loc_sprite(8) <= mc_data_stable(0);
                when x"06" =>
                    sprite_memory_loc <= mc_data_stable;
                when x"07" =>
                    sprite_attribute <= mc_data_stable(5 downto 0);
                when x"08" =>
                    sprite_register_loc <= mc_data_stable(6 downto 0);
                when others => NULL;
                end case;
            end if;
        end if;
    end if;
    end process;
end architecture;
