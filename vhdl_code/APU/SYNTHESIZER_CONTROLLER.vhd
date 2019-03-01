library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.APU.all;

entity SYNTHESIZER_CONTROLLER is
    generic(
        bus_width : integer := 10
    );
    port (
------------------------------------INPUTS--------------------------------------
        clk : in std_logic;
        startAddress : in std_logic_vector(bus_width downto 0);
        start_music : in std_logic;
        reset : in std_logic;
------------------------------------OUTPUTS-------------------------------------
        data : out std_logic_vector(10 downto 0);
        write_enable : out std_logic;
        register_select : out std_logic_vector(3 downto 0)
    );
end entity;

architecture Behavioral of SYNTHESIZER_CONTROLLER is
--------------------------------------------------------------------------------
    component apu_memory is
        port(
            addra : in std_logic_vector(10 downto 0);
            clka : in std_logic;
            dina : in std_logic_vector(15 downto 0);
            douta : out std_logic_vector(15 downto 0);
            wea : in std_logic
        );
    end component;
---------------------------------------SQUARE1_REGISTERS------------------------
    signal  square1_frame_counter : unsigned(7 downto 0) := (others => '0');
    signal  square1_address_counter : unsigned(bus_width downto 0) := (others => '0');
---------------------------------------SQUARE2_REGISTERS------------------------
    signal  square2_frame_counter : unsigned(7 downto 0) := (others => '0');
    signal  square2_address_counter : unsigned(bus_width downto 0) := (others => '0');
---------------------------------------TRIANGLE_REGISTERS-----------------------
    signal  triangle_frame_counter : unsigned(7 downto 0) := (others => '0');
    signal  triangle_address_counter : unsigned(bus_width downto 0) := (others => '0');
---------------------------------------NOISE_REGISTERS--------------------------
    signal  noise_frame_counter : unsigned(7 downto 0) := (others => '0');
    signal  noise_address_counter : unsigned(bus_width downto 0) := (others => '0');
---------------------------------------MEMORY-----------------------------------
    signal memory_state : MEMORY_STATES := WAIT_ADDRESS;

    signal memory_data : std_logic_vector(15 downto 0);
    signal current_address : unsigned(bus_width downto 0) := (others=>'1');
    signal old_address : unsigned(bus_width downto 0) := (others=>'1');
    signal isFetchDone : boolean := false;
---------------------------------------FRAME_REGISTERS--------------------------
    signal frame_prescaler : std_logic_vector(31 downto 0) := (others => '0');
    signal frame_counter  : unsigned(31 downto 0) := (others => '0');
    signal isCounterEnable : boolean := false;
---------------------------------------STATE_REGISTER---------------------------
    signal controller_state : CONTROL_STATES := HOLD;
begin
--------------------------------------------------------------------------------
    apu_memory_1 : apu_memory port map(
        addra => std_logic_vector(current_address),
        clka => clk,
        dina => x"0000",
        douta => memory_data,
        wea => '0'
    );
-------------------------------------------------------------------------------
    MEMORY_ACCESSOR : process(clk)
    begin
        if rising_edge(clk) then
            isFetchDone <= false;
            case( memory_state ) is
                when WAIT_ADDRESS =>
                    if current_address /= old_address then
                        memory_state <= WAIT_DATA;
                        old_address <= current_address;
                    end if;
                when WAIT_DATA =>
                    memory_state <= DATA_READY;
                when DATA_READY =>
                    isFetchDone <= true;
                    memory_state <= WAIT_ADDRESS;
                when others =>
                    memory_state <= WAIT_ADDRESS;
                    isFetchDone <= false;
            end case;
        end if;
    end process;
--------------------------------------------------------------------------------
    COUNTER : process(clk, reset)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                frame_counter <= (others => '0');
            elsif isCounterEnable and frame_counter /= unsigned(frame_prescaler) then
                frame_counter <= frame_counter + 1;
            else
                frame_counter <= (others => '0');
            end if;
        end if;
    end process;
--------------------------------------------------------------------------------
    CONTROLLER_STATE_MACHINE : process(clk, reset)
    begin
        if reset = '1' then
            controller_state <= HOLD;
            isCounterEnable <= false;
        elsif rising_edge(clk) then
            write_enable <= '0';
            case( controller_state ) is
