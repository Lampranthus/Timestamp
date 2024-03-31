library ieee;
use ieee.std_logic_1164.all;

entity FFD_N is

port(
RST, CLK, D : in std_logic;
Q : out std_logic
);

end FFD_N;

architecture simple of FFD_N is
begin
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			Q <= '0';
		elsif(falling_edge(CLK)) then
			Q <= D;
		end if;
	end process;
end simple;