library IEEE;
use IEEE.std_logic_1164.all;

entity rom_bitstream is 
    port( 
				sreset				: in STD_LOGIC; 
		      ready_for_pr		: in STD_LOGIC; 
		      clk					: in STD_LOGIC; 
		      pr_ready				: in STD_LOGIC; 
		      pr_any_status		: in STD_LOGIC; 
		      channel				: in STD_LOGIC;
		      allow_pr_start 	: in STD_LOGIC;
		      bit_data 			: out STD_LOGIC_VECTOR (15 downto 0)
		      );

end rom_bitstream;

architecture behv of rom_bitstream is
		component persona1_rom_pr
			port(		
				address 	: in integer range 0 to 1048575;
				clock		: in STD_LOGIC; 
				data		: out STD_LOGIC_VECTOR (15 downto 0));
		end component persona1_rom_pr;
	
		component persona2_rom_pr
			port(
				address 	: in integer range 0 to 1048575;
				clock		: in STD_LOGIC; 
				data		: out STD_LOGIC_VECTOR (15 downto 0));
		end component persona2_rom_pr;

	-- Build an enumerated type for the state machine
	type state_type is (IDLE, WAIT_FOR_READY, SET_BIT_DATA);
	
	-- Register to hold the current state
	signal state   			: state_type;
	signal persona1_data		: STD_LOGIC_VECTOR(15 downto 0);
	signal persona2_data		: STD_LOGIC_VECTOR(15 downto 0);
	signal address 			: integer range 0 to 1048575;

begin

persona1_rom_pr_inst : persona1_rom_pr
port map(	address 	=> address,
				clock	  	=> clk, 
				data		=> persona1_data
);
persona2_rom_pr_inst : persona2_rom_pr
port map(	address 	=> address,
				clock	  	=> clk, 
				data		=> persona2_data
);

	process (clk, sreset)
	begin
		if(rising_edge(clk)) then
			if channel = '1' then
				bit_data <= persona1_data; 
			else
				bit_data <= persona2_data;
			end if;
		end if;
	end process;
	
	-- Logic to advance to the next state
	process (clk, sreset)
	begin
		if sreset = '1' then
			state 	<= IDLE;
			address 	<= 0;
		elsif (rising_edge(clk)) then
			case state is
				when IDLE =>
					if (sreset = '0') and (ready_for_pr  = '1') then
						if allow_pr_start = '1' then
							state <= WAIT_FOR_READY;
						else
							state <=  IDLE;
						end if;
						
						address   <= 0;
					end if;
					
				when WAIT_FOR_READY =>
					if (sreset = '0') and (pr_ready = '1') then
					  address   <= address + 1;
					  state <= SET_BIT_DATA;
					end if;
					
				when SET_BIT_DATA =>
					if sreset = '0' then
						if pr_any_status = '0' then
							address   <= address + 1;
							state <= SET_BIT_DATA;
						else 
							address   <= address;
							state		 <= IDLE;						
						end if;
					end if;
						
				when others =>
					address   <= 0;
					state <= IDLE;
			end case;
		end if;
	end process;

end behv;		