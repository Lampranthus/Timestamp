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
	OP : out std_logic;
	sttx : out std_logic
	
	);
end fsm_wr;

architecture fsm of fsm_wr is	


signal qp,qn : std_logic_vector(3 downto 0);  
signal Q1p_reg, Q2p_reg, Q1n_reg, Q2n_reg : address_vector; 

begin  
	
	c1 : process(qp ,init, hit, fin, Q1p_reg, Q2p_reg)
	begin
		
		case(qp) is
		
		--s0
		when "0000" =>	

		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= 0;
		OP <= '0';
		sttx <= '0';
		
		if(init='1') then
			qn <= "0001";
		else
			qn <= "0000";
		end if;
		
		--s1
		when "0001" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= Q1p_reg; 
		Q2n_reg <= 0;
		OP <= '0';
		sttx <= '0';
		
			
		if(hit = '1') then
			qn <= "0010";
		else   
			qn <= "0001";
		end if;
		
		--s2
		when "0010" =>	
		
		we <= '1';	   --activado 
		Q1n_reg <= Q1p_reg; 
		Q2n_reg <= 0;
		OP <= '0';
		sttx <= '0';					  
		
		if(Q1p_reg = ram_depth - 1) then
			qn <= "0100";
		else   
			qn <= "0011";
		end if;	
		
		--s3
		when "0011" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= Q1p_reg + 1; 
		Q2n_reg <= 0;
		OP <= '0';
		sttx <= '0'; 
		
		qn <= "0001";  
		
		--s4
		when "0100" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		OP <= '0';
		sttx <= '0'; 
		
		qn <= "0101";
		
		--s5
		when "0101" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		OP <= '0';
		sttx <= '1'; 
		
		qn <= "0110";
		
		--s6
		when "0110" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		OP <= '0';
		sttx <= '0'; 
		
		
		if(fin='0') then
			qn <= "0111";
		else
			qn <= "0110";
		end if;	
		
		--s7
		when "0111" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		OP <= '1';    	-- cambio de byte
		sttx <= '0';
		
		qn <= "1000";
		
		--s8
		when "1000" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		OP <= '1';
		sttx <= '1'; 
		
		qn <= "1001";
		
		--s9
		when "1001" =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg;
		OP <= '1';
		sttx <= '0'; 
		
		
		if(fin='0' and Q2p_reg = ram_depth - 1) then  
			qn <= "0000";
		elsif (fin='0') then
			qn <= "1010";
		else
			qn <= "1001";
		end if;	
		
		--s10
		when others =>	
		
		we <= '0';	   --desactivado 
		Q1n_reg <= 0; 
		Q2n_reg <= Q2p_reg + 1;
		OP <= '0';
		sttx <= '0'; 
		
		qn <= "0100";
		
		end case;
		
	end process;
	
	Q1 <= Q1p_reg; 
	Q2 <= Q2p_reg;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= "0000";
			Q1p_reg <= 0; 
			Q2p_reg <= 0;
		elsif(rising_edge(CLK)) then
			qp <= qn;
			Q1p_reg <= Q1n_reg; 
			Q2p_reg <= Q2n_reg;
		end if;
	end process;
	
end fsm;