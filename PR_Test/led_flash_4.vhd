library IEEE;
use IEEE.std_logic_1164.all;

entity led_flash is
    port(
       clk	: in STD_LOGIC;
       dir	: in STD_LOGIC;		 
       leds	: out STD_LOGIC_VECTOR (3 downto 0));
end led_flash;

architecture behv of led_flash is

	constant max_count : natural := 50000000;
		 
 
begin 

    led : process(clk)
        variable count : natural range 0 to max_count;
    begin
        if rising_edge(clk) then
			if dir = '1' then
            if count < max_count/2 then
                count := count + 1;
                leds <= "1111";
            elsif count < max_count then
                leds <= "0000";
                count := count + 1;
            else
                leds <= "1111";
                count := 0;
            end if;
			 else
            if count < (max_count/2) then
                count := count + 1;
                leds <= "1001";
            elsif count < max_count then
                leds <= "0110";
                count := count + 1;
            else
                leds <= "1001";
                count := 0;
            end if;			 
        end if;
		 end if; 
    end process led; 

end behv;
	 