LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY comb_v6_TB IS
END comb_v6_TB;
 
ARCHITECTURE behavior OF comb_v6_TB IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT comb_v6
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
			f : OUT  std_logic 
        );
    END COMPONENT;
    
   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';
	signal f: std_logic ;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: comb_v6 PORT MAP (
          x => x,
          y => y,
          z => z,
			 f => f
        );
   -- Stimulus process
   stim_proc: process
   begin		
      x <= '0';
		y <= '0';
		z <= '0';
		wait for 100 ns;
		
		x <= '0';
		y <= '0';
		z <= '1';
		wait for 100 ns;
		
		x <= '0';
		y <= '1';
		z <= '0';
		wait for 100 ns;
		
		x <= '0';
		y <= '1';
		z <= '1';
		wait for 100 ns;
		
      x <= '1';
		y <= '0';
		z <= '0';
		wait for 100 ns;
		
		x <= '1';
		y <= '0';
		z <= '1';
		wait for 100 ns;
		
		x <= '1';
		y <= '1';
		z <= '0';
		wait for 100 ns;
		
		x <= '1';
		y <= '1';
		z <= '1';
		wait for 100 ns;
      wait;
		
   end process;

END;