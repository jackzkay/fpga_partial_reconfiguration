library IEEE;
use IEEE.std_logic_1164.all;

entity pr_engine is
    port(
		sreset			: in STD_LOGIC;
		clk				: in STD_LOGIC;
		pr_start			: in STD_LOGIC;
		channel			: in STD_LOGIC;
		allow_pr_start	: in STD_LOGIC;
		
		crc_error		: out STD_LOGIC;
		ready_for_pr	: out  STD_LOGIC;		
		really_done		: out  STD_LOGIC;		
		pr_error			: out  STD_LOGIC		
	 );

end pr_engine;

architecture behv of pr_engine is
    component rom_bitstream
port(	sreset			: in STD_LOGIC;
		channel			: in STD_LOGIC;
	   ready_for_pr 	: in STD_LOGIC;
		clk 				: in STD_LOGIC;
		bit_data 		: out STD_LOGIC_VECTOR(15 downto 0);
		pr_ready 		: in  STD_LOGIC;
		pr_any_status 	: in  STD_LOGIC;
		allow_pr_start : in STD_LOGIC);	 
	 end component;
	 component pr_cb_interface
	     port( 
				sreset			: in STD_LOGIC;
				clk				: in STD_LOGIC;
				pr_start			: in STD_LOGIC;
				pr_data			: in STD_LOGIC_VECTOR(15 downto 0);
				pr_ready			: out  STD_LOGIC;
				pr_error			: out  STD_LOGIC;
				pr_done			: out  STD_LOGIC;
				crc_error		: out  STD_LOGIC;
				really_done		: out  STD_LOGIC;
				ready_for_pr	: out  STD_LOGIC);
		end component;

		signal bit_data 				: STD_LOGIC_VECTOR(15 downto 0);
		signal pr_ready 				: STD_LOGIC;
		signal pr_done 				: STD_LOGIC;
		signal pr_any_status  		: STD_LOGIC;
		signal buff_crc_error 		: STD_LOGIC;
		signal buff_pr_error 		: STD_LOGIC;
		signal buff_ready_for_pr	: STD_LOGIC;

begin	 
pr_any_status 	<= pr_done or buff_crc_error or buff_pr_error;	 
pr_error			<= buff_pr_error;
crc_error 		<= buff_crc_error;
ready_for_pr   <= buff_ready_for_pr;

rom_bitstream_inst : rom_bitstream
 port map (
 	sreset         => sreset,
	channel        => channel,
	ready_for_pr   => buff_ready_for_pr,
	clk            => clk,
	bit_data       => bit_data, 
	pr_ready       => pr_ready,
	pr_any_status  => pr_any_status,
	allow_pr_start => allow_pr_start
);

pr_cb_interface_inst : pr_cb_interface
port map(
		sreset 		 => sreset,
		clk			 => clk,
		pr_start     => pr_start,
		pr_data		 => bit_data,
		pr_ready		 => pr_ready,
		pr_error		 => buff_pr_error,
		pr_done		 => pr_done,
		crc_error	 => buff_crc_error,
		really_done  => really_done,
		ready_for_pr => buff_ready_for_pr);
		
end behv;