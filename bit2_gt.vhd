
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bit2_gt is
    Port ( a1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           grt : out  STD_LOGIC);
end bit2_gt;

architecture Behavioral of bit2_gt is

begin

	grt <= ( (not(a1) and a0 and (not(b1)) and (not(b0))) 
		 or  ( a1 and not(a0) and not(b1))
		 or	 ( a1 and a0 and not(b1))
		 or	 ( a1 and a0 and b1 and not(b0))
				); 
end Behavioral; 

