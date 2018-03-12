library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Phase_1 is
  port (  Clear, Clock :in STD_LOGIC;
			 Iout : out STD_LOGIC_VECTOR(31 DOWNTO 0));
end Phase_1;

architecture structure of Phase_1 is

component Add4
	port(A: in std_logic_vector (31 downto 0);
		 --B: in std_logic_vector (2 downto 0);
		 Q: out std_logic_vector (31 downto 0));
end component;

component Program_Counter
	port(D: in std_logic_vector (31 downto 0);
		 CLR,CLK: in std_logic;
		 Q: out std_logic_vector (31 downto 0));
end component;

component IP_Catalog
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

signal PCout: STD_LOGIC_VECTOR (31 DOWNTO 0);
signal ADDout: STD_LOGIC_VECTOR (31 DOWNTO 0);
signal IMin: STD_LOGIC_VECTOR (7 DOWNTO 0);

begin --Port mapping for each device
  U1: Add4 port map (PCout, ADDout);
  U2: Program_Counter port map (ADDout, Clear, Clock, PCout);
  U3: IP_Catalog port map (address => IMin, clock => Clock, wren => '0', data => "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX", q => Iout); --Data doesn't matter yet
  
  process(Clock, PCout)
  begin
	IMin <= PCout(7 DOWNTO 0);
  end process; 
end structure;