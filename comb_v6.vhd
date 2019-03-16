 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comb_v6 is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  z : in  STD_LOGIC;
			  f : out STD_LOGIC);
end comb_v6;

architecture Behavioral of comb_v6 is
	  
begin
	
	process(x,y)
		begin
			
		f <= (((not x) and y) or (y or z)) ;		

	end process;
end Behavioral;