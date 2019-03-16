library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OAM is
    Port (
    clk : in STD_LOGIC;

    --Flags
    OAMreset : in STD_LOGIC;

    --Write
    OAMin : in STD_LOGIC_VECTOR (31 downto 0);
    OAMwen : in STD_LOGIC;
    OAMwadd : in STD_LOGIC_VECTOR (3 downto 0);

    --Read
    OAMout : out STD_LOGIC_VECTOR (31 downto 0);
    OAMren : in STD_LOGIC;
    OAMradd : in STD_LOGIC_VECTOR (3 downto 0)


    );
end OAM;

architecture Behavioral of OAM is
    type memory_type is array (0 to 127) of std_logic_vector(31 downto 0);
    signal memory : memory_type := (others => (others => '1'));
    signal toppointer : integer range 0 to 32;
    begin

        --Write process
        OAMWrite : process(clk)
        begin
            if (rising_edge(clk)) then
                if OAMwen = '1' then
                    memory(OAMwadd) <= OAMin;
                end if;
            end if;
        end process;

        --Read process
        OAMRead : process(clk)
        begin
            if rising_edge(clk) then
                if (OAMren = '1') then
                    OAMout <= memory(to_integer(unsigned(OAMradd)));
                else
                    OAMout <= others => '0';
                end if;
            end if;
        end process;

        --reset process
        OAMWrite : process(clk)
        begin
            if (rising_edge(clk)) then
                if OAMreset = '1' then
                    memory <= (others => (others => '1'));
                end if;
            end if;
        end process;
    end Behavioral;
