library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM_GENERATOR is
  port (
------------------------------------INPUTS--------------------------------------
    --! The 100 Mhz clock coming from the basys 3
    clk : in std_logic;
    --! The signal coming from the DIGITAL_MIXER
    waveIn : in std_logic_vector(11 downto 0);
------------------------------------OUTPUTS-------------------------------------
    --! The PWM modulated sound coming from the DIGITAL_MIXER
    pwm : out std_logic
  );
end entity;

--! @brief The behavior of the PWM_GENERATOR
--! @details Converts the value on the waveIn to the corresponding pwm signal.
architecture Behavioral of PWM_GENERATOR is
--------------------------------------------------------------------------------
    signal unsignedDutyCycle : unsigned(11 downto 0);
    signal dutyCycleCounter : unsigned(11 downto 0) := (others => '0');
--------------------------------------------------------------------------------
begin   --architecture
--------------------------------------------------------------------------------
    unsignedDutyCycle <= unsigned(waveIn);
--------------------------------------------------------------------------------
    PWN_GENERATION : process(clk)
    begin --PWM_GENERATION
        if rising_edge(clk) then
            if (dutyCycleCounter < unsignedDutyCycle)
            then
                pwm <= '1';
            end if;

            if (dutyCycleCounter >= unsignedDutyCycle and unsignedDutyCycle /= x"7FF")
            then
                pwm <= '0';
            end if;

            dutyCycleCounter <= dutyCycleCounter + 1;
        end if;
    end process; --PWM_GENERATION
--------------------------------------------------------------------------------
end architecture;
