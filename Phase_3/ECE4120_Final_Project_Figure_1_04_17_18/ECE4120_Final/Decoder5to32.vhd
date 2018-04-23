LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY Decoder5to32 IS
PORT ( A : IN STD_LOGIC_VECTOR(4 DOWNTO 0) ;
			B	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)) ;
END Decoder5to32 ;
ARCHITECTURE Behavior OF Decoder5to32 IS
	BEGIN
		PROCESS(A)
		BEGIN
			CASE A IS
				WHEN "00000"	=>
					B <= "00000000000000000000000000000001";
				WHEN "00001"	=>
					B <= "00000000000000000000000000000010";
				WHEN "00010"	=>
					B <= "00000000000000000000000000000100";
				WHEN "00011"	=>
					B <= "00000000000000000000000000001000";
				WHEN "00100"	=>
					B <= "00000000000000000000000000010000";
				WHEN "00101"	=>
					B <= "00000000000000000000000000100000";
				WHEN "00110"	=>
					B <= "00000000000000000000000001000000";
				WHEN "00111"	=>
					B <= "00000000000000000000000010000000";
				WHEN "01000"	=>
					B <= "00000000000000000000000100000000";
				WHEN "01001"	=>
					B <= "00000000000000000000001000000000";
				WHEN "01010"	=>
					B <= "00000000000000000000010000000000";
				WHEN "01011"	=>
					B <= "00000000000000000000100000000000";
				WHEN "01100"	=>
					B <= "00000000000000000001000000000000";
				WHEN "01101"	=>
					B <= "00000000000000000010000000000000";
				WHEN "01110"	=>
					B <= "00000000000000000100000000000000";
				WHEN "01111"	=>
					B <= "00000000000000001000000000000000";
				WHEN "10000"	=>
					B <= "00000000000000010000000000000000";
				WHEN "10001"	=>
					B <= "00000000000000100000000000000000";
				WHEN "10010"	=>
					B <= "00000000000001000000000000000000";
				WHEN "10011"	=>
					B <= "00000000000010000000000000000000";
				WHEN "10100"	=>
					B <= "00000000000100000000000000000000";
				WHEN "10101"	=>
					B <= "00000000001000000000000000000000";
				WHEN "10110"	=>
					B <= "00000000010000000000000000000000";
				WHEN "10111"	=>
					B <= "00000000100000000000000000000000";
				WHEN "11000"	=>
					B <= "00000001000000000000000000000000";
				WHEN "11001"	=>
					B <= "00000010000000000000000000000000";
				WHEN "11010"	=>
					B <= "00000100000000000000000000000000";
				WHEN "11011"	=>
					B <= "00001000000000000000000000000000";
				WHEN "11100"	=>
					B <= "00010000000000000000000000000000";
				WHEN "11101"	=>
					B <= "00100000000000000000000000000000";
				WHEN "11110"	=>
					B <= "01000000000000000000000000000000";
				WHEN "11111"	=>
					B <= "10000000000000000000000000000000";
				WHEN OTHERS 	=>
					B <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
			END CASE;
		END PROCESS;	
END Behavior ;