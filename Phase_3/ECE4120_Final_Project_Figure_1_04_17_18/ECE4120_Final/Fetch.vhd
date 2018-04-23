library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Fetch is
  port (  Clear, Clock :in STD_LOGIC;
			 Addin	:	in STD_LOGIC_VECTOR(31 downto 0);
			Iout , POut, AOut: out STD_LOGIC_VECTOR(31 DOWNTO 0));
end Fetch;

architecture structure of Fetch is

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

begin --Port mapping for each device
  U1: Add4 port map (PCout, ADDout);
  U2: Program_Counter port map (D => AddIn, CLR => Clear, CLK => Clock, Q => PCout);
  U3: IP_Catalog port map (address => PCOut(7 downto 0), clock => Clock, wren => '0', data => "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX", q => Iout); --Data doesn't matter yet
  
  POut <= PCout;
  Aout <= ADDout;
end structure;