library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity ShiftLeft2 is
	port(A: in std_logic_vector (31 downto 0);
		 Q: out std_logic_vector (31 downto 0));
end ShiftLeft2;

architecture a of ShiftLeft2 is
constant four : std_logic_vector (2 downto 0) := "100"; 
begin
	process(A)
	begin
		Q <= std_logic_vector(to_unsigned(to_integer(unsigned(A) * 1),32)); --Dont actually multiply since mif takes care of offset
	end process;
end a;