library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Carry_Chain_N is
  generic (
    N : positive := 128   -- Change the default value as needed
  );
  Port (
	A     : in STD_LOGIC_VECTOR(N-1 downto 0);
    B     : in STD_LOGIC_VECTOR(N-1 downto 0);
    Cin   : in STD_LOGIC;
    S     : out STD_LOGIC_VECTOR(N-1 downto 0);
	Cout  : out STD_LOGIC
  );
end Carry_Chain_N;

architecture Behavioral of Carry_Chain_N is
begin
  	process(A,B,Cin)
	Variable suma	:	unsigned(N downto 0);
	begin
		
		suma := unsigned('0' & A) + unsigned('0' & B) + unsigned'('0' & Cin);
		S <= std_logic_vector(suma(N-1 downto 0));
		Cout <= suma(N);
		
	end process;
end Behavioral;