----------------------------------------------------------------------------------
-- Company:        Avans
-- Engineer:       J. van den Heuvel
--
-- Create Date:    13-12-2018
-- Module Name:    VGA - Behavioral
-- Target Devices: Xilinx Artix 7
-- Description:    This VGA block generates VGA signals with a 1920x1080 resolution
--				   When using this resolution, a pixel clock of 148.5MHz is used.
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA is
    Port (
        pixel_clk : in STD_LOGIC;
        pixel_data : in std_logic_vector(7 downto 0);
        buffer_clear : in std_logic;
        pixel_out : out std_logic_vector(7 downto 0);
        buffer_read : out std_logic;
        hsync, vsync : out  STD_LOGIC
    );
end VGA;

architecture Behavioral of VGA is
  constant H_pixels: integer := 1920;			--horizontal display width in pixels
  constant H_frontporch: integer := 88;			--horizontal front porch width in pixels
  constant H_syncwidth: integer := 44; 			--horizontal sync pulse width in pixels
  constant H_backporch: integer := 148;			--horizontal back porch width in pixels
  constant H_total_pixels: integer := (H_pixels + H_frontporch + H_syncwidth + H_backporch);
  constant H_sync_polarity: STD_LOGIC := '1';	--horizontal sync pulse polarity (1 = positive, 0 = negative)
  constant V_pixels: integer := 1080;			--vertical display width in rows
  constant V_frontporch: integer := 4;			--vertical front porch width in rows
  constant V_syncwidth: integer := 5;			--vertical sync pulse width in rows
  constant V_backporch: integer := 36;			--vertical back porch width in rows
  constant V_total_pixels: integer := (V_pixels + V_frontporch + V_syncwidth + V_backporch);
  constant V_sync_polarity: STD_LOGIC := '1';	--vertical sync pulse polarity (1 = positive, 0 = negative)

  constant gameScreenWidth : integer := 512;
  constant gameScreenHeight : integer := 448;
  constant gameScreenXStart : integer := 704;
  constant gameScreenYStart : integer := 316;

  signal hcount	:	INTEGER RANGE 0 TO H_total_pixels - 1 := 0;  --horizontal counter (counts the columns)
  signal vcount	:	INTEGER RANGE 0 TO V_total_pixels - 1 := 0;  --vertical counter (counts the rows)

begin

process (pixel_clk)
begin
    if rising_edge(pixel_clk) then
        if buffer_clear /= '1' then
            -- display time
            if (hcount >= 0) and (hcount < H_pixels) and (vcount >= 0) and (vcount < V_pixels) then
                if
                    (hcount >= gameScreenXStart) and (hcount < (gameScreenXStart + gameScreenWidth)) and
                    (vcount >= gameScreenYStart) and (vcount < (gameScreenYStart + gameScreenHeight))
                then
                    pixel_out <= pixel_data;
                else
                    pixel_out <= (others => '1');
                end if;
            -- blanking time
            else
                pixel_out <= (others => '0');
                buffer_read <= '0';
            end if;

            -- Horizontal sync pulse signal
            if ((hcount >= (H_pixels + H_frontporch)) and (hcount < (H_pixels + H_frontporch + H_syncwidth))) then
                hsync <= H_sync_polarity;
            else
                hsync <= (not H_sync_polarity);
            end if;

            -- vertical sync pulse signal
            if ((vcount >= (V_pixels + V_frontporch)) and (vcount < (V_pixels + V_frontporch + V_syncwidth))) then
                vsync <= V_sync_polarity;
            else
                vsync <= (not V_sync_polarity);
            end if;

            -- horizontal pixel counter
            hcount <= hcount + 1;

            if hcount = (H_total_pixels - 1) then
            -- vertical line counter
                vcount <= vcount + 1;
                hcount <= 0;
            end if;

            if vcount = (V_total_pixels -1) then
                vcount <= 0;
            end if;
        end if;
    end if;
end process;

end Behavioral;
