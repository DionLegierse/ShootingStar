library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYNTHESIZER_REGISTERS is
    port (
-----------------------------------INPUTS---------------------------------------
        clk : in std_logic;
        write_enable : in std_logic;
        register_select : in std_logic_vector(3 downto 0);
        data : in std_logic_vector(10 downto 0);
        reset : in std_logic;
-----------------------------------OUTPUTS--------------------------------------
        square1_frequency : out std_logic_vector(10 downto 0);
        square1_enable : out std_logic;
        square1_volume : out std_logic_vector(7 downto 0);

        square2_frequency : out std_logic_vector(10 downto 0);
        square2_enable : out std_logic;
        square2_volume : out std_logic_vector(7 downto 0);

        triangle_frequency : out std_logic_vector(10 downto 0);
        triangle_enable : out std_logic;

        noise_selectSample : out std_logic_vector(3 downto 0);
        noise_volume : out std_logic_vector(7 downto 0);
        noise_enable : out std_logic
    );
end entity;

architecture Behavioral of SYNTHESIZER_REGISTERS is

begin

SET_REGISTERS : process(clk)
begin
    if reset = '1' then

            square1_frequency <= (others => '0');
            square1_enable <= '0';
            square1_volume <= (others => '0');
            square2_frequency <= (others => '0');
            square2_enable <= '0';
            square2_volume <= (others => '0');
            triangle_frequency <= (others => '0');
            triangle_enable <= '0';
            noise_selectSample <= (others => '0');
            noise_volume <= (others => '0');
            noise_enable <= '0';

    elsif rising_edge(clk) then
        if write_enable = '1' then
            case( register_select ) is

                when "0000" =>
                    square1_frequency <= data;
                when "0001" =>
                    square1_enable <= data(0);
                when "0010" =>
                    square1_volume <= data(7 downto 0);
                when "0011" =>
                    square2_frequency <= data;
                when "0100" =>
                    square2_enable <= data(0);
                when "0101" =>
                    square2_volume <= data(7 downto 0);
                when "0110" =>
                    triangle_frequency <= data;
                when "0111" =>
                    triangle_enable <= data(0);
                when "1000" =>
                    noise_selectSample <= data(3 downto 0);
                when "1001" =>
                    noise_volume <= data(7 downto 0);
                when "1010" =>
                    noise_enable <= data(0);
                when others =>
                    NULL;

            end case;
        end if;
    end if;
end process;


end architecture;
