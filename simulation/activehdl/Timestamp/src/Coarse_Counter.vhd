library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Coarse_Counter is
   generic (
   		N : positive := 6
   );	
	port (
	
	CRST, CLK   : in  	STD_LOGIC;
	TC      	: out  	STD_LOGIC_VECTOR(N-1 downto 0);
	CCout 		: out  	STD_LOGIC
   
   );

end Coarse_Counter;

architecture simple of Coarse_Counter is

component Counter_N is
	generic(
	n : integer :=6
	);
	
	port(
	RST, CLK : in std_logic;
	Q :out std_logic_vector(n-1 downto 0);
	Cout 					: out  	STD_LOGIC
	);
	
end component;

begin
	
	sc0 : Counter_N port map(CRST, CLK, TC, CCout);
	
end simple;