 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 
entity comb_v5 is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  z : out  STD_LOGIC);
end comb_v5;
 
 
architecture Behavioral of comb_v5 is
	  	signal int1:std_logic; 
begin
	
	process(x,y)
		 
		begin
		 
		 
		--int1 <= ((not(y)) AND x);
		--z <= int1 or y;
		 	z <= ( (not(y) and x) or y);
	end process;
end Behavioral;



