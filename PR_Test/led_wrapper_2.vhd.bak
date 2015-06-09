library IEEE;
use IEEE.std_logic_1164.all;

entity led_wrapper is
    port(
		 clk		: in STD_LOGIC;
       dir		: in STD_LOGIC;
       leds		: out STD_LOGIC_VECTOR (3 downto 0));
end led_wrapper;


architecture behv of led_wrapper is
    component led_flash
		 port(
		 clk	: in STD_LOGIC;
       dir	: in STD_LOGIC;
       leds	: out STD_LOGIC_VECTOR (3 downto 0));
    end component led_flash;

begin 
 
led_flash_inst: led_flash
 port map (
   clk   => clk, 
   dir   => dir, 
   leds  => leds);

end behv;