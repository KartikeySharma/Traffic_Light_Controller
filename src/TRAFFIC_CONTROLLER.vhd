-- Group 2 Project
-- Group Members: Soumya, Manu, Naveen, Kartikey
-- Traffic Light Controller 
-- A 4 Way Junction using a set of 4 traffic lights.

-- Importing Libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Entity Declaration
entity TRAFFIC_CONTROLLER is
	port(
		clk: in std_logic;
		rstn: in std_logic;
		red: out std_logic_vector(3 downto 0);
		green: out std_logic_vector(3 downto 0);
		yellow: out std_logic_vector(3 downto 0)
	);
end entity;

-- Architecture Declaration
architecture STRUCT of TRAFFIC_CONTROLLER is
	
	type state_type is (s0,s1,s2,s3,s4,s5,s6,s7);
	signal state: state_type := s0;
	signal count: integer:= 0;
	signal lights: std_logic_vector(11 downto 0);
	
	begin	
	
		-- Determining the State of the System
		STATE_PROCESS: process(state)
			-- MSB is RED,then YELLOW and lastly GREEN bit
			-- State		TL4		TL3		TL2		TL1
			--  s0		001		100		100		100
			--  s1		010		100		100		100
			--  s2		100		001		100		100
			--  s3		100		010		100		100
			--  s4		100		100		001		100
			--  s5		100		100		010		100
			--  s6		100		100		100		001
			--  s7		100		100		100		010
						
			begin
				case state is 
					when s0 => lights <= "001100100100";
					when s1 => lights <= "010100100100";
					when s2 => lights <= "100001100100";
					when s3 => lights <= "100010100100";
					when s4 => lights <= "100100001100";
					when s5 => lights <= "100100010100";
					when s6 => lights <= "100100100001";
					when s7 => lights <= "100100100010";
					when others => lights <= lights;
				end case;
			end process;
			
		-- Traffic Light Values according to State
		OPERATE: process(rstn,clk)
			begin
				if rstn='0' then
					state <= s0;
					count <= 0;
				elsif rstn='1' then
					case count is
						when 0 => state <= s0; count <= count+1;
						when 20 => state <= s1; count <= count+1;
						when 25 => state <= s2; count <= count+1;
						when 45 => state <= s3; count <= count+1;
						when 50 => state <= s4; count <= count+1;
						when 70 => state <= s5; count <= count+1;
						when 75 => state <= s6; count <= count+1;
						when 95 => state <= s7; count <= count+1;
						when 100 => count <= 0;
						when others => count <= count+1;
					end case;
				end if;
				
				green(0) <= lights(9);
				yellow(0)  <= lights(10);
				red(0) <= lights(11);
				
				green(1)  <= lights(6);
				yellow(1) <= lights(7);
				red(1)  <= lights(8);
				
				green(2) <= lights(3);
				yellow(2)  <= lights(4);
				red(2) <= lights(5);
				
				green(3)  <= lights(0);
				yellow(3) <= lights(1);
				red(3)  <= lights(2);				
						
			end process;
			
end STRUCT;

