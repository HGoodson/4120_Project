library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EX_MEM_Register is
	port( Clock: in std_logic;
			MemtoReg_In, RegWrite_In, MemRead_In, MemWrite_In, Branch_In: in std_logic;
			MemtoReg_Out, RegWrite_Out, MemRead_Out, MemWrite_Out, Branch_Out: out std_logic;
			ALUResult_In, AddResult_In, RegRead2_In: in std_logic_vector(31 downto 0);
			ALUResult_Out, AddResult_Out, RegRead2_Out: out std_logic_vector(31 downto 0);
			RegWriteIndex_In: in std_logic_vector(4 downto 0);
			RegWriteIndex_Out: out std_logic_vector(4 downto 0));
end EX_MEM_Register;

architecture structure of EX_MEM_Register is
	begin
		process(Clock)
		begin
				if(Clock'event and Clock = '1') then
					MemtoReg_Out <= MemtoReg_In;
					RegWrite_Out <= RegWrite_In;
					MemRead_Out <= MemRead_In;
					MemWrite_Out <= MemWrite_In;
					Branch_Out <= Branch_In;
					ALUResult_Out <= ALUResult_In;
					AddResult_Out <= AddResult_In;
					RegRead2_Out <= RegRead2_In;
					RegWriteIndex_Out <= RegWriteIndex_In;
				end if;
		end process;
end structure;
		