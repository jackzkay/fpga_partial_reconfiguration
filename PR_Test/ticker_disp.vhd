library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ticker_disp is
port (
			clk : in std_logic;
			disp_hex0 : out std_logic_vector(6 downto 0);  -- 7 bit decoded output.
			disp_hex1 : out std_logic_vector(6 downto 0);  -- 7 bit decoded output.
			disp_hex2 : out std_logic_vector(6 downto 0);  -- 7 bit decoded output.
			disp_hex3 : out std_logic_vector(6 downto 0);  -- 7 bit decoded output.
			disp_hex4 : out std_logic_vector(6 downto 0);  -- 7 bit decoded output.
			disp_hex5 : out std_logic_vector(6 downto 0)   -- 7 bit decoded output.
    );
end ticker_disp;

architecture behavior of ticker_disp is
signal max_count:integer := 300000000;
signal count:integer := 0;
begin
process(clk) 
variable count : natural range 0 to max_count;
begin
if (clk='1') then count := count + 1;

if count < max_count/7 then
		disp_hex5 <="0101111";  -- 'r'
		disp_hex4 <="1100011";  -- 'u'
		disp_hex3 <="0101011";  -- 'n'
		disp_hex2 <="1111111"; 
		disp_hex1 <="1111111"; 
		disp_hex0 <="1111111";  
		--count := count + 1;		
elsif (count > max_count/7 and count < 2*(max_count/7)) then
      disp_hex4 <="0101111";  -- 'r'
		disp_hex3 <="1100011";  -- 'u'
		disp_hex2 <="0101011";  -- 'n'
		disp_hex1 <="1111111"; 
		disp_hex0 <="1111111"; 
		disp_hex5 <="1111111";  
		--count := count + 1;
elsif (count > 2*(max_count/7) and count < 3*(max_count/7)) then
      disp_hex3 <="0101111";  -- 'r'
		disp_hex2 <="1100011";  -- 'u'
		disp_hex1 <="0101011";  -- 'n'
		disp_hex0 <="1111111"; 
		disp_hex5 <="1111111"; 
		disp_hex4 <="1111111";  
		--count := count + 1;
elsif (count > 3*(max_count/7) and count < 4*(max_count/7)) then
      disp_hex2 <="0101111";  -- 'r'
		disp_hex1 <="1100011";  -- 'u'
		disp_hex0 <="0101011";  -- 'n'
		disp_hex5 <="1111111"; 
		disp_hex4 <="1111111"; 
		disp_hex3 <="1111111";  
		--count := count + 1;
elsif (count > 4*(max_count/7) and count < 5*(max_count/7)) then
      disp_hex1 <="0101111";  -- 'r'
		disp_hex0 <="1100011";  -- 'u'
		disp_hex5 <="0101011";  -- 'n'
		disp_hex4 <="1111111"; 
		disp_hex3 <="1111111"; 
		disp_hex2 <="1111111";  
		
elsif (count > 5*(max_count/7)and count < 6*(max_count/7)) then
      disp_hex0 <="0101111";  -- 'r'
		disp_hex5 <="1100011";  -- 'u'
		disp_hex4 <="0101011";  -- 'n'
		disp_hex3 <="1111111"; 
		disp_hex2 <="1111111"; 
		disp_hex1 <="1111111";  
elsif (count > 6*(max_count/7)) then
      disp_hex0 <="1111111";  -- 'r'
		disp_hex5 <="1111111";  -- 'u'
		disp_hex4 <="1111111";  -- 'n'
		disp_hex3 <="1111111"; 
		disp_hex2 <="1111111"; 
		disp_hex1 <="1111111";  
		count :=0;		
	
	end if;
	
end if;
end process;

end behavior;