-- Author: Mouzakitis Nikolaos, 2019
-- a 4bit greater than gate using AND,OR, 2bit equality comparator and 2 2bit greater than gates.
-- Exercise from FPGA Protoryping by VHDL Examples.
-- End of chapter 2.(exercise 2.9.1)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.all;


entity bit4_gt is
    Port ( a3 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
           b3 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           gt4 : out  STD_LOGIC);
end bit4_gt;

architecture Behavioral of bit4_gt is
	signal e0, e1 , e2: std_logic;
	
begin
	-- one 2 bit equality comparator gate.
	eq_bit :entity work.comp_2_bit(Behavioral)
		port map( a0 => a2, a1 => a3, b0 => b2, b1=>b3, eq => e0);
	--	two 2 bit greater than gates.
	gt_one: entity work.bit2_gt(Behavioral)
		port map(a1 => a3, a0 => a2, b1 => b3, b0=>b2, grt => e1);
	gt_two: entity work.bit2_gt(Behavioral)
		port map(a1 => a1, a0 => a0, b1 => b1, b0=>b0, grt => e2);
		
	gt4 <= ( (e0 and e2) or e1);
		
end Behavioral;