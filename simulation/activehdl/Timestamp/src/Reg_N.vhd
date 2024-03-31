library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_N is
  generic (
    N : positive := 8  
  );
  Port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR(N-1 downto 0);
    Q : out STD_LOGIC_VECTOR(N-1 downto 0)
  );
end Reg_N;

architecture Behavioral of Reg_N is
  signal Reg : STD_LOGIC_VECTOR(N-1 downto 0);
begin
  process (RST, CLK)
  begin
    if RST = '0' then
      Reg <= (others => '0'); 
    elsif rising_edge(CLK) then
      Reg <= D;
    end if;
  end process;

  Q <= Reg;
  
end Behavioral;