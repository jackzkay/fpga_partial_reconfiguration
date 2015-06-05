library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity persona1_rom_pr is
	port(
		address 	: in integer range 0 to 1048575;
		clock		: in STD_LOGIC; 
		data		: out STD_LOGIC_VECTOR (15 downto 0)
	);
	
end persona1_rom_pr;

architecture behv of persona1_rom_pr is
component altsyncram

        generic (
                address_aclr_a  				: string := "NONE";
                clock_enable_input_a    	: string := "BYPASS";
                clock_enable_output_a  	: string := "BYPASS";
                intended_device_family  	: string := "Cyclone V";
                init_file       				: string := "persona1_rom_pr.mif";
                numwords_a      				: natural := 650000;
                operation_mode  				: string := "ROM";
                outdata_aclr_a  				: string := "NONE";
                outdata_reg_a   				: string := "CLOCK0";
                width_a							: natural := 16;
					 width_b							: natural := 1;
                width_byteena_a 				: natural := 1;
					 width_byteena_b				: natural := 1;
                widthad_a       				: natural := 20;
					 widthad_b						: natural := 1;
                lpm_hint        				: string := "ENABLE_RUNTIME_MOD=NO";
                lpm_type        				: string := "altsyncram"
        );
        port(
                aclr0   			:       in std_logic := '0';
                aclr1   			:       in std_logic := '0';
                address_a       	:       in std_logic_vector(widthad_a-1 downto 0);
                address_b       	:       in std_logic_vector(widthad_b-1 downto 0) := (others => '1');
                addressstall_a	:       in std_logic := '0';
                addressstall_b  	:       in std_logic := '0';
                byteena_a       	:       in std_logic_vector(width_byteena_a-1 downto 0) := (others => '1');
                byteena_b       	:       in std_logic_vector(width_byteena_b-1 downto 0) := (others => '1');
                clock0  			:       in std_logic := '1';
                clock1  			:       in std_logic := '1';
                clocken0        	:       in std_logic := '1';
                clocken1        	:       in std_logic := '1';
                clocken2        	:       in std_logic := '1';
                clocken3        	:       in std_logic := '1';
                data_a  			:       in std_logic_vector(width_a-1 downto 0) := (others => '1');
                data_b  			:       in std_logic_vector(width_b-1 downto 0) := (others => '1');
                eccstatus       	:       out std_logic_vector(2 downto 0);
                q_a     			:       out std_logic_vector(width_a-1 downto 0);
                q_b     			:       out std_logic_vector(width_b-1 downto 0);
                rden_a  			:       in std_logic := '1';
                rden_b  			:       in std_logic := '1';
                wren_a  			:       in std_logic := '0';
                wren_b  			:       in std_logic := '0'
        );
	  
end component;
begin
altsyncram_component : altsyncram
port map(
					 address_a  =>  std_logic_vector(to_unsigned(address, 20)),
                clock0 		=> 	clock,
                q_a 			=> 	data
);
end behv;
