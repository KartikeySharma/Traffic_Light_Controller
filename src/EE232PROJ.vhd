library ieee;
use ieee.std_logic_1164.all;

package EE232PROJ is

	component TRAFFIC_CONTROLLER is
	port(
		clk: in std_logic;
		red: out std_logic_vector(3 downto 0);
		green: out std_logic_vector(3 downto 0);
		yellow: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component ARBITER is
   port (
     CLK: in std_logic;
     RSTN: in std_logic;
     REQ: in std_logic_vector(3 downto 0);
     BUSY: in std_logic;
     GNT: out std_logic_vector(3 downto 0)
   );
	end component;
	
end package;



		

    
