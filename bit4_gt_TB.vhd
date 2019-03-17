library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
   
ENTITY bit4_gt_TB IS
END bit4_gt_TB;
 
ARCHITECTURE behavior OF bit4_gt_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit4_gt
    PORT(
         a3 : IN  std_logic;
         a2 : IN  std_logic;
         a1 : IN  std_logic;
         a0 : IN  std_logic;
         b3 : IN  std_logic;
         b2 : IN  std_logic;
         b1 : IN  std_logic;
         b0 : IN  std_logic;
         gt4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a3 : std_logic := '0';
   signal a2 : std_logic := '0';
   signal a1 : std_logic := '0';
   signal a0 : std_logic := '0';
   signal b3 : std_logic := '0';
   signal b2 : std_logic := '0';
   signal b1 : std_logic := '0';
   signal b0 : std_logic := '0';

 	--Outputs
   signal gt4 : std_logic;
   signal temp : std_logic_vector(7 downto 0) := "00000000";
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit4_gt PORT MAP (
          a3 => a3,
          a2 => a2,
          a1 => a1,
          a0 => a0,
          b3 => b3,
          b2 => b2,
          b1 => b1,
          b0 => b0,
          gt4 => gt4
        );
	
   -- Stimulus process
   stim_proc: process
   begin		
     
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

     
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

     
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;
	 
	  a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

     
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

     
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;
	  a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

     
	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;	 

	 a0 <= temp(7);
	 a1 <= temp(6);
	 a2 <= temp(5);
	 a3 <= temp(4);
	 b0 <= temp(3);
	 b1 <= temp(2);
	 b2 <= temp(1);
	 b3 <= temp(0);
	 temp <= temp + "00000001";
	 wait for 10 ns;
      wait;
   end process;

END;
