 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY dec_3_8e_TB IS
END dec_3_8e_TB;
 
ARCHITECTURE behavior OF dec_3_8e_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dec_3_8e
    PORT(
         enable : IN  std_logic;
         n2 : IN  std_logic;
         n1 : IN  std_logic;
         n0 : IN  std_logic;
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
   signal enable : std_logic := '1';
   signal n2 : std_logic := '0';
   signal n1 : std_logic := '0';
   signal n0 : std_logic := '0';

 	--Outputs
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
   uut: dec_3_8e PORT MAP (
          enable => enable,
          n2 => n2,
          n1 => n1,
          n0 => n0,
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
    
		 
		n2 <= '0';
		n1 <= '0';
		n0 <= '0';
		wait for 10 ns;
     
		n2 <= '0';
		n1 <= '0';
		n0 <= '1';
		wait for 10 ns;
    	n2 <= '0';
		n1 <= '1';
		n0 <= '0';
		wait for 10 ns;
    	n2 <= '0';
		n1 <= '1';
		n0 <= '1';
		wait for 10 ns;
    	n2 <= '1';
		n1 <= '0';
		n0 <= '0';
		wait for 10 ns;
    	n2 <= '1';
		n1 <= '0';
		n0 <= '1';
		wait for 10 ns;
    	n2 <= '1';
		n1 <= '1';
		n0 <= '0';
		wait for 10 ns;
    	n2 <= '1';
		n1 <= '1';
		n0 <= '1';
		wait for 10 ns;
    
      wait;
   end process;

END;
