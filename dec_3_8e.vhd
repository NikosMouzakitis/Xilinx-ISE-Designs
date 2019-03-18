-- Engineer: Mouzakitis Nikolaos 
-- Create Date:    00:28:23 03/18/2019 
-- Module Name:    dec_3_8e - Behavioral 
-- Description: A 3 to 8 decoder with enable. 
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.all;

entity dec_3_8e is
    Port ( 
		   enable: in STD_LOGIC;
		   n2 : in  STD_LOGIC;
           n1 : in  STD_LOGIC;
           n0 : in  STD_LOGIC;
           o7 : out  STD_LOGIC;
           o6 : out  STD_LOGIC;
           o5 : out  STD_LOGIC;
           o4 : out  STD_LOGIC;
           o3 : out  STD_LOGIC;
           o2 : out  STD_LOGIC;
           o1 : out  STD_LOGIC;
           o0 : out  STD_LOGIC);
		   
end dec_3_8e;

architecture Behavioral of dec_3_8e is

begin
	dec24_up :entity work.dec_2_to_4(Behavioral)
		port map( i1 => n0, i0 => n1, en => n2, o3 => o7, o2 => o6, o1 => o5, o0 => o4);
	dec24_down :entity work.dec_2_to_4(Behavioral)
		port map( i1 => n0, i0 => n1, en => not(n2), o3 => o3, o2 => o2, o1 => o1, o0 => o0);
	
end Behavioral;