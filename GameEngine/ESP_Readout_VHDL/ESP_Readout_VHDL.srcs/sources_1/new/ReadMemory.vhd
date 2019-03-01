

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ReadMemory is
Port
(
    CLK         : in std_logic;

    DataIn      : in std_logic_vector(7 downto 0);
    DataOut     : out std_logic_vector(7 downto 0);
    AddressSel  : out std_logic_vector(7 downto 0);

    rEnable     : in std_logic;
    rCLK        : out std_logic;

    doShow      : in std_logic
);
end ReadMemory;

architecture Behavioral of ReadMemory is

begin


end Behavioral;
