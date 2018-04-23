LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

entity RWmux_21 is
	port (Sel	: in STD_LOGIC;
		  A		: in STD_LOGIC_VECTOR (4 downto 0);
		  B		: in STD_LOGIC_VECTOR (4 downto 0);
		  X		: out STD_LOGIC_VECTOR (4 downto 0));
end RWmux_21;

architecture RWmux_21_arch of RWmux_21 is
begin
	X <= A when (Sel = '0') else B;
end RWmux_21_arch;