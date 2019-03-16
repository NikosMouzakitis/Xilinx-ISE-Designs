 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 
entity comb_v4 is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
			  z : out  STD_LOGIC);
end comb_v4;

architecture Behavioral of comb_v4 is
	  signal int1:std_logic;
begin
	
	process(x,y)
		begin
		int1 <= not x;
		z <= y and int1;		
	end process;
end Behavioral;

