LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY AndGate IS
PORT ( A, B : IN STD_LOGIC ;
			C: OUT STD_LOGIC) ;
END AndGate ;
ARCHITECTURE Behavior OF AndGate IS
	BEGIN
		C <= A and B;
END Behavior ;