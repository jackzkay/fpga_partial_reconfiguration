library IEEE;
use IEEE.std_logic_1164.all;

entity PR_test_top is
    port( 
	 
			--Button to start PR
			PR1_button			: in STD_LOGIC;

			
			--DIP switch to select PR_bitstream
			dir_switch_1		: in STD_LOGIC;
			
			--DIP switch to change blinking mode 
			dir_switch_2		: in STD_LOGIC;
			
			
			system_clock		: in STD_LOGIC;
			PR_reset_button	: in STD_LOGIC;
			
			PR_done_led			: out STD_LOGIC; 
			PR_error_led		: out STD_LOGIC;			
			LED					: out STD_LOGIC_VECTOR (7 downto 0);
			
			disp_hex0			: out STD_LOGIC_VECTOR (6 downto 0); -- 7-bit decoded output 7-Segment display
			disp_hex1			: out STD_LOGIC_VECTOR (6 downto 0);
			disp_hex2			: out STD_LOGIC_VECTOR (6 downto 0);
			disp_hex3			: out STD_LOGIC_VECTOR (6 downto 0);
			disp_hex4			: out STD_LOGIC_VECTOR (6 downto 0);
			disp_hex5			: out STD_LOGIC_VECTOR (6 downto 0)
		);
			
end PR_test_top;

architecture behv of PR_test_top is
    component freeze_region
		 port( clk			:in STD_LOGIC;
			dir				:in STD_LOGIC;		 
			freeze			:in STD_LOGIC;
			leds				:out STD_LOGIC_VECTOR (3 downto 0);
			second_leds		:out STD_LOGIC_VECTOR (3 downto 0)
			);
    end component freeze_region;
	 
	component pr_user_host is
    port(	areset			: in STD_LOGIC;
		     clk					: in STD_LOGIC;
		     channel			: in STD_LOGIC;
		     allow_pr_start	: in STD_LOGIC;

			  -- Outputs
		     testing_done		: out STD_LOGIC; 
		     pr_freeze			: out STD_LOGIC; 
		     error_flag_pr	: out STD_LOGIC; 
		     really_done		: out STD_LOGIC);
	end component pr_user_host;
	
	component ticker_disp is
		 port( clk					: in STD_LOGIC;
				disp_hex0			: out STD_LOGIC_VECTOR (6 downto 0);
				disp_hex1			: out STD_LOGIC_VECTOR (6 downto 0);
				disp_hex2			: out STD_LOGIC_VECTOR (6 downto 0);
				disp_hex3			: out STD_LOGIC_VECTOR (6 downto 0);
				disp_hex4			: out STD_LOGIC_VECTOR (6 downto 0);
				disp_hex5			: out STD_LOGIC_VECTOR (6 downto 0)
			);
    end component ticker_disp;
	
	-- ****************** Missing ***********************
	--	component for LED 3-0
	-- clk					: in STD_LOGIC;
	--	LED					: out STD_LOGIC_VECTOR (3 downto 0));

	
--signal max_count:integer	:= 300000000; 		-- 08.06.2015 Ticker
--signal count:integer 		:=0;					-- 08.06.2015 Ticker
signal pr_freeze_reg 		: STD_LOGIC;
signal pr_freeze 				: STD_LOGIC;
signal channel 				: STD_LOGIC;
signal done_w 					: STD_LOGIC;
signal pr_freeze_reg1 		: STD_LOGIC;
signal really_done 	 		: STD_LOGIC;
signal error_flag_pr_w		: STD_LOGIC;
	 
begin 
channel <= dir_switch_1;
 
freeze_region_inst: freeze_region
 port map (
   clk   	=> system_clock,
   freeze 	=> '0', --pr_freeze,	
   dir   	=> dir_switch_2, 
   leds  	=> LED(7 downto 4),
	second_leds => LED(3 downto 0)
	);

pr_user_host_inst : pr_user_host	
port map (
      areset         => PR_reset_button,
      clk            => system_clock,
      testing_done   => done_w,
      pr_freeze      => pr_freeze,
      error_flag_pr  => error_flag_pr_w,
      allow_pr_start => PR1_button,
      channel        => channel,
      really_done    => really_done);

ticker_inst: ticker_disp
 port map (
   clk   	   => system_clock,
	disp_hex0 	=> disp_hex0,	
	disp_hex1 	=> disp_hex1,	
	disp_hex2 	=> disp_hex2,	
	disp_hex3 	=> disp_hex3,	
	disp_hex4 	=> disp_hex4,	
	disp_hex5 	=> disp_hex5
   );
 
 process(system_clock) begin
	if rising_edge(system_clock) then
		PR_done_led  		<= not done_w; 
		pr_freeze_reg1    <= pr_freeze;		
		PR_error_led 		<= not error_flag_pr_w;
	end if;	
end process;

		
end behv;