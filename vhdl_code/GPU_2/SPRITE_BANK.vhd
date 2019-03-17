----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/17/2019 12:52:59 AM
-- Design Name:
-- Module Name: SPRITE_BANK - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPRITE_BANK is
    generic(
        sprite_address_bits : integer := 7
    );
    Port (
        clk : in std_logic;

        register_address : in std_logic_vector((sprite_address_bits - 1) downto 0);

        sprite_x : in std_logic_vector(8 downto 0);
        sprite_y : in std_logic_vector(8 downto 0);
        sprite_attribute : in std_logic_vector(5 downto 0);
        sprite_number : in std_logic_vector(7 downto 0);

        update_x : in std_logic;
        update_y : in std_logic;
        update_xy : in std_logic;
        update_all : in std_logic;

        vpos : in std_logic_vector(9 downto 0);
        hpos : in std_logic_vector(9 downto 0);

        sprite_data : out std_logic_vector(31 downto 0);
        sprite_vpos : out std_logic_vector(9 downto 0);
        sprite_hpos : out std_logic_vector(9 downto 0)
    );
end SPRITE_BANK;

architecture Behavioral of SPRITE_BANK is
    type sprite is record
        x : std_logic_vector(8 downto 0);
        y : std_logic_vector(8 downto 0);
        attrib : std_logic_vector(5 downto 0);
        number : std_logic_vector(7 downto 0);
    end record sprite;

    constant initial_sprite : sprite := (
        x => (others => '1'),
        y => (others => '1'),
        attrib => (others => '1'),
        number => (others => '1')
    );

    type sprite_array is array (0 to ((2**sprite_address_bits ) - 1)) of sprite;

    signal sprites_array : sprite_array := (others => initial_sprite);

    signal register_address_integer : integer range 0 to (2**sprite_address_bits) - 1;
    signal hpos_unsigned : unsigned(9 downto 0);
    signal vpos_unsigned : unsigned(9 downto 0);

begin

    register_address_integer <= to_integer(unsigned(register_address));
    hpos_unsigned <= unsigned(hpos);
    vpos_unsigned <= unsigned(vpos);

    SPRITE_MEMORY_WRITER : process(clk)
    begin
        if rising_edge(clk) then
            if update_x = '1' then
                sprites_array(register_address_integer).x <= sprite_x;
            end if;

            if update_y = '1' then
                sprites_array(register_address_integer).y <= sprite_y;
            end if;

            if update_xy = '1' then
                sprites_array(register_address_integer).x <= sprite_x;
                sprites_array(register_address_integer).y <= sprite_y;
            end if;

            if update_all = '1' then
                sprites_array(register_address_integer).x <= sprite_x;
                sprites_array(register_address_integer).y <= sprite_y;
                sprites_array(register_address_integer).attrib <= sprite_attribute;
                sprites_array(register_address_integer).number <= sprite_number;
            end if;
        end if;
    end process;

    SPRITE_FINDER : process(clk)
    begin
        if rising_edge(clk) then
            sprite_data <= (others => '1');
            sprite_vpos <= (others => '1');
            sprite_hpos <= (others => '1');

            SPRITE_FINDING_LOOP : for i in 0 to (2**sprite_address_bits) - 1 loop
                if
                    unsigned(sprites_array(i).x) <= hpos_unsigned and
                    (unsigned(sprites_array(i).x) + 8) > hpos_unsigned and
                    unsigned(sprites_array(i).y) <= vpos_unsigned and
                    (unsigned(sprites_array(i).y) + 8) > vpos_unsigned
                then
                    sprite_data <=  sprites_array(i).y &
                                    sprites_array(i).x &
                                    sprites_array(i).attrib &
                                    sprites_array(i).number;

                    sprite_vpos <= vpos;
                    sprite_hpos <= hpos;
                end if;
            end loop;
        end if;
    end process;
end Behavioral;
























--
