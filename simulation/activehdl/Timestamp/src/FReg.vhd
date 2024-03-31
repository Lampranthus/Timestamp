library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FReg is
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
  
end FReg;

architecture Behavioral of FReg is 

component Reg_N is
  generic (
    N : positive := 128  
  );
  Port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR(N-1 downto 0);
    Q : out STD_LOGIC_VECTOR(N-1 downto 0)
  );
	
end component;

component Zero_Count is
    generic (
		N : natural := 128; 
		M : natural	:= 8 
    );
    port (
		RST	  	  : in STD_LOGIC;
        vector_in : in  std_logic_vector(N-1 downto 0);
        count_out : out std_logic_vector(M-1 downto 0)
    );
	
end component;

signal RAdder : STD_LOGIC_VECTOR(N-1 downto 0);
begin
  
	sc0 : Reg_N port map(Sp, RST, Adder, RAdder);
	sc1 : Zero_Count port map(RST, RAdder, RTF);
  
end Behavioral;