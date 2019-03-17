library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	USE ieee.std_logic_arith.all;
	USE ieee.std_logic_unsigned.all;
	use ieee.std_logic_textio.all; --in order to use hread.
	
	library work;
	use work.all;

 
ENTITY dec_2_to_4_TB IS
END dec_2_to_4_TB;
 
ARCHITECTURE behavior OF dec_2_to_4_TB IS 
 
    
 
    COMPONENT dec_2_to_4
    PORT(
         i1 : IN  std_logic;
         i0 : IN  std_logic;
		 en : in std_logic;
         o3 : OUT  std_logic;
         o2 : OUT  std_logic;
         o1 : OUT  std_logic;
         o0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';
   signal i0 : std_logic := '0';
   signal en :  std_logic;
 	--Outputs
   signal o3 : std_logic; 
   signal o2 : std_logic;
   signal o1 : std_logic;
   signal o0 : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dec_2_to_4 PORT MAP (
          i1 => i1,
          i0 => i0,
		  en => en,
          o3 => o3,
          o2 => o2,
          o1 => o1,
          o0 => o0
        );

   

   -- Stimulus process
   stim_proc: process
   begin	
	   
	   en <= '1';
	   --en <= '0';
       i0 <= '0';
	   i1 <= '0';
	   wait for 100 ns;
	   i0 <= '0';
	   i1 <= '1';
	   wait for 100 ns;
	   i0 <= '1';
	   i1 <= '0';
	   wait for 100 ns;
	   i0 <= '1';
	   i1 <= '1';
	   wait for 100 ns;
	   

      wait;
   end process;

END;
