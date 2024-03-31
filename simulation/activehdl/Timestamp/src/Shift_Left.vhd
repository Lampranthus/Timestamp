library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Shift_Left is
    Generic (N : integer := 128); -- Define the number of bits as a generic
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           L : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(N-1 downto 0)
		   );
end Shift_Left;

architecture Behavioral of Shift_Left is
    signal shift_reg : STD_LOGIC_VECTOR(N-1 downto 0) := (others => '0');
begin
    process (RST, CLK)
    begin
        if RST = '0' then
            shift_reg <= (others => '0'); -- Reset the shift register
        elsif rising_edge(CLK) then
            -- Shift data to the left
            shift_reg <= shift_reg(N-2 downto 0) & L;
        end if;
    end process;

    Q <= shift_reg;
	
end Behavioral;