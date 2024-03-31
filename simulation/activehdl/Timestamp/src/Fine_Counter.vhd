library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Fine_Counter is
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

end Fine_Counter;

architecture simple of Fine_Counter is

component Carry_Chain_N is
  generic (
    N : positive := 128   -- Change the default value as needed
  );
  Port (
	A    : in STD_LOGIC_VECTOR(N-1 downto 0);
    B    : in STD_LOGIC_VECTOR(N-1 downto 0);
    Cin  : in STD_LOGIC;
    S    : out STD_LOGIC_VECTOR(N-1 downto 0);
	Cout  : out STD_LOGIC
  );
end component;

begin
	
   	sc0 : Carry_Chain_N port map(Zeros, Ones, St, Q, FCout);
	
end simple;