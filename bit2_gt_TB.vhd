
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY bit2_gt_TB IS
END bit2_gt_TB;
 
ARCHITECTURE behavior OF bit2_gt_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit2_gt
    PORT(
         a1 : IN  std_logic;
         a0 : IN  std_logic;
         b1 : IN  std_logic;
         b0 : IN  std_logic;
         grt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic := '0';
   signal a0 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal b0 : std_logic := '0';

 	--Outputs
   signal grt : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit2_gt PORT MAP (
          a1 => a1,
          a0 => a0,
          b1 => b1,
          b0 => b0,
          grt => grt
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 

	  a1 <= '0';
	  a0 <= '0';
	  b1 <= '0';
	  b0 <= '0';
	  wait for 30 ns;

	  a1 <= '0';
	  a0 <= '0';
	  b1 <= '0';
	  b0 <= '1';
	  wait for 30 ns;

	  a1 <= '0';
	  a0 <= '0';
	  b1 <= '1';
	  b0 <= '0';
	  wait for 30 ns;
	  
	  a1 <= '0';
	  a0 <= '0';
	  b1 <= '1';
	  b0 <= '1';
	  wait for 30 ns;


	  a1 <= '0';
	  a0 <= '1';
	  b1 <= '0';
	  b0 <= '0';
	  wait for 30 ns;



	  a1 <= '0';
	  a0 <= '1';
	  b1 <= '0';
	  b0 <= '1';
	  wait for 30 ns;



	  a1 <= '0';
	  a0 <= '1';
	  b1 <= '1';
	  b0 <= '0';
	  wait for 30 ns;


	  a1 <= '0';
	  a0 <= '1';
	  b1 <= '1';
	  b0 <= '1';
	  wait for 30 ns;

	
	  a1 <= '1';
	  a0 <= '0';
	  b1 <= '0';
	  b0 <= '0';
	  wait for 30 ns;

	  
	  a0 <= '0';
	  b1 <= '0';
	  b0 <= '1';
	  wait for 30 ns;

	  
	  a0 <= '0';
	  b1 <= '1';
	  b0 <= '0';
	  wait for 30 ns;
	  
	   
	  a0 <= '0';
	  b1 <= '1';
	  b0 <= '1';
	  wait for 30 ns;


	   
	  a0 <= '1';
	  b1 <= '0';
	  b0 <= '0';
	  wait for 30 ns;



	 
	  a0 <= '1';
	  b1 <= '0';
	  b0 <= '1';
	  wait for 30 ns;



	  
	  a0 <= '1';
	  b1 <= '1';
	  b0 <= '0';
	  wait for 30 ns;


	 
	  a0 <= '1';
	  b1 <= '1';
	  b0 <= '1';
	  wait for 30 ns;

      wait;
   end process;

END;
