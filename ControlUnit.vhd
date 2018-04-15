library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
	port(	opcodein	:in	std_logic_vector(5 downto 0);
			Regdst,Branch,RegWrite,ALUSrc,MemRead,MemWrite,MemtoReg,ALUop	:out	std_logic);
end ControlUnit;

architecture behavior of ControlUnit is

	begin
	--case statements based on opcode






end behavior;