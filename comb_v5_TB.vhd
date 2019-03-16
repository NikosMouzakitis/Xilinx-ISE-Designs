LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY comb_v5_TB IS
END comb_v5_TB;
 
ARCHITECTURE behavior OF comb_v5_TB IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT comb_v5
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
 	--Outputs
   signal z : std_logic;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: comb_v5 PORT MAP (
          x => x,
          y => y,
          z => z
        );
   -- Stimulus process
   stim_proc: process
   begin		
      
		x <= '0';
		y <= '0';
		wait for 100 ns;
		
      x <= '0';
		y <= '1';
		wait for 100 ns;
		
      x <= '1';
		y <= '0';
		wait for 100 ns;
		
      x <= '1';
		y <= '1';
		wait for 100 ns;

      wait;
		
   end process;

END;