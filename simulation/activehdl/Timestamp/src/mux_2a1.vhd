library ieee;
use ieee.std_logic_1164.all;


entity mux_2a1 is
	port(
		D		:	in	std_logic;
		S		: in 	std_logic;
		Y		: out 	std_logic
	);
end mux_2a1;


architecture simple of mux_2a1 is
begin
	c1:process(S,D)
	begin
		case S is
			when '1' =>
			Y<=D;
			when others =>
			Y<='0';
		end case;
	end process;
end simple;