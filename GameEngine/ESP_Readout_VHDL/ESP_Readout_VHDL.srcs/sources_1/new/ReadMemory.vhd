library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity ReadMemory is
Port
(
    clk    : IN STD_LOGIC;

    addra   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cmd     : IN STD_LOGIC_VECTOR(1 downto 0)
);
end ReadMemory;

architecture Behavioral of ReadMemory is
    signal count    : std_logic_vector(7 downto 0) := (others=>'0');
    signal cnt      : integer range 0 to 10000000 := 0;
begin
    r_RAM : process(clk)
    begin
        if rising_edge(clk) then
            if (cmd = "10") then
                if (cnt = 10000000) then
                    addra <= count;
                    douta <= dina;
                    count <= count + '1';
                    cnt <= 0;
                elsif (cnt = 5000000) then
                    douta <= (others=>'0');
                    cnt <= cnt + 1;
                else
                    cnt <= cnt + 1;
                end if;
            else
                count <= (others=>'0');
            end if;
        end if;
    end process;
end Behavioral;
