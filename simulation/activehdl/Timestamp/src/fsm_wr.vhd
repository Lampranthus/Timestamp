LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.ram_package.ALL;
use ieee.Std_Logic_Arith.all;

entity fsm_wr is
	port(
	
	RST,CLK : in std_logic;
	init : in std_logic;
	hit  : in std_logic;  
	fin  : in std_logic;
	
	we : out std_logic;
	Q1 : out address_vector; 
	Q2 : out address_vector;
	sttx : out std_logic
	
	);
end fsm_wr;

architecture fsm of fsm_wr is	


signal qp,qn : std_logic_vector(2 downto 0);  
signal Q1p_reg, Q2p_reg, Q1n_reg, Q2n_reg : address_vector; 

begin  
	
	c1 : process(qp ,init, hit, fin, Q1p_reg, Q2p_reg)
	begin
		
		case(qp) is
		
		--s0
		when "000" =>	

		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= 0;
		sttx <= '0';
		
		if(init='1') then
			qn <= "001";
		else
			qn <= "000";
		end if;
		
		--s1
		when "001" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= Q1p_reg; 
		Q2n_reg <= 0;
		sttx <= '0';
		
			
		if(hit = '1') then
			qn <= "010";
		else   
			qn <= "001";
		end if;
		
		--s2
		when "010" =>	
		
		we <= '1';	   --activado 
		Q1n_reg <= Q1p_reg; 
		Q2n_reg <= 0;
		sttx <= '0';					  
		
		if(Q1p_reg = ram_depth - 1) then
			qn <= "100";
		else   
			qn <= "011";
		end if;	
		
		--s3
		when "011" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= Q1p_reg + 1; 
		Q2n_reg <= 0;
		sttx <= '0'; 
		
		qn <= "001";  
		
		--s4
		when "100" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		sttx <= '0'; 
		
		qn <= "101";
		
		--s5
		when "101" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		sttx <= '1'; 
		
		qn <= "110";
		
		--s6
		when "110" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		sttx <= '0'; 
		
		
		if(fin='0' and Q2p_reg = ram_depth - 1) then  
			qn <= "000";
		elsif (fin='0') then
			qn <= "111";
		else
			qn <= "110";
		end if;	
		
		--s7
		when others =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg + 1;
		sttx <= '0'; 
		
		qn <= "100";
		
		end case;
		
	end process;
	
	Q1 <= Q1p_reg; 
	Q2 <= Q2p_reg;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= "000";
			Q1p_reg <= 0; 
			Q2p_reg <= 0;
		elsif(rising_edge(CLK)) then
			qp <= qn;
			Q1p_reg <= Q1n_reg; 
			Q2p_reg <= Q2n_reg;
		end if;
	end process;
	
end fsm;