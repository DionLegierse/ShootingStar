library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYNTHESIZER_REGISTERS is
    port (
-----------------------------------INPUTS---------------------------------------
        clk : in std_logic;
        write_enable : in std_logic;
        register_select : in std_logic_vector(3 downto 0);
        data : in std_logic_vector(7 downto 0);
-----------------------------------OUTPUTS--------------------------------------
        square1_frequency_lsb : out std_logic_vector(7 downto 0);
        square1_frequency_msb : out std_logic_vector(3 downto 0);
        square1_volume : out std_logic_vector(7 downto 0);

        square2_frequency_lsb : out std_logic_vector(7 downto 0);
        square2_frequency_msb : out std_logic_vector(3 downto 0);
        square2_volume : out std_logic_vector(7 downto 0);

        triangle_frequency_lsb : out std_logic_vector(7 downto 0);
        triangle_frequency_msb : out std_logic_vector(3 downto 0);

        noise_selectSample : out std_logic_vector(4 downto 0);
        noise_volume : out std_logic_vector(7 downto 0)
    );
end entity;

architecture Behavioral of SYNTHESIZER_REGISTERS is



begin

SET_REGISTERS : process(clk)
begin
    if rising_edge(clk) then
        if write_enable = '1' then
            case( register_select ) is

                when "0000" =>
                    square1_frequency_lsb <= data;
                when "0001" =>
                    square1_frequency_msb <= data(3 downto 0);
                when "0010" =>
                    square1_volume <= data;
                when "0011" =>
                    square2_frequency_lsb <= data;
                when "0100" =>
                    square2_frequency_msb <= data(3 downto 0);
                when "0101" =>
                    square2_volume <= data;
                when "0110" =>
                    triangle_frequency_lsb <= data;
                when "0111" =>
                    triangle_frequency_msb <= data(3 downto 0);
                when "1000" =>
                    noise_selectSample <= data(4 downto 0);
                when "1001" =>
                    noise_volume <= data;
                when others =>
                    NULL;

            end case;
        end if;
    end if;
end process;


end architecture;
