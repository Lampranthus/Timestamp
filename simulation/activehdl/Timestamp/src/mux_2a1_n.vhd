library ieee;	   
use ieee.std_logic_1164.all; 


entity mux_2a1_n is
	generic(
	n	:	integer := 8 		--n-bits
	);
	port(
	x		: in std_logic_vector(15 downto 0);
	s		: in std_logic;
	y		: out std_logic_vector(n-1 downto 0)
	);
end mux_2a1_n;


architecture combinacional of mux_2a1_n is 
begin
	process (s,x)
	begin
		case s is
			when '0' 	=> y<=x(7 downto 0);
			when others => y<=x(15 downto 8);
		end case;
	end process;
end combinacional;