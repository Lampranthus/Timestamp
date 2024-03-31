library ieee;
use ieee.std_logic_1164.all;

entity AFFD is
	port(
	
	RST,CLK : in std_logic;
	bt : in std_logic;
	y : out std_logic
	
	);
end AFFD;

architecture fsm of AFFD is	


signal qp, qn : std_logic_vector(1 downto 0) := "00"; 

begin  
	
	c1 : process(qp,bt)
	begin
		
		case(qp) is
		
		--s0
		when "00" =>
		y <= '1'; 
		if(bt='1') then
			qn <= "01";
		else
			qn <= "00";
		end if;
		
		--s1
		when "01" =>
		
		y <= '0'; 
		
		qn <= "10";
		
		--s2
		when others =>
		y <= '0'; 
		if(bt='0') then
			qn <= "00";
		else
			qn <= "10";
		end if;
		
		
		end case;
		
	end process;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= "01";
		elsif(falling_edge(CLK)) then
			qp <= qn;
		end if;
	end process;
	
end fsm;