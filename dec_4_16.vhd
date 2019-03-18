-- Engineer: Mouzakitis Nikolaos
-- Create Date:    03:06:38 03/18/2019  
-- Module Name:    dec_4_16 - Behavioral 
-- Description: A 4 to 16 decoder, created by four 2 to 4 decoders with enable and logical gates. 
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dec_4_16 is
 Port (    
		   n3 : in  STD_LOGIC;
           n2 : in  STD_LOGIC;
		   n1 : in  STD_LOGIC;
           n0 : in  STD_LOGIC;
		   o15 : out  STD_LOGIC;
           o14: out  STD_LOGIC;
           o13 : out  STD_LOGIC;
		   o12: out  STD_LOGIC;
           o11 : out  STD_LOGIC;
           o10 : out  STD_LOGIC;
		   o9 : out  STD_LOGIC;
           o8 : out  STD_LOGIC;
           o7 : out  STD_LOGIC;
		   o6 : out  STD_LOGIC;
           o5 : out  STD_LOGIC;
           o4 : out  STD_LOGIC;
		   o3 : out  STD_LOGIC;
           o2 : out  STD_LOGIC;
           o1 : out  STD_LOGIC;
           o0 : out  STD_LOGIC );
end dec_4_16;

architecture Behavioral of dec_4_16 is

begin
	dec24_one :entity work.dec_2_to_4(Behavioral)
		port map( i1 => n0, i0 => n1, en => n3 and n2, o3 => o15, o2 => o14, o1 => o13, o0 => o12);
	dec24_two :entity work.dec_2_to_4(Behavioral)
		port map( i1 => n0, i0 => n1, en => n3 and not(n2), o3 => o11, o2 => o10, o1 => o9, o0 => o8);
	dec24_three :entity work.dec_2_to_4(Behavioral)
		port map( i1 => n0, i0 => n1, en => n2 and not(n3), o3 => o7, o2 => o6, o1 => o5, o0 => o4);
	dec24_four :entity work.dec_2_to_4(Behavioral)
		port map( i1 => n0, i0 => n1, en => not(n3) and not(n2), o3 => o3, o2 => o2, o1 => o1, o0 => o0);
end Behavioral;