----------------------------------STATE: HOLD-----------------------------------
                when HOLD =>
                    if start_music = '1' then
                        current_address <= unsigned(startAddress);
                        controller_state <= GET_BPM_MSB;
                    end if;
----------------------------------STATE: GET_BPM_1------------------------------
                when GET_BPM_MSB =>
                    if isFetchDone then
                        frame_prescaler(31 downto 16) <= memory_data;
                        controller_state <= GET_BPM_LSB;
                        current_address <= current_address + 1;
                    end if;
----------------------------------STATE: GET_BPM_1------------------------------
                when GET_BPM_LSB =>
                    if isFetchDone then
                        frame_prescaler(15 downto 0) <= memory_data;
                        controller_state <= GET_SQUARE1_ADDRESS;
                        current_address <= current_address + 1;
                    end if;
----------------------------------STATE: GET_SQUARE1_ADDRESS--------------------
                when GET_SQUARE1_ADDRESS =>
                    if isFetchDone then
                        square1_address_counter <= unsigned(memory_data(bus_width downto 0));
                        controller_state <= GET_SQUARE2_ADDRESS;
                        current_address <= current_address + 1;
                    end if;
----------------------------------STATE: GET_SQUARE2_ADDRESS--------------------
                when GET_SQUARE2_ADDRESS =>
                    if isFetchDone then
                        square2_address_counter <= unsigned(memory_data(bus_width downto 0));
                        controller_state <= GET_TRIANGLE_ADDRESS;
                        current_address <= current_address + 1;
                    end if;
----------------------------------STATE: GET_TRIANGLE_ADDRESS-------------------
                when GET_TRIANGLE_ADDRESS =>
                    if isFetchDone then
                        triangle_address_counter <= unsigned(memory_data(bus_width downto 0));
                        controller_state <= GET_NOISE_ADDRESS;
                        current_address <= current_address + 1;
                    end if;
----------------------------------STATE: GET_NOISE_ADDRESS----------------------
                when GET_NOISE_ADDRESS =>
                    if isFetchDone then
                        noise_address_counter <= unsigned(memory_data(bus_width downto 0));
                        controller_state <= WAIT_FRAME;
                        isCounterEnable <= true;
                    end if;
----------------------------------STATE: WAIT_FRAME-----------------------------
                when WAIT_FRAME =>
                    if frame_counter = 0 then
                        controller_state <= CHECK_SQUARE1;
                    end if;
----------------------------------STATE: CHECK_SQUARE1--------------------------
                when CHECK_SQUARE1 =>
                    if square1_frame_counter = 0 then
                        controller_state <= SQUARE1_INSTRUCTION;
                        current_address <= square1_address_counter;
                    else
                        square1_frame_counter <= square1_frame_counter - 1;
                        controller_state <= CHECK_SQUARE2;
                    end if;
----------------------------------STATE: GET_SQUARE1_INSTRUCTION----------------
                when SQUARE1_INSTRUCTION =>
                    write_enable <= '0';
                    current_address <= square1_address_counter;

                    if isFetchDone then
                        data <= memory_data(13 downto 3);
                        square1_address_counter <= square1_address_counter + 1;

                        controller_state <= SQUARE1_INSTRUCTION;
                        case( memory_data(2 downto 0) ) is
                            when "000" =>
                                register_select <= SQUARE1_FREQUENCY_REGISTER;
                                write_enable <= '1';
                            when "001" =>
                                register_select <= SQUARE1_VOLUME_REGISTER;
                                write_enable <= '1';
                            when "010" =>
                                register_select <= SQUARE1_ENABLE_REGISTER;
                                write_enable <= '1';
                            when "011" =>
                                square1_address_counter <= unsigned(memory_data(bus_width + 3 downto 3));
                            when "100" =>
                                square1_frame_counter <= unsigned(memory_data(10 downto 3));
                                controller_state <= CHECK_SQUARE2;
                            when others =>
                                NULL;
                        end case;
                    end if;
----------------------------------STATE: CHECK_SQUARE2--------------------------
                when CHECK_SQUARE2 =>
                    if square2_frame_counter = 0 then
                        controller_state <= SQUARE2_INSTRUCTION;
                        current_address <= square2_address_counter;
                    else
                        square2_frame_counter <= square2_frame_counter - 1;
                        controller_state <= CHECK_TRIANGLE;
                    end if;
