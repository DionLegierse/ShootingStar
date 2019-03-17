----------------------------------------------------------------------------------
-- Company:        Avans
-- Engineer:       J.vd.Heuvel
--
-- Create Date:    14:13:20 04/11/2009
-- Module Name:    VGA - Behavioral
-- Target Devices: Xilinx Artix 7
-- Description:
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
use IEEE.numeric_std.all;

entity VGA is
    Port (
        clk25 : in STD_LOGIC;
		pixel : in  std_logic_vector(7 downto 0);
		redOut, greenOut, blueOut : out  std_logic_vector(3 downto 0);
        nextX, nextY : out std_logic_vector(9 downto 0);
		hsync, vsync : out  STD_LOGIC
    );
end VGA;

architecture Behavioral of VGA is
  signal hcount: STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
  signal vcount: STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
begin

  process (clk25)
  begin
    if rising_edge(clk25) then
      if (hcount >= 144) and (hcount < 784) and (vcount >= 31) and (vcount < 511) then
        --visble area
        if (hcount >= 208) and (hcount < 720) and (vcount >= 47) and (vcount < 495) then
            redOut <= pixel(7) & pixel(7) & pixel(6) & pixel(5);
            greenOut <= pixel(4) & pixel(4) & pixel(3) & pixel(2);
            blueOut <= pixel(1) & pixel(1) & pixel(1) & pixel(0);
        else
            redOut <= (others => '0');
            greenOut <= (others => '0');
            blueOut <= (3 => '1', others => '1');
        end if;
      else
        --invisible area
        redOut <= (others => '0');
        greenOut <= (others => '0');
        blueOut <= (others => '0');
      end if;

      --h-sync pulse
      if hcount < 97 then
        hsync <= '0';
      else
        hsync <= '1';
      end if;

      --v-sync pulse
      if vcount < 3 then
        vsync <= '0';
      else
        vsync <= '1';
      end if;

      hcount <= hcount + 1;

      if hcount = 799 then
        vcount <= vcount + 1;
        hcount <= (others => '0');
      end if;

      if vcount = 521 then
        vcount <= (others => '0');
      end if;

      if ((hcount - 144 + 5) >= 64) and ((hcount - 144 + 5) < 576) then
          nextX <= (hcount - 144 - 64) + 5;
      else
          nextX <= (others => '0');
      end if;

      if ((vcount - 31) >= 16) and ((vcount - 31) < 464) then
          nextY <= (vcount - 31 - 16);
      else
          nextY <= (others => '0');
      end if;
    end if;
  end process;

end Behavioral;

architecture Behavioral_2 of VGA is
-- declare all constants for 1920 x 1080 timing
  constant H_pixels: integer := 640;			--horizontal display width in pixels
  constant H_frontporch: integer := 16;			--horizontal front porch width in pixels
  constant H_syncwidth: integer := 96; 			--horizontal sync pulse width in pixels
  constant H_backporch: integer := 48;			--horizontal back porch width in pixels
  constant H_total_pixels: integer := (H_pixels + H_frontporch + H_syncwidth + H_backporch);
  constant H_sync_polarity: STD_LOGIC := '1';	--horizontal sync pulse polarity (1 = positive, 0 = negative)
  constant V_pixels: integer := 480;			--vertical display width in rows
  constant V_frontporch: integer := 10;			--vertical front porch width in rows
  constant V_syncwidth: integer := 2;			--vertical sync pulse width in rows
  constant V_backporch: integer := 33;			--vertical back porch width in rows
  constant V_total_pixels: integer := (V_pixels + V_frontporch + V_syncwidth + V_backporch);
  constant V_sync_polarity: STD_LOGIC := '1';	--vertical sync pulse polarity (1 = positive, 0 = negative)

  constant gameScreenWidth : integer := 512;
  constant gameScreenHeight : integer := 448;

  signal hcount :	  INTEGER RANGE 0 TO H_total_pixels - 1 := 0;  --horizontal counter (counts the columns)
  signal vcount :   INTEGER RANGE 0 TO V_total_pixels - 1 := 0;  --vertical counter (counts the rows)
begin

process (clk25)

begin
    if rising_edge(clk25) then
        -- display time
        if (hcount >= 0) and (hcount < H_pixels) and (vcount >= 0) and (vcount < V_pixels) then

            if
                hcount >= ((H_pixels / 2) - (gameScreenWidth / 2)) and
                hcount < ((H_pixels / 2) + (gameScreenWidth / 2)) and
                vcount >= ((V_pixels / 2) - (gameScreenHeight / 2)) and
                vcount < ((V_pixels / 2) + (gameScreenHeight / 2))
            then
                redOut <= pixel(7) & pixel(7) & pixel(6) & pixel(5);
                greenOut <= pixel(4) & pixel(4) & pixel(3) & pixel(2);
                blueOut <= pixel(1) & pixel(1) & pixel(1) & pixel(0);
            else
                redOut <= (others => '0');
                greenOut <= (others => '0');
                blueOut <= (0 => '1', others => '0');
            end if;
        -- blanking time
        else
            redOut <= "0000";
            greenOut <= "0000";
            blueOut <= "0000";
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

        if hcount + 5 >= 64 and hcount + 5 < 576
        then
            nextX <= std_logic_vector(to_unsigned(hcount - 64 + 5, nextX'length));
        else
            nextX <= (others => '0');
        end if;

        if vcount >= 16 and vcount < 464
        then
            nextY <= std_logic_vector(to_unsigned(vcount - 16 , nextY'length));
        else
            nextY <= (others => '0');
        end if;
    end if;
end process;


end Behavioral_2;
