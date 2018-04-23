LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
library work;
use work.DFFout.all;

entity WriteUnit is
  port ( W, CLK	:	in STD_LOGIC;
			RegNumber	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			RegData	:	in STD_LOGIC_VECTOR(31 DOWNTO 0);
			DOut	:	out DFFArray(31 DOWNTO 0));
end WriteUnit;

architecture structure of WriteUnit is

COMPONENT AndGate IS
PORT ( A, B : IN STD_LOGIC ;
			C: OUT STD_LOGIC) ;
END COMPONENT ;

COMPONENT Decoder5to32 IS
PORT ( A : IN STD_LOGIC_VECTOR(4 DOWNTO 0) ;
			B	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)) ;
END COMPONENT ;

COMPONENT DFlipFlop IS
PORT ( C, CLK : IN STD_LOGIC ;
			D	:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			R	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)) ;
END COMPONENT ;

signal AndInput: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal DFFInput: STD_LOGIC_VECTOR(31 DOWNTO 0);

begin --Port mapping for each device
		U1: Decoder5to32 port map
			(RegNumber, AndInput);
		AndGen: 
		for i in 0 to 31 generate
			AndGateX : AndGate port map
							(W, AndInput(i), DFFInput(i));
		end generate AndGen;
		DFFGen:
		for i in 0 to 31 generate
			DFlipFlopX : DFlipFlop port map
							(DFFInput(i), CLK, RegData, Dout(i));
		end generate DFFGen;
end structure;