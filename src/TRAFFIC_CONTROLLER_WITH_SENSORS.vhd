-- Group 2 Project
-- Group Members: Soumya, Manu, Naveen, Kartikey

-- Traffic Light Controller 
-- A 4 Way Junction using a set of 4 traffic lights.

-- Importing Libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.EE232PROJ.all;

-- Entity Declaration
entity TRAFFIC_CONTROLLER_WITH_SENSORS is
	port(
		clk: in std_logic;
		rstn: in std_logic;
		-- traffic at the points
		traffic: in std_logic_vector(3 downto 0);
		red: out std_logic_vector(3 downto 0);
		green: out std_logic_vector(3 downto 0);
		yellow: out std_logic_vector(3 downto 0)
	);
end entity;

-- Architecture Declaration
architecture STRUCT of TRAFFIC_CONTROLLER_WITH_SENSORS is
	
	type state_type is (s0,s1,s2,s3,s4,s5,s6,s7);
	signal state: state_type := s0;
	signal count: integer:= 0;
	signal lights: std_logic_vector(11 downto 0);
	signal gnt: std_logic_vector(3 downto 0);
	--signal yellow: std_logic_vector(3 downto 0);
	
	begin	
		
		A0: ARBITER port map(clk,rstn,traffic,'0',gnt);
	
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
					
		-- Traffic Light Values according to State and sensors
		OPERATE: process(rstn,clk)
			begin
				-- We need to maintain the cycle of the FSM in case 
				-- no traffic is detected on any of the roads.
				if gnt(3)='1' then
					state <= s0;
					count <= 0;
				elsif gnt(2)='1' then
					state <= s2;
					count <= 25;
				elsif gnt(1)='1' then
					state <= s4;
					count <= 50;
				elsif gnt(0)='1' then
					state <= s6;
					count <= 75;
				else
					state <= state;
					count <= count+1;
				end if;
				
				if rstn='0' then
					state <= s0;
					count <= 0;
				elsif rstn='1' then
					case count is
						when 0 => 
							state <= s0; 
							count <= count+1;
						when 20 => 
							state <= s1; 
							count <= count+1;
						when 30 => 
							state <= s2; 
							count <= count+1;
						when 50 => 
							state <= s3; 
							count <= count+1;
						when 60 => 
							state <= s4; 
							count <= count+1;
						when 80 => 
							state <= s5; 
							count <= count+1;
						when 90 => 
							state <= s6; 
							count <= count+1;
						when 110 => 
							state <= s7; 
							count <= count+1;
						when 120 => 
							count <= 0;
						when others => 
							count <= count+1;
					end case;
				end if;	
		
				-- TRAFFIC LIGHT 4
				red(0)   <= lights(2);
				green(0) <= lights(0);	
				
				-- TRAFFIC LIGHT 3
				red(1)   <= lights(5);
				green(1) <= lights(3);
				
				-- TRAFFIC LIGHT 2
				red(2)   <= lights(8);
				green(2) <= lights(6);
				
				-- TRAFFIC LIGHT 1
				red(3)   <= lights(11);
				green(3) <= lights(9);
				
				-- REDUNDANT LIGHTS
				yellow(3) <= lights(10);
				yellow(2) <= lights(7);
				yellow(1) <= lights(4);
				yellow(0) <= lights(1);
						
			end process;
			
end STRUCT;

