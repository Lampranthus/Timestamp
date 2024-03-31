library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
USE work.ram_package.ALL;

entity Timestamp is
  generic (
  	N : positive := 128;
  	M : positive := 8;
  	O : positive := 6;
	P : positive := 16 
   );
  Port (
    CLK0    : in STD_LOGIC;
    RST    	: in STD_LOGIC;
	init	: in STD_LOGIC;
	Trigger : in STD_LOGIC;
    Hit    	: in STD_LOGIC;
	Zero   	: in STD_LOGIC;
	One  	: in STD_LOGIC;
	FCout1 	: out STD_LOGIC;
	FCout2 	: out STD_LOGIC;
	--rx      : IN  STD_LOGIC;
	tx      : OUT STD_LOGIC
	
  );
  
end Timestamp;

architecture Behavioral of Timestamp is 

component TDC is 
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
		
end component;

component Global_P is 
  generic (
  	N : positive := 128;
 	M : positive := 8;
  	O : positive := 6
   );
  Port (
 	CLK 	: in STD_LOGIC;
  	RST 	: in STD_LOGIC;
	init	: in STD_LOGIC;
	Trigger : in STD_LOGIC;
	TStop 	: out STD_LOGIC;
	TC 		: out STD_LOGIC_VECTOR(O-1 downto 0);
	RT0     : out STD_LOGIC_VECTOR(M-1 downto 0);
	CCout	: out STD_LOGIC;
	Zeros 	: in STD_LOGIC_VECTOR(N-1 downto 0);
	Ones	: in STD_LOGIC_VECTOR(N-1 downto 0);
	FCout 	: out STD_LOGIC;
	T		: out STD_LOGIC
  );
	
end component;

component PLL is
  Port (
    CLK0  : in STD_LOGIC;
	CLK   : out STD_LOGIC
  );
	
end component;

component Shift_Left is
    Generic (N : integer := 128); -- Define the number of bits as a generic
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           L : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(N-1 downto 0)
		   );
end component;

component ram_dual IS
   PORT
   (
      clock1 : IN   std_logic;
      clock2 : IN   std_logic;
      data   : IN   word;
      write_address: IN  address_vector;
      read_address:  IN  address_vector;
      we     : IN   std_logic;
      q      : OUT  word
   );
end component;

component uart IS
  GENERIC(
    clk_freq  :  INTEGER    := 400_000_000;  --frequency of system clock in Hertz
    baud_rate :  INTEGER    := 115_200;      --data link baud rate in bits/second
    os_rate   :  INTEGER    := 16;          --oversampling rate to find center of receive bits (in samples per baud period)
    d_width   :  INTEGER    := 16;           --data bus width
    parity    :  INTEGER    := 1;           --0 for no parity, 1 for parity
    parity_eo :  STD_LOGIC  := '0');        --'0' for even, '1' for odd parity
  PORT(
    clk      :  IN   STD_LOGIC;                             --system clock
    reset_n  :  IN   STD_LOGIC;                             --ascynchronous reset
    tx_ena   :  IN   STD_LOGIC;                             --initiate transmission
    tx_data  :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
    rx       :  IN   STD_LOGIC;                             --receive pin
    rx_busy  :  OUT  STD_LOGIC;                             --data reception in progress
    rx_error :  OUT  STD_LOGIC;                             --start, parity, or stop bit error detected
    rx_data  :  OUT  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data received
    tx_busy  :  OUT  STD_LOGIC;                             --transmission in progress
    tx       :  OUT  STD_LOGIC);  
	
end component;

component fsm_wr is
    port (
        RST, CLK : in std_logic;
        init, hit, fin : in std_logic;
        we : out std_logic;
        Q1, Q2 : out address_vector;
        sttx : out std_logic
    );	
end component;


signal CCout, CLK, T, TStop, Start, Stop, WR, we, tx_ena, tx_busy : STD_LOGIC;
signal TC :  STD_LOGIC_VECTOR(O-1 downto 0);
signal Zeros, Ones :  STD_LOGIC_VECTOR(N-1 downto 0);
signal RT0, RT1 :  STD_LOGIC_VECTOR(M-1 downto 0);
signal q, RV : word;
signal write_address, read_address : address_vector;
signal tx_data :  STD_LOGIC_VECTOR(P-1 downto 0);

begin
	
	c1 : process(q)
	begin
		for i in q'range loop
        tx_data(i) <= q(i);
        end loop;
	end process c1;
  
	sc0 : TDC port map(CLK, RST, Zeros, Ones, T, Hit, RT0, RT1, TC, CCout, Start, Stop, FCout2, RV, WR);
	sc1 : Global_P port map(CLK, RST, init, Trigger, TStop, TC, RT0, CCout, Zeros, Ones, FCout1, T);
	sc2 : PLL port map(CLK0, CLK);
	sc3 : Shift_Left port map(CLK, RST, Zero, Zeros);
	sc4 : Shift_Left port map(CLK, RST, One, Ones);
	sc5 : ram_dual port map(CLK, CLK, RV, write_address, read_address, we, q);
	sc6 : uart port map(CLK, RST, tx_ena, tx_data, '0', open, open, open, tx_busy, tx);
	sc7 : fsm_wr port map(RST, CLK, init, WR, tx_busy, we, write_address, read_address, tx_ena);
  
end Behavioral;