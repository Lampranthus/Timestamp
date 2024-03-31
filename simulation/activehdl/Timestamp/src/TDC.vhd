library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE work.ram_package.ALL;

entity TDC is 
  generic (
  	N : positive := 128;
  	M : positive := 8;
  	O : positive := 6;
	P : positive := 16 
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
	RV		: out word;
	WR      : out STD_LOGIC
	
  );
  
end TDC;

architecture Behavioral of TDC is 

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

component Regs is
  generic (
		N : natural := 128; 
		M : natural	:= 8;
		O : natural	:= 6	
    );
  Port (
    Sp 	  : in STD_LOGIC;
    RST   : in STD_LOGIC;
    Adder : in STD_LOGIC_VECTOR(N-1 downto 0);
	TC    : in STD_LOGIC_VECTOR(O-1 downto 0);
	RTF   : out STD_LOGIC_VECTOR(M-1 downto 0);
	RTC   : out STD_LOGIC_VECTOR(O-1 downto 0)
  ); 
	
end component;

component restador_n is
	generic(
	n	:	integer	:= 8
	);
	
	port(
	A,B	:	in	std_logic_vector(n-1 downto 0);
	R	:	out std_logic_vector(n-1 downto 0)
	);
	
end component;

component AFFD is
	port(
	
	RST,CLK : in std_logic;
	bt : in std_logic;
	y : out std_logic
	
	);

end component;

component FFD is

	port(
		RST, CLK, D : in std_logic;
		Q : out std_logic
	);
	
end component;

signal St, Sp, HRST, RST1, FFSp, FFHit : STD_LOGIC;
signal Adder : STD_LOGIC_VECTOR(N-1 downto 0);
signal SRT1 : STD_LOGIC_VECTOR(M-1 downto 0);
signal RR : STD_LOGIC_VECTOR(M-1 downto 0);
signal RTC : STD_LOGIC_VECTOR(O-1 downto 0);
signal RVV : STD_LOGIC_VECTOR(P-1 downto 0);

begin 
	
	HRST <=	((T and (not Sp)) and (not CCout)) and RST;
	
	Start <= St;
	Stop <= Sp;
	
	RT1 <= SRT1;
	
	RVV <= RR & "00" & RTC;
	
	c1 : process(RVV)
	begin
		for i in RVV'range loop
        RV(i) <= RVV(i);
        end loop;
	end process c1;
	
	
	WR <= (not RST1) and T;
  
	sc0 : Synchronizer port map(CLK, RST1, RST1, FFHit, St, FFSp); 
	sc1 : Fine_Counter port map(Zeros, Ones, St, Adder, FCout);
	sc2 : Regs port map(Sp, RST, Adder, TC, SRT1, RTC);
	sc3 : restador_n port map(RT0, SRT1, RR);
	sc4 : FFD port map(RST1, FFSp, '1', Sp);
	sc5 : AFFD port map(RST, CLK, Sp, RST1);
	sc6 : FFD port map(HRST, Hit, '1', FFHit);
  
end Behavioral;