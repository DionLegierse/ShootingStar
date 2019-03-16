library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity SOAM_tb is
end;

architecture bench of SOAM_tb is

  component SOAM
      Port (
      clk : in STD_LOGIC;
      SOAMin : in STD_LOGIC_VECTOR (31 downto 0);
      SOAMpush : in STD_LOGIC;
      SOAMclear : in STD_LOGIC;
      SOAMout : out STD_LOGIC_VECTOR (31 downto 0);
      SOAMren : in STD_LOGIC;
      SOAMadd : in STD_LOGIC_VECTOR (3 downto 0);
      SOAMfull : out STD_LOGIC
      );
  end component;

  signal clk: STD_LOGIC;
  signal SOAMin: STD_LOGIC_VECTOR (31 downto 0);
  signal SOAMpush: STD_LOGIC;
  signal SOAMclear: STD_LOGIC;
  signal SOAMout: STD_LOGIC_VECTOR (31 downto 0);
  signal SOAMren: STD_LOGIC;
  signal SOAMadd: STD_LOGIC_VECTOR (3 downto 0);
  signal SOAMfull: STD_LOGIC ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: SOAM port map ( clk       => clk,
                       SOAMin    => SOAMin,
                       SOAMpush  => SOAMpush,
                       SOAMclear => SOAMclear,
                       SOAMout   => SOAMout,
                       SOAMren   => SOAMren,
                       SOAMadd   => SOAMadd,
                       SOAMfull  => SOAMfull );

  stimulus: process
  begin

    -- Put initialisation code here

    SOAMclear <= '1';
    wait for 5 ns;
    SOAMclear <= '0';
    wait for 5 ns;

    -- Put test bench stimulus code here

    for i in 0 to 31 loop
        
    end loop;

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
