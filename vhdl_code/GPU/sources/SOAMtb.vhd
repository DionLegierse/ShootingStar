library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SOAMtb is

end SOAMtb;

architecture Behavioral of SOAM is

    signal clk : in STD_LOGIC;


    --Write
    signal SOAMin : in STD_LOGIC_VECTOR (31 downto 0);
    signal SOAMpush : in STD_LOGIC;
    signal SOAMclear : in STD_LOGIC;

    --Read
    signal SOAMout : out STD_LOGIC_VECTOR (31 downto 0);
    SOAMren : in STD_LOGIC;
    SOAMadd : in STD_LOGIC_VECTOR (3 downto 0);

    -- flags
    SOAMfull : out STD_LOGIC
    begin
        simu : entity work.SOAM(Behavioral)
        port map(
        SOAMin =>
        );


    end Behavioral;
