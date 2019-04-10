library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RWSELECTOR is
Port
(
    CLK         : in std_logic;
    writeAdd    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    readAdd     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    outAdd      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cmd         : in std_logic_vector(1 downto 0)
);
end RWSELECTOR;

architecture Behavioral of RWSELECTOR is

begin
    Selector : process(CLK)
    begin
        if (rising_edge(CLK)) then
            if (cmd = "11") then
                outAdd <= writeAdd;
            elsif (cmd = "10") then
                outAdd <= readAdd;
            end if;
        end if;
    end process;
end Behavioral;
