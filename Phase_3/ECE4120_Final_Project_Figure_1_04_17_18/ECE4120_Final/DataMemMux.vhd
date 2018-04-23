LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

entity DataMemMux is
	port (Sel	: in STD_LOGIC;
		  A		: in STD_LOGIC_VECTOR (31 downto 0);
		  B		: in STD_LOGIC_VECTOR (31 downto 0);
		  X		: out STD_LOGIC_VECTOR (31 downto 0));
end DataMemMux;

architecture DataMemMux_arch of DataMemMux is
begin
	X <= A when (Sel = '1') else B;
end DataMemMux_arch;