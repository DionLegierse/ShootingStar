----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 02/28/2019 11:50:37 AM
-- Design Name:
-- Module Name: ScanlineOAM - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ScanlineOAM is
    Port (
    clk : in STD_LOGIC;

    --scanline
    scanline : in STD_LOGIC_VECTOR (9 downto 0);

    --Object Attribute Memory
    OAMim : in STD_LOGIC_VECTOR (31 downto 0);
    OAMadd : out STD_LOGIC_VECTOR (6 downto 0);
    
    --Secondary Object Attribute Memory
    SOAMout : out STD_LOGIC_VECTOR (31 downto 0);
    SOAMpush : out STD_LOGIC;
    SOAMfull : in STD_LOGIC
    );
end ScanlineOAM;

architecture Behavioral of ScanlineOAM is
    signal objectIndex : STD_LOGIC_VECTOR (6 downto 0);
    begin

        process(clk)

        begin
            if (rising_edge(clk)) then

            end if;
        end process;


    end Behavioral;
