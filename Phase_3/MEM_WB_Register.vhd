library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MEM_WB_Register is
	port( Clock: in std_logic;
			MemtoReg_In, RegWrite_In: in std_logic;
			MemtoReg_Out, RegWrite_Out: out std_logic;
			MemReadData_In,ALUResult_In: in std_logic_vector(31 downto 0);
			MemReadData_Out,ALUResult_Out: out std_logic_vector(31 downto 0);
			RegWriteIndex_In: in std_logic_vector(4 downto 0);
			RegWriteIndex_Out: out std_logic_vector(4 downto 0));
end MEM_WB_Register;

architecture structure of MEM_WB_Register is
	begin
		process(Clock)
		begin
				if(Clock'event and Clock = '1') then
					MemtoReg_Out <= MemtoReg_In;
					RegWrite_Out <= RegWrite_In;
					MemReadData_Out <= MemReadData_In;
					RegWriteIndex_Out <= RegWriteIndex_In;
					ALUResult_Out <= ALUResult_In;		
				end if;
		end process;
end structure;
		