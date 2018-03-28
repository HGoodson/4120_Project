library ieee;
use ieee.std_logic_1164.all;
library work;
use work.DFFout.all;

entity ReadEntity is
	port( ReadRegister1 : in std_logic_vector(4 downto 0);
			ReadRegister2 : in std_logic_vector(4 downto 0);
			DOut	 : in DFFArray(31 DOWNTO 0);
			ReadData1 : out std_logic_vector(31 downto 0);
			ReadData2 : out std_logic_vector(31 downto 0));
end ReadEntity;

architecture ReadReg of ReadEntity is

Component muxRead is
Port (Sel : in std_logic_vector(4 downto 0);
		inputs : in DFFArray(0 to 31);
		output : out std_logic_vector(31 downto 0));
end component;

begin
	
--FOR the first MUX	
U1: muxRead port map 
			(ReadRegister1,DOut,ReadData1);
	
--For the Second MUX	
U2: muxRead port map 
			(ReadRegister2,DOut,ReadData2);

end ReadReg;