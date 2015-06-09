library IEEE;
use IEEE.std_logic_1164.all;

entity led_flash_2 is
    port(
       clk				: in std_logic;
       dir				: in STD_LOGIC;		 
       second_leds	: out STD_LOGIC_VECTOR (3 downto 0));
end led_flash_2;

architecture behv of led_flash_2 is

	constant max_count : natural := 50000000;
		 
 
begin 
	led_flash_2: process(clk)
		variable count : natural range 0 to max_count;
			begin
				if rising_edge(clk) then count := count +1;
					if dir = '1' then
						if (count < max_count/5) then													-- bleibt hier hängen und kommt nicht mehr raus.
							second_leds <= "0001";
--							count := count + 1;
						elsif (count > max_count/5 and count < 2*(max_count/5)) then
							second_leds <= "0010";
--							count := count + 1;
						elsif (count > 2*(max_count/5) and count < 3*(max_count/5)) then
							second_leds <= "0100";
--							count := count + 1;
						elsif (count > 3*(max_count/5) and count < 4*(max_count/5)) then
							second_leds <= "1000";
--							count := count + 1;
						else
							second_leds <= "0001";
							count := 0;
						end if;		
					else
						if count < max_count/5 then													-- bleibt hier hängen und kommt nicht mehr raus.
--							count := count + 1;
							second_leds <= "1000";
						elsif (count > max_count/5 and count < 2*(max_count/5)) then
							second_leds <= "0100";
--							count := count + 1;
						elsif (count > 2*(max_count/5) and count < 3*(max_count/5)) then
							second_leds <= "0010";
--							count := count + 1;
						elsif (count > 3*(max_count/5) and count < 4*(max_count/5)) then
							second_leds <= "0001";
--							count := count + 1;
						else
							second_leds <= "1000";
							count := 0;
						end if;			 
					end if;
				end if; 
	end process led_flash_2; 

end behv;
	 