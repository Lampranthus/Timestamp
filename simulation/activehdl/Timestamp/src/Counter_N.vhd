library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;  
use ieee.std_logic_unsigned.all;

entity Counter_N is
	generic(
	n : integer :=8
	);
	
	port(
	RST, CLK 	: in std_logic;
	Q 			:out std_logic_vector(n-1 downto 0);
	Cout 		: out  	STD_LOGIC
	);
end Counter_N;
	
architecture simple of Counter_N is
signal qp, qn : std_logic_vector(n downto 0);
begin
c1 : process(qp)

	begin
		qn <= qp+1;
	end process;
	
secuencial : process(RST,CLK)
	begin
	if(RST='0') then
		qp <= (others =>'0');
	elsif(rising_edge(CLK)) then
		qp <= qn;
	end if;
	end process; 
	
	Q <= qp(n-1 downto 0);
	Cout <= qp(n);

end simple;