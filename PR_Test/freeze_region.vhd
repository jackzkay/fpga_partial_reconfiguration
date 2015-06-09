library IEEE;
use IEEE.std_logic_1164.all;

entity freeze_region is
    port( 	clk				: in STD_LOGIC;
				dir				: in STD_LOGIC;		 
				freeze			: in STD_LOGIC;
				leds				: out STD_LOGIC_VECTOR (3 downto 0);
				second_leds		: out STD_LOGIC_VECTOR (3 downto 0)
				);
end freeze_region;


architecture behv of freeze_region is
    component led_wrapper
			port(
			clk	: in STD_LOGIC;
			dir	: in STD_LOGIC;		 
			leds	: out STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component led_wrapper_2
			port(
			clk	: in STD_LOGIC;
			dir	: in STD_LOGIC;		 
			second_leds	: out STD_LOGIC_VECTOR (3 downto 0));
	end component;

	signal dir_sync: STD_LOGIC;			

begin 

led_wrapper_inst: led_wrapper
 port map (
   clk   => clk, 
   dir   => dir_sync, 
   leds  => leds);
	
led_wrapper_inst_2: led_wrapper_2
 port map (
   clk   => clk, 
   dir   => dir_sync, 
   second_leds  => second_leds);


 process(clk) begin
   if clk'event and clk = '1' then
     if freeze = '1' then
        else dir_sync <= dir;
     end if;
   end if;
 end process;

end behv;
