library ieee;
use ieee.std_logic_1164.all;


entity SignExtendProject is
	port(	input		:in Std_logic_vector(15 downto 0);
			output	:out std_logic_vector(31 downto 0));
end SignExtendProject;

architecture behavior of SignExtendProject is

	signal temp	:	std_logic_vector(15 downto 0)	:= "0000000000000000";
	signal extension : std_logic_vector(15 downto 0)	:= "0000000000000000";

	begin
		--temp <= input or temp;
		process(input)
			begin
			if input(15) = '1' then
				extension <= "1111111111111111";
			else
				extension <= "0000000000000000";
			end if;
		end process;
		
		output <= extension & input;
		
end behavior;