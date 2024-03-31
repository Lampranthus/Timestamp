library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Timestamp is
  generic (
  	N : positive := 128;
  	M : positive := 8;
  	O : positive := 6 
   );
  Port (
    CLK0    : in STD_LOGIC;
    RST    	: in STD_LOGIC;
	init	: in STD_LOGIC;
	Trigger : in STD_LOGIC;
    Hit    	: in STD_LOGIC;
	Zero   	: in STD_LOGIC;
	One  	: in STD_LOGIC;
	FCout1 	: out STD_LOGIC;
	FCout2 	: out STD_LOGIC;
    RR	   	: out STD_LOGIC_VECTOR(M-1 downto 0);
	RTC		: out STD_LOGIC_VECTOR(O-1 downto 0)
	
  );
  
end Timestamp;

architecture Behavioral of Timestamp is 

component TDC is 
  generic (
  	N : positive := 128;
  	M : positive := 8;
  	O : positive := 6
   );
  Port (
 	CLK 	: in STD_LOGIC;
  	RST 	: in STD_LOGIC;
	Zeros	: in STD_LOGIC_VECTOR(N-1 downto 0);
	Ones 	: in STD_LOGIC_VECTOR(N-1 downto 0);
	T  		: in STD_LOGIC;
	Hit		: in STD_LOGIC;
	RT0     : in STD_LOGIC_VECTOR(M-1 downto 0);
	RT1     : out STD_LOGIC_VECTOR(M-1 downto 0);
	TC 		: in STD_LOGIC_VECTOR(O-1 downto 0);
	CCout	: in STD_LOGIC;
	Start 	: out STD_LOGIC;
  	Stop 	: out STD_LOGIC;
	FCout 	: out STD_LOGIC;
	RR		: out STD_LOGIC_VECTOR(M-1 downto 0);  -- RESULDADO DE LA RESTA
	RTC 	: out STD_LOGIC_VECTOR(O-1 downto 0)   -- N
  );
  
		
end component;

component Global_P is 
  generic (
  	N : positive := 128;
 	M : positive := 8;
  	O : positive := 6
   );
  Port (
 	CLK 	: in STD_LOGIC;
  	RST 	: in STD_LOGIC;
	init	: in STD_LOGIC;
	Trigger : in STD_LOGIC;
	TStop 	: out STD_LOGIC;
	TC 		: out STD_LOGIC_VECTOR(O-1 downto 0);
	RT0     : out STD_LOGIC_VECTOR(M-1 downto 0);
	CCout	: out STD_LOGIC;
	Zeros 	: in STD_LOGIC_VECTOR(N-1 downto 0);
	Ones	: in STD_LOGIC_VECTOR(N-1 downto 0);
	FCout 	: out STD_LOGIC;
	T		: out STD_LOGIC
  );
	
end component;

component PLL is
  Port (
    CLK0  : in STD_LOGIC;
	CLK   : out STD_LOGIC
  );
	
end component;

component Shift_Left is
    Generic (N : integer := 128); -- Define the number of bits as a generic
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           L : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(N-1 downto 0)
		   );
end component;


signal CCout, CLK, T, TStop, Start, Stop : STD_LOGIC;
signal TC :  STD_LOGIC_VECTOR(O-1 downto 0);
signal Zeros, Ones :  STD_LOGIC_VECTOR(N-1 downto 0);
signal RT0, RT1 :  STD_LOGIC_VECTOR(M-1 downto 0);

begin
  
	sc0 : TDC port map(CLK, RST, Zeros, Ones, T, Hit, RT0, RT1, TC, CCout, Start, Stop, FCout2, RR, RTC);
	sc1 : Global_P port map(CLK, RST, init, Trigger, TStop, TC, RT0, CCout, Zeros, Ones, FCout1, T);
	sc2 : PLL port map(CLK0, CLK);
	sc3 : Shift_Left port map(CLK, RST, Zero, Zeros);
	sc4 : Shift_Left port map(CLK, RST, One, Ones);
  
end Behavioral;