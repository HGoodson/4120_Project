library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity Add4 is
	port(A: in std_logic_vector (31 downto 0);
		 --B: in std_logic_vector (2 downto 0);
		 Q: out std_logic_vector (31 downto 0));
end Add4;

architecture a of Add4 is
constant four : std_logic_vector (2 downto 0) := "100"; 
begin
	process(A)
	begin
		Q <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) + four,32));
	end process;
end a;
