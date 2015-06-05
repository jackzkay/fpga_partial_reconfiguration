entity led_flash is
    port(
       clk:in STD_LOGIC;
       leds: out STD_LOGIC_VECTOR (2 downto 0));
end led_flash;

architecture behv of led_flash is

		constant max_count : natural := 5555555555;
		signal 
 
begin 

    led : process(clk)
        variable count : natural range 0 to max_count;
    begin
        if rising_edge(refclk) then
            if count < max_count/2 then
                count := count + 1;
                led <= '111';
            elsif count < max_count then
                led <= '000';
                count := count + 1;
            else
                led <= '111';
                count := 0;
            end if;
        end if;
    end process led; 

end
	 