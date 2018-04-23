library ieee;
use ieee.std_logic_1164.all;

entity Main_Control is
	port(	inst: in std_logic_vector (5 downto 0);
			RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch	:	out std_logic;
			ALUControl	:	out std_logic_vector(1 downto 0));
end Main_Control;

architecture arch of Main_Control is
begin
	MCase : process (inst)
	begin
		case inst is
			when "000000" => 
				RegDst <= '1'; 
				ALUSrc <= '0'; 
				MemToReg <= '0'; 
				RegWrite <= '1'; 
				MemRead <= '0'; 
				MemWrite <= '0'; 
				Branch <= '0'; 
				ALUControl	<= "10";
			when "100011" =>
				RegDst <= '0'; 
				ALUSrc <= '1'; 
				MemToReg <= '1'; 
				RegWrite <= '1'; 
				MemRead <= '1'; 
				MemWrite <= '0'; 
				Branch <= '0';
				ALUControl	<= "00";	
			when "101011" =>
				RegDst <= 'X'; 
				ALUSrc <= '1'; 
				MemToReg <= 'X'; 
				RegWrite <= '0'; 
				MemRead <= '0'; 
				MemWrite <= '1'; 
				Branch <= '0'; 
				ALUControl	<= "00";
			when "000100" =>
				RegDst <= 'X'; 
				ALUSrc <= '0'; 
				MemToReg <= 'X'; 
				RegWrite <= '0'; 
				MemRead <= '0'; 
				MemWrite <= '0'; 
				Branch <= '1'; 
				ALUControl	<= "01";
			when "001000" =>
				RegDst <= '0'; 
				ALUSrc <= '1'; 
				MemToReg <= 'X'; 
				RegWrite <= '1'; 
				MemRead <= '0'; 
				MemWrite <= '0'; 
				Branch <= '0'; 
				ALUControl	<= "00";
			when others =>
				RegDst <= '0'; 
				ALUSrc <= '0'; 
				MemToReg <= '0'; 
				RegWrite <= '0'; 
				MemRead <= '0'; 
				MemWrite <= '0'; 
				Branch <= '0'; 
				ALUControl	<= "00";
			end case;
	end process;
end arch;