library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Global_P is 
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
  
end Global_P;

architecture Behavioral of Global_P is 



component Coarse_Counter is
   generic (
   		N : positive := 6
   );	
	port (
	
	CRST, CLK   : in  	STD_LOGIC;
	TC      	: out  	STD_LOGIC_VECTOR(N-1 downto 0);
	CCout 		: out  	STD_LOGIC
   
   );

end component;

component FFD is

	port(
		RST, CLK, D : in std_logic;
		Q : out std_logic
	);
	
end component;

component Synchronizer is

  Port (
  	CLK 	: in STD_LOGIC;
  	HRST 	: in STD_LOGIC;
    SRST 	: in STD_LOGIC;
    Hit 	: in STD_LOGIC;
    St 		: out STD_LOGIC;
	Sp 		: out STD_LOGIC
  );
	
end component;

component Fine_Counter is
   generic (
   		N : positive := 128
   );	
	port (
	
	Zeros	: in  	STD_LOGIC_VECTOR(N-1 downto 0);
	Ones	: in  	STD_LOGIC_VECTOR(N-1 downto 0);
	St 		: in  	STD_LOGIC;
	Q       : out  	STD_LOGIC_VECTOR(N-1 downto 0);
	FCout  	: out STD_LOGIC
	
   );

end component;

component FReg is
  generic (
		N : natural := 128; 
		M : natural	:= 8	
    );
  Port (
    Sp    : in STD_LOGIC;
    RST   : in STD_LOGIC;	
	Adder : in STD_LOGIC_VECTOR(N-1 downto 0);
    RTF   : out STD_LOGIC_VECTOR(M-1 downto 0)
  );

end component;

component AFFD is
	port(
	
	RST,CLK : in std_logic;
	bt : in std_logic;
	y : out std_logic
	
	);

end component;

signal CCout_Aux, CRST, TRST, T_Aux, TSp, FFTSp, FFCCout_Aux, RST1, RST2 : STD_LOGIC;
signal Q : STD_LOGIC_VECTOR(N-1 downto 0);

begin 
	T <= T_Aux;	
	CRST <= (init and T_Aux) and RST; 
	TRST <= (init and RST2) and RST;
	CCout <= CCout_Aux;
	TStop <= TSp;
  
	sc0 : Coarse_Counter port map(CRST, CLK, TC, FFCCout_Aux);
	sc1 : FFD port map(TRST, Trigger, '1', T_Aux);                    --GUARDA TRIGGER
	sc2 : Synchronizer port map(CLK, TRST, TRST, T_Aux, open, FFTSp);
	sc3 : Fine_Counter port map(Zeros, Ones, T_Aux, Q, FCout);
	sc4 : FReg port map(TSp, RST, Q, RT0);
	sc5 : FFD port map(RST1, FFTSp, '1', TSp);
	sc6 : FFD port map(RST2, FFCCout_Aux, '1', CCout_Aux);
	sc7 : AFFD port map(RST, CLK, TSp, RST1);
	sc8 : AFFD port map(RST, CLK, CCout_Aux, RST2);
  
end Behavioral;