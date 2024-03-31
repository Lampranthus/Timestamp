library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity restador_n is
	generic(
	n	:	integer	:= 8
	);
	
	port(
	A,B	:	in	std_logic_vector(n-1 downto 0);
	R	:	out std_logic_vector(n-1 downto 0)
	);
end restador_n;
	
architecture aritmetica of restador_n is
begin
	
	process(A,B)
	Variable resta	:	std_logic_vector(n downto 0);
	begin
		resta := ('0' & A) - ('0' & B);
		R <= std_logic_vector(resta(n-1 downto 0));
	end process;
	
	
end aritmetica;