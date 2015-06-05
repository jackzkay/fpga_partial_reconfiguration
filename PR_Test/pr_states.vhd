library IEEE;
use IEEE.std_logic_1164.all;

entity pr_states is
    port( 
			allow_pr_start	: in STD_LOGIC;
			clk				: in STD_LOGIC;
			pr_error			: in STD_LOGIC;
			crc_error		: in STD_LOGIC;
			pr_really_done	: in STD_LOGIC;
			sys_reset		: in STD_LOGIC;
			ready_for_pr	: in STD_LOGIC;
			
			rqst_cont		: out STD_LOGIC; 
			pr_start			: out STD_LOGIC; 
			pr_freeze		: out STD_LOGIC; 
			testing_done	: out STD_LOGIC;
			error_flag_pr	: out STD_LOGIC);			
end pr_states;


architecture rtl of pr_states is

	-- Build an enumerated type for the state machine
	type state_type is ( IDLE,
								PR,
								DONE,
								ERROR_PR);
	
	-- Register to hold the current state
	signal test_state   : state_type;
begin
	-- Logic to advance to the next state
	process (clk, sys_reset)
	begin
		if sys_reset = '1' then
			test_state 		<= IDLE;
			pr_freeze 		<= '0';
			pr_start			<= '0';
			testing_done	<= '0';
			error_flag_pr 	<= '0';
		elsif (rising_edge(clk)) then
			
			case test_state is
			
				when IDLE=>
					if allow_pr_start = '1' then
						test_state 	<= PR;
						rqst_cont 	<= '0';
					else
						test_state 	<= IDLE;
					end if;
					
				when PR=>
					if (ready_for_pr = '1')  and (pr_really_done = '0')  then
						pr_freeze   <= '1';
						pr_start		<= '1';
					elsif pr_really_done = '1'  then
						test_state <= DONE;
						if (pr_error = '1')  or (crc_error = '1')  then
							test_state <= ERROR_PR;
						end if;
					end if;
					
				when DONE=>
					pr_start 		<=  '0';
					testing_done 	<= '1';
					test_state 		<= IDLE;
					pr_freeze		<= '0';
					error_flag_pr 	<= '0';					
					
				when ERROR_PR =>
					pr_start 		<= '0';
					testing_done 	<= '0';					
					error_flag_pr 	<= '1';
					test_state 	<= IDLE;
					rqst_cont 	<=  '1';
					pr_freeze <= '0';

			end case;
		end if;
	end process;
end rtl;	