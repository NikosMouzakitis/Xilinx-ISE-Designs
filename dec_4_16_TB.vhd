
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY dec_4_16_TB IS
END dec_4_16_TB;
 
ARCHITECTURE behavior OF dec_4_16_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec_4_16
    PORT(
         n3 : IN  std_logic;
         n2 : IN  std_logic;
         n1 : IN  std_logic;
         n0 : IN  std_logic;
         o15 : OUT  std_logic;
         o14 : OUT  std_logic;
         o13 : OUT  std_logic;
         o12 : OUT  std_logic;
         o11 : OUT  std_logic;
         o10 : OUT  std_logic;
         o9 : OUT  std_logic;
         o8 : OUT  std_logic;
         o7 : OUT  std_logic;
         o6 : OUT  std_logic;
         o5 : OUT  std_logic;
         o4 : OUT  std_logic;
         o3 : OUT  std_logic;
         o2 : OUT  std_logic;
         o1 : OUT  std_logic;
         o0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal n3 : std_logic := '0';
   signal n2 : std_logic := '0';
   signal n1 : std_logic := '0';
   signal n0 : std_logic := '0';

 	--Outputs
   signal o15 : std_logic;
   signal o14 : std_logic;
   signal o13 : std_logic;
   signal o12 : std_logic;
   signal o11 : std_logic;
   signal o10 : std_logic;
   signal o9 : std_logic;
   signal o8 : std_logic;
   signal o7 : std_logic;
   signal o6 : std_logic;
   signal o5 : std_logic;
   signal o4 : std_logic;
   signal o3 : std_logic;
   signal o2 : std_logic;
   signal o1 : std_logic;
   signal o0 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec_4_16 PORT MAP (
          n3 => n3,
          n2 => n2,
          n1 => n1,
          n0 => n0,
          o15 => o15,
          o14 => o14,
          o13 => o13,
          o12 => o12,
          o11 => o11,
          o10 => o10,
          o9 => o9,
          o8 => o8,
          o7 => o7,
          o6 => o6,
          o5 => o5,
          o4 => o4,
          o3 => o3,
          o2 => o2,
          o1 => o1,
          o0 => o0
        );

   -- Stimulus process
   stim_proc: process
   begin		
	--insert stimulues here.
	  n3 <= '0'; n2 <= '0'; n1 <= '0'; n0 <= '0'; wait for 20 ns;
	  n3 <= '0'; n2 <= '0'; n1 <= '0'; n0 <= '1'; wait for 20 ns;
	  
	  n3 <= '0'; n2 <= '0'; n1 <= '1'; n0 <= '0'; wait for 20 ns;
	  n3 <= '0'; n2 <= '0'; n1 <= '1'; n0 <= '1'; wait for 20 ns;
	  
	  n3 <= '0'; n2 <= '1'; n1 <= '0'; n0 <= '0'; wait for 20 ns;
	  n3 <= '0'; n2 <= '1'; n1 <= '0'; n0 <= '1'; wait for 20 ns;
	  
	  n3 <= '0'; n2 <= '1'; n1 <= '1'; n0 <= '0'; wait for 20 ns;
	  n3 <= '0'; n2 <= '1'; n1 <= '1'; n0 <= '1'; wait for 20 ns;
	  
	  n3 <= '1'; n2 <= '0'; n1 <= '0'; n0 <= '0'; wait for 20 ns;
	  n3 <= '1'; n2 <= '0'; n1 <= '0'; n0 <= '1'; wait for 20 ns;
	  
	  n3 <= '1'; n2 <= '0'; n1 <= '1'; n0 <= '0'; wait for 20 ns;
	  n3 <= '1'; n2 <= '0'; n1 <= '1'; n0 <= '1'; wait for 20 ns;
	  
	  n3 <= '1'; n2 <= '1'; n1 <= '0'; n0 <= '0'; wait for 20 ns;
	  n3 <= '1'; n2 <= '1'; n1 <= '0'; n0 <= '1'; wait for 20 ns;
	  
	  n3 <= '1'; n2 <= '1'; n1 <= '1'; n0 <= '0'; wait for 20 ns;
	  n3 <= '1'; n2 <= '1'; n1 <= '1'; n0 <= '1'; wait for 20 ns;
	
	
      wait;
   end process;

END;
