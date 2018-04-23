library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity AddShiftLeft is
	port(A: in std_logic_vector (31 downto 0);
		  B: in std_logic_vector (31 downto 0);
		  Q: out std_logic_vector (31 downto 0));
end AddShiftLeft;

architecture a of AddShiftLeft is
constant four : std_logic_vector (2 downto 0) := "100"; 
begin
	process(A, B)
	begin
		Q <= std_logic_vector(to_unsigned(to_integer(unsigned(A) + unsigned(B)),32)); --Add Shift Left to PC Counter
	end process;
end a;