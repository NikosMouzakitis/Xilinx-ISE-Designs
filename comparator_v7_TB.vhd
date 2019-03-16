
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
 
ENTITY comparator_v7_TB IS
END comparator_v7_TB;
 
ARCHITECTURE behavior OF comparator_v7_TB IS 
 
    
    COMPONENT comparator_v7
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_v7 PORT MAP (
          a => a,
          b => b,
          c => c
        );
   -- Stimulus process
   stim_proc: process
   begin		
      a <= '0';
		b <= '0';
      wait for 100 ns;	
		a <= '0';
		b <= '1';
      wait for 100 ns;	
		a <= '1';
		b <= '0';
      wait for 100 ns;	
		a <= '1';
		b <= '1';
      wait for 100 ns;	
		
 
      wait;
   end process;

END;
