LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY DFlipFlop IS
PORT ( C, CLK : IN STD_LOGIC ;
			D	:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			R	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)) ;
END DFlipFlop ;
ARCHITECTURE Behavior OF DFlipFlop IS
	BEGIN
		PROCESS(CLK, C)
		BEGIN
			if(C = '1') then
				if(CLK'event and CLK = '1') then
					R <= D;
				end if;
			end if;
		END PROCESS;	
END Behavior ;