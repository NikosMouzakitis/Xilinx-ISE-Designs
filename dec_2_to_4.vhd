--2 to 4 decoder with enable desrciption
--author: Mouzakitis Nikolaos
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	USE ieee.std_logic_arith.all;
	USE ieee.std_logic_unsigned.all;
	use ieee.std_logic_textio.all; --in order to use hread.
	
	library work;
	use work.all;

entity dec_2_to_4 is
    Port ( i1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
		   en : in std_logic;
           o3 : out  STD_LOGIC;
           o2 : out  STD_LOGIC;
           o1 : out  STD_LOGIC;
           o0 : out  STD_LOGIC );
end dec_2_to_4;

architecture Behavioral of dec_2_to_4 is

begin
  			o3 <= i0 and i1 and en;
			o2 <= i0 and not(i1) and en;
			o1 <= i1 and not(i0) and en;  
			o0 <= not(i1) and not(i0) and en; 
		 
end Behavioral; 

