-- Group 2 Project
-- Group Members: Soumya, Manu, Naveen, Kartikey

-- ARBITER CIRCUIT TO PROCESS REQUEST SIGNALS
-- AND GIVE OUTPUT BASED ON THE PRIORITIES OF THE LIGHTS 

-- Importing Libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.EE232PROJ.all;

entity ARBITER is
   port (
     CLK: in std_logic;
     RSTN: in std_logic;
	  -- Requests recieved from the traffic points 
     REQ: in std_logic_vector(3 downto 0);
	  -- 1 if the bus is busy, else 0
     BUSY: in std_logic;
	  -- Changes only when the bus is not busy.
	  -- Signal returned to traffic controller
     GRANT: out std_logic_vector(3 downto 0)
   );
end ARBITER;


architecture STRUCT of ARBITER is
	signal busy_d : std_logic;
   signal busy_fe : std_logic;
  
begin 
   BUSY_PR: process (CLK, RSTN) 
		begin 
		  if (RSTN = '0') then 
			 busy_d <= '0';
		  elsif (rising_edge(CLK)) then
			 busy_d <= busy;
		  end if;
		end process BUSY_PR;

   -- Falling edge of busy signal		
   IF_PROC: process (BUSY,busy_d)
		begin
			if busy='0' and busy_d='1' then
				busy_fe <= '1';
			else
				busy_fe <= '0';
			end if;
		end process;
	--busy_fe <= '1' when busy = '0' and busy_d = '1' else '0';

   ARBITER_PR: process (CLK, RSTN) 
		begin 
		  if (RSTN = '0') then 
			 GRANT <= "0000";
		  elsif (rising_edge(CLK)) then
			 	-- Priorities of Traffic Lights are
				-- TL4 > TL3 > TL2 > TL1
			 if (busy = '0') then 
				GRANT(3) <= REQ(3);
				GRANT(2) <= REQ(2) and not REQ(3);
				GRANT(1) <= REQ(1) and not (REQ(3) or REQ(2));
				GRANT(0) <= REQ(0) and not (REQ(3) or REQ(2) or REQ(1));
				--GRANT(0) <= REQ(0);
				--GRANT(1) <= REQ(1) and not REQ(0);
				--GRANT(2) <= REQ(2) and not (REQ(0) or REQ(1));
				--GRANT(3) <= REQ(3) and (not (REQ(0)) and not(REQ(1)) and not(REQ(2)));
			 end if;  
		  end if;
		end process;

end STRUCT;