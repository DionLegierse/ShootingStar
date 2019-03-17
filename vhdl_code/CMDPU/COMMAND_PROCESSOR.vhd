library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity COMMAND_PROCESSOR is
    port (
-------------------------------------INPUTS_MICROCONTROLLER---------------------
        clk : in std_logic;
        mc_data : in std_logic_vector(7 downto 0);
        mc_clk : in std_logic;
        mc_register_select : in std_logic;
        gpu_clk : in std_logic;
-------------------------------------OUTPUTS_GPU--------------------------------
        x_loc_sprite : out std_logic_vector(8 downto 0);
        y_loc_sprite : out std_logic_vector(8 downto 0);
        sprite_memory_loc : out std_logic_vector(7 downto 0);
        sprite_attribute : out std_logic_vector(5 downto 0);
        sprite_register_loc : out std_logic_vector(6 downto 0);
        update_x : out std_logic;
        update_y : out std_logic;
        update_xy : out std_logic;
        update_all : out std_logic;
        reset_bank : out std_logic;
-------------------------------------OUTPUTS_APU--------------------------------
        start_music : out std_logic;
        reset_APU : out std_logic;
        start_addres_APU : out std_logic_vector(10 downto 0)
    );
end entity;

architecture Behavioral of COMMAND_PROCESSOR is

type controller_states is (SET_ADDRESS, SET_DATA, SEND_DATA);

signal controllerState : controller_states := SET_ADDRESS;

signal address : std_logic_vector(7 downto 0);

signal mc_clk_meta, mc_clk_stable_new, mc_clk_stable_old : std_logic;
signal mc_select_meta, mc_select_stable : std_logic;
signal mc_data_meta, mc_data_stable : std_logic_vector(7 downto 0);

signal gpu_clk_meta, gpu_clk_stable_new, gpu_clk_stable_old : std_logic;

begin
    SYNCHRONYSER : process(clk)
    begin
        if rising_edge(clk) then
            mc_clk_meta <= mc_clk;
            mc_clk_stable_new <= mc_clk_meta;
            mc_clk_stable_old <= mc_clk_stable_new;

            mc_select_meta <= mc_register_select;
            mc_select_stable <= mc_select_meta;

            mc_data_meta <= mc_data;
            mc_data_stable <= mc_data_meta;

            gpu_clk_meta <= gpu_clk;
            gpu_clk_stable_new <= gpu_clk_meta;
            gpu_clk_stable_old <= gpu_clk_stable_new;
        end if;
    end process;

    CONTROLLER_FSM : process(clk)

    begin

    if rising_edge(clk) then

        start_music <= '0';
        reset_APU <= '0';

        if gpu_clk_stable_old = '0' and gpu_clk_stable_new = '1' then
            update_x <= '0';
            update_y <= '0';
            update_xy <= '0';
            update_all <= '0';
            reset_bank <= '0';
        end if;

        if mc_clk_stable_old = '0' and mc_clk_stable_new = '1' then
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
