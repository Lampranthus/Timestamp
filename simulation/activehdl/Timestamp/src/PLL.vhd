library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PLL is
  Port (
    CLK0  : in STD_LOGIC;
	CLK   : out STD_LOGIC
  );
  
end PLL;

architecture Behavioral of PLL is 

component PLL_400MHZ IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
	
end component;

component mux_2a1 is
	port(
		D		:	in	std_logic;
		S		: in 	std_logic;
		Y		: out 	std_logic
	);

end component;

signal CLK1, locked : STD_LOGIC;
begin
  
	sc0 : PLL_400MHZ port map(CLK0, CLK1, locked); 
	sc1 : mux_2a1 port map(CLK1, locked, CLK);
  
end Behavioral;