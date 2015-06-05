library IEEE;
use IEEE.std_logic_1164.all;

entity pr_cb_interface is 
    port( 
		sreset			:in STD_LOGIC;
		clk				:in STD_LOGIC;
		pr_start			:in STD_LOGIC;
		pr_data			:in STD_LOGIC_VECTOR(15 downto 0);
		pr_ready			:out  STD_LOGIC;
		pr_error			:out  STD_LOGIC;
		pr_done			:out  STD_LOGIC;
		crc_error		:out  STD_LOGIC;
		really_done		:out  STD_LOGIC;
		ready_for_pr	:out  STD_LOGIC);

end pr_cb_interface;


architecture behv of pr_cb_interface is
    component pr_cb_states
		 port( sreset			:in STD_LOGIC;
				 clk				:in STD_LOGIC;
				 pr_start		:in STD_LOGIC;		 
				 pr_ready		:in STD_LOGIC;
				 really_done	:out STD_LOGIC;
				 ready_for_pr	:out STD_LOGIC;
				 pr_request		:out STD_LOGIC;
				 pr_error		:in STD_LOGIC;
				 crc_error		:in STD_LOGIC;
				 pr_done			:in STD_LOGIC);
    end component pr_cb_states;
	 
 -- Hardware PR control blocks	(following 2) 
    component cyclonev_prblock
		 port( clk				:in STD_LOGIC;
				 corectl			:in STD_LOGIC;		 
				 prrequest		:in STD_LOGIC;
				 data				:in STD_LOGIC_VECTOR(15 downto 0);
				 error 			:out STD_LOGIC;
				 ready 			:out STD_LOGIC;
				 done 			:out STD_LOGIC);
    end component cyclonev_prblock;
	 
    component cyclonev_crcblock
		 port( clk			:in STD_LOGIC;
				 shiftnld	:in STD_LOGIC;		 
				 crcerror 	:out STD_LOGIC);	 
    end component cyclonev_crcblock;

signal pr_request 		: STD_LOGIC;
signal crc_error_w 		: STD_LOGIC;
signal crc_error_reg 	: STD_LOGIC;
signal pr_ready_w			: STD_LOGIC;
signal pr_done_w			: STD_LOGIC;
signal pr_error_w			: STD_LOGIC;
--signal correct				: STD_LOGIC := '1';

begin

pr_ready 	<= pr_ready_w;
pr_done		<= pr_done_w;
pr_error 	<= pr_error_w;
crc_error 	<=	crc_error_w;

pr_cb_states_inst : pr_cb_states
port map (	sreset 			=> sreset,
				clk 				=> clk,
				pr_start 		=> pr_start,
				pr_ready 		=> pr_ready_w,
				really_done 	=> really_done,
				ready_for_pr 	=> ready_for_pr,
				pr_request 		=> pr_request,
				pr_error 		=> pr_error_w,
				crc_error 		=> crc_error_w,
				pr_done 			=> pr_done_w);

cyclonev_prblock_inst : cyclonev_prblock
port map (	clk 			=> clk,
				corectl 		=> '1', -- 1 to donate PR from core
				prrequest 	=> pr_request,
				data 			=> pr_data,
				error 		=> pr_error_w,
				ready 		=> pr_ready_w,
				done 			=> pr_done_w);

				
cyclonev_crcblock_inst : cyclonev_crcblock
port map (	clk 			=> clk,
				shiftnld 	=> '1',
				crcerror 	=> crc_error_w);
			
		

 process(clk) begin
   if clk'event and clk = '1' then	
		if sreset = '1' then
			crc_error_reg <= '0';
		else
			crc_error_reg <= crc_error_w;
		end if;
	end if;	
end process;	
end behv;				