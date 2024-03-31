library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Synchronizer is

  Port (
  	CLK 	: in STD_LOGIC;
  	HRST 	: in STD_LOGIC;
    SRST 	: in STD_LOGIC;
    Hit 	: in STD_LOGIC;
    St 		: out STD_LOGIC;
	Sp 		: out STD_LOGIC
  );
  
end Synchronizer;

architecture Behavioral of Synchronizer is 

component FFD is

	port(
		RST, CLK, D : in std_logic;
		Q : out std_logic
	);
	
end component;

component FFD_N is

port(
RST, CLK, D : in std_logic;
Q : out std_logic
);

end component;

signal hreg, sync : STD_LOGIC;
begin
  
	sc0 : FFD port map(HRST, Hit, '1', hreg);
	sc1 : FFD_N port map(SRST, CLK, hreg, sync);
    sc2 : FFD_N port map(SRST, CLK, sync, Sp);
	
	St <= hreg;
  
end Behavioral;