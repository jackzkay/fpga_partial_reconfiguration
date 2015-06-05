library IEEE;
use IEEE.std_logic_1164.all;

entity pr_user_host is
    port(	areset			: in STD_LOGIC;
		     clk					: in STD_LOGIC;
		     channel			: in STD_LOGIC;
		     allow_pr_start	: in STD_LOGIC;

			  -- Outputs
		     testing_done		: out STD_LOGIC; 
		     pr_freeze			: out STD_LOGIC; 
		     error_flag_pr	: out STD_LOGIC; 
		     really_done		: out STD_LOGIC);

end pr_user_host;

architecture behv of pr_user_host is
    component pr_states     
	 port( 
			clk				: in STD_LOGIC;
			pr_error			: in STD_LOGIC;			
			crc_error		: in STD_LOGIC;
			pr_really_done	: in STD_LOGIC;
			sys_reset		: in STD_LOGIC;
			ready_for_pr	: in STD_LOGIC;			
			allow_pr_start	: in STD_LOGIC;
			
			rqst_cont		: out STD_LOGIC; 
			pr_start			: out STD_LOGIC; 
			pr_freeze		: out STD_LOGIC; 
			testing_done	: out STD_LOGIC;
			error_flag_pr	: out STD_LOGIC);
	 end component pr_states;
	 
	 component pr_engine
	 port( 
		sreset			: in STD_LOGIC;
		clk				: in STD_LOGIC;
		pr_start			: in STD_LOGIC;
		channel			: in STD_LOGIC;
		allow_pr_start	: in STD_LOGIC;

		crc_error		: out STD_LOGIC;
		ready_for_pr	: out  STD_LOGIC;		
		really_done		: out  STD_LOGIC;		
		pr_error			: out  STD_LOGIC);	 
	 end component pr_engine;
   
	signal pr_start 			: STD_LOGIC;
	signal ready_for_pr 		: STD_LOGIC;
	signal pr_error 			: STD_LOGIC;
	signal crc_error 			: STD_LOGIC;
	signal really_done_w  	: STD_LOGIC;


begin

really_done <= really_done_w;

pr_states_inst : pr_states
port map(
      sys_reset      => areset,         	
      clk            => clk,
      pr_really_done => really_done_w,
      ready_for_pr   => ready_for_pr,
		pr_freeze      => pr_freeze,
      pr_start       => pr_start,
      crc_error      => crc_error,
      pr_error       => pr_error,
      testing_done   => testing_done,
      error_flag_pr  => error_flag_pr,
      allow_pr_start => allow_pr_start );
		
pr_engine_inst : pr_engine
port map(      
		sreset          => areset,
      clk             => clk,
      channel         => channel,
      pr_start        => pr_start,
      crc_error       => crc_error,
      pr_error        => pr_error,
      really_done  	 => really_done_w,
      ready_for_pr    => ready_for_pr,
      allow_pr_start  => allow_pr_start );


end behv;