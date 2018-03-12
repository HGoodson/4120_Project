library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Program_Counter is --Glorified 32-bit register
	port(D: in std_logic_vector (31 downto 0);
		 CLR,CLK: in std_logic;
		 Q: out std_logic_vector (31 downto 0));
end Program_Counter;



architecture pc of Program_Counter is
begin
	process (CLK,CLR)
	begin
		if(CLR='1') then
			Q <= x"0000000000000000";
		elsif rising_edge(clk) then
				Q <= D;
		end if;
	end process;
end pc;