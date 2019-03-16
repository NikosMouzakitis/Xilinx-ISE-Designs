 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 

entity comparator_v7 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end comparator_v7;

architecture Behavioral of comparator_v7 is
	signal p0, p1: std_logic;
begin
 
 p0 <= not(a) and not(b);
 p1 <= a and b;
 c <= p0 or p1;
 
end Behavioral;

