library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Regs is
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
  
end Regs;

architecture Behavioral of Regs is 

component Reg_N is
  generic (
    N : positive := 6  
  );
  Port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR(N-1 downto 0);
    Q : out STD_LOGIC_VECTOR(N-1 downto 0)
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

signal hreg, sync : STD_LOGIC;
begin
  
	sc0 : Reg_N port map(Sp, RST, TC, RTC);
	sc1 : FReg port map(Sp, RST, Adder, RTF);
  
end Behavioral;