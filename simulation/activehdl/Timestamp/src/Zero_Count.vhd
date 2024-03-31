library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zero_Count is
    generic (
		N : natural := 128; 
		M : natural	:= 8 
    );
    port (
		RST	  	  : in STD_LOGIC;
        vector_in : in  std_logic_vector(N-1 downto 0);
        count_out : out std_logic_vector(M-1 downto 0)
    );
end entity Zero_Count;

architecture Behavioral of Zero_Count is
begin
    process(RST,vector_in)
        variable count : unsigned(M-1 downto 0) := (others => '0');
    begin
		
	if RST = '0' then
		count_out <= (others => '0');
	else
        for i in 0 to N-1 loop
            if vector_in(i) = '0' then
                count := count + 1; -- Actualizar el contador al índice del bit cero encontrado
				if i = N-1 then
					count_out <= std_logic_vector(count(M-1 downto 0));
					count := (others => '0');  -- Reiniciar el contador a todos '0'
					exit; -- Salir del bucle al no encontrar el primer '1'
				end if;
            else
                count_out <= std_logic_vector(count(M-1 downto 0)); -- Asignar el contador actual a la salida
                count := (others => '0');  -- Reiniciar el contador a todos '0'
                exit; -- Salir del bucle al encontrar el primer '1'
            end if;
        end loop;
	end if;
    end process;
end architecture Behavioral;