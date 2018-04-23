LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

entity AddMux is
	port (Sel	: in STD_LOGIC;
		  A		: in STD_LOGIC_VECTOR (31 downto 0);
		  B		: in STD_LOGIC_VECTOR (31 downto 0);
		  X		: out STD_LOGIC_VECTOR (31 downto 0));
end AddMux;

architecture AddMux_arch of AddMux is
begin
	X <= A when (Sel = '0') else B;
end AddMux_arch;