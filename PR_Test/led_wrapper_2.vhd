library IEEE;
use IEEE.std_logic_1164.all;

entity led_wrapper_2 is
    port(
		 clk					: in STD_LOGIC;
       dir					: in STD_LOGIC;
       second_leds		: out STD_LOGIC_VECTOR (3 downto 0));
end led_wrapper_2;


architecture behv of led_wrapper_2 is
    component led_flash_2
		 port(
		 clk				: in STD_LOGIC;
       dir				: in STD_LOGIC;
       second_leds	: out STD_LOGIC_VECTOR (3 downto 0));
    end component led_flash_2;

begin 
 
led_flash_inst_2: led_flash_2
 port map (
   clk   => clk, 
   dir   => dir, 
   second_leds  => second_leds);

end behv;