library IEEE;
use IEEE.std_logic_1164.all;

entity pr_cb_states is
    port(
		sreset		: in STD_LOGIC;
		clk			: in STD_LOGIC;
		pr_start		: in STD_LOGIC;
		pr_error		: in STD_LOGIC;
		pr_ready		: in STD_LOGIC;
		pr_done		: in STD_LOGIC;
		crc_error	: in STD_LOGIC;
		
		-- Outputs
		really_done		: out STD_LOGIC;
		ready_for_pr	: out STD_LOGIC;
		pr_request		: out STD_LOGIC );
end pr_cb_states;

architecture behv of pr_cb_states is

	-- Build an enumerated type for the state machine
	constant DONE_TO_LAST_CLOCK : integer := 20;
	
	type state_type is ( IDLE,
								WAIT_FOR_PR_READY,
								SEND_PR_DATA,
								WAIT_DONE_TO_LAST_CLOCK,
								WAIT_PR_ERROR_TO_LAST_CLOCK,
								WAIT_CRC_ERROR_TO_LAST_CLOCK,
								PR_REQUEST_DONE);
	
	-- Register to hold the current state
	signal pr_state  : state_type;
	signal cnt_done_to_last_clock : integer;

begin
	-- Logic to advance to the next state
	process (clk, sreset)
	begin
		if sreset = '1' then
			pr_state <= IDLE;
	      ready_for_pr           <= '0';
	      pr_request             <= '0';
	      cnt_done_to_last_clock <= 0;
			
		elsif (rising_edge(clk)) then
	     pr_state               <= pr_state;
	     cnt_done_to_last_clock <= cnt_done_to_last_clock;

			case pr_state is
				when IDLE =>
					if pr_start = '1' then
						 pr_state <= WAIT_FOR_PR_READY;
						 cnt_done_to_last_clock <= 0;
						 pr_request <= '1';

					end if;
					
				when WAIT_FOR_PR_READY =>
				   ready_for_pr <= '0';
					if pr_ready = '1' then
						pr_state <= SEND_PR_DATA;
					end if;
					
				when SEND_PR_DATA=>
					if pr_done = '1' then
						 pr_state <= WAIT_DONE_TO_LAST_CLOCK;
						 pr_request <= '0';
						 
					elsif pr_error = '1' then
						pr_request <= '0';
						pr_state <= WAIT_PR_ERROR_TO_LAST_CLOCK;
					
					elsif crc_error = '1' then
						pr_request <= '0';
						pr_state <= WAIT_CRC_ERROR_TO_LAST_CLOCK;
					end if;
					
				when WAIT_DONE_TO_LAST_CLOCK =>
					if cnt_done_to_last_clock < (DONE_TO_LAST_CLOCK - 1) then
						cnt_done_to_last_clock <= cnt_done_to_last_clock + 1;
					elsif pr_done = '0' then
						pr_state <= PR_REQUEST_DONE;
					end if;
					
				when WAIT_PR_ERROR_TO_LAST_CLOCK =>
					if pr_error = '0' then
						pr_state <= IDLE;
					end if;	
					
				when WAIT_CRC_ERROR_TO_LAST_CLOCK =>
					if crc_error = '0' then
						pr_state <= IDLE;
					end if;	
					
				when PR_REQUEST_DONE =>
					pr_state <= IDLE;
				
				when others =>		   
					pr_state               <= IDLE;
					ready_for_pr           <= '0';
					pr_request             <= '0';
					cnt_done_to_last_clock <= 0;
					
			end case;
		end if;
	end process;
	
end behv;