----------------------------------STATE: GET_SQUARE1_INSTRUCTION----------------
                when SQUARE2_INSTRUCTION =>
                    write_enable <= '0';
                    current_address <= square2_address_counter;

                    if isFetchDone then
                        data <= memory_data(13 downto 3);
                        square2_address_counter <= square2_address_counter + 1;

                        controller_state <= SQUARE2_INSTRUCTION;
                        case( memory_data(2 downto 0) ) is
                            when "000" =>
                                register_select <= SQUARE2_FREQUENCY_REGISTER;
                                write_enable <= '1';
                            when "001" =>
                                register_select <= SQUARE2_VOLUME_REGISTER;
                                write_enable <= '1';
                            when "010" =>
                                register_select <= SQUARE2_ENABLE_REGISTER;
                                write_enable <= '1';
                            when "011" =>
                                square2_address_counter <= unsigned(memory_data(bus_width + 3 downto 3));
                            when "100" =>
                                square2_frame_counter <= unsigned(memory_data(10 downto 3));
                                controller_state <= CHECK_TRIANGLE;
                            when others =>
                                NULL;
                        end case;
                    end if;
----------------------------------STATE: CHECK_TRIANGLE--------------------------
                when CHECK_TRIANGLE =>
                    if triangle_frame_counter = 0 then
                        controller_state <= TRIANGLE_INSTRUCTION;
                        current_address <= triangle_address_counter;
                    else
                        triangle_frame_counter <= triangle_frame_counter - 1;
                        controller_state <= CHECK_NOISE;
                    end if;
----------------------------------STATE: GET_TRIANGLE_INSTRUCTION----------------
                when TRIANGLE_INSTRUCTION =>
                    write_enable <= '0';
                    current_address <= triangle_address_counter;

                    if isFetchDone then
                        data <= memory_data(13 downto 3);
                        triangle_address_counter <= triangle_address_counter + 1;

                        controller_state <= TRIANGLE_INSTRUCTION;
                        case( memory_data(2 downto 0) ) is
                            when "000" =>
                                register_select <= TRIANGLE_FREQUENCY_REGISTER;
                                write_enable <= '1';
                            when "010" =>
                                register_select <= TRIANGLE_ENABLE_REGISTER;
                                write_enable <= '1';
                            when "011" =>
                                triangle_address_counter <= unsigned(memory_data(bus_width + 3 downto 3));
                            when "100" =>
                                triangle_frame_counter <= unsigned(memory_data(10 downto 3));
                                controller_state <= CHECK_NOISE;
                            when others =>
                                NULL;
                        end case;
                    end if;
----------------------------------STATE: CHECK_NOISE--------------------------
                when CHECK_NOISE =>
                    if noise_frame_counter = 0 then
                        controller_state <= NOISE_INSTRUCTION;
                        current_address <= noise_address_counter;
                    else
                        noise_frame_counter <= noise_frame_counter - 1;
                        controller_state <= WAIT_FRAME;
                    end if;
----------------------------------STATE: GET_NOISE_INSTRUCTION----------------
                when NOISE_INSTRUCTION =>
                    write_enable <= '0';
                    current_address <= noise_address_counter;

                    if isFetchDone then
                        data <= memory_data(13 downto 3);
                        noise_address_counter <= noise_address_counter + 1;

                        controller_state <= NOISE_INSTRUCTION;
                        case( memory_data(2 downto 0) ) is
                            when "000" =>
                                register_select <= NOISE_SAMPLE_REGISTER;
                                write_enable <= '1';
                            when "010" =>
                                register_select <= NOISE_ENABLE_REGISTER;
                                write_enable <= '1';
                            when "001" =>
                                register_select <= NOISE_VOLUME_REGISTER;
                                write_enable <= '1';
                            when "011" =>
                                noise_address_counter <= unsigned(memory_data(bus_width + 3 downto 3));
                            when "100" =>
                                noise_frame_counter <= unsigned(memory_data(10 downto 3));
                                controller_state <= WAIT_FRAME;
                            when others =>
                                NULL;
                        end case;
                    end if;
----------------------------------STATE: OTHERS---------------------------------
                when others =>
                    controller_state <= WAIT_FRAME;
            end case;
        end if;
    end process;

end architecture;
