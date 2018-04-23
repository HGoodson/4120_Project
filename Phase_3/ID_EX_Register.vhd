library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ID_EX_Register is
	port( Clock, RegDst_In, ALUSrc_In, MemtoReg_In, RegWrite_In, MemRead_In, MemWrite_In, Branch_In: in std_logic;
			RegDst_Out, ALUSrc_Out, MemtoReg_Out, RegWrite_Out, MemRead_Out, MemWrite_Out, Branch_Out: out std_logic;
			InstructionIn,PCAdd_In,SignExtendIn,RegRead1,RegRead2: in std_logic_vector(31 downto 0);
			PCAdd_Out,SignExtendOut,InstructionOut: out std_logic_vector(31 downto 0);
			ALUOp_In: in std_logic_vector(1 downto 0);
			ALUOp_Out: out std_logic_vector(1 downto 0));
end ID_EX_Register;

architecture structure of ID_EX_Register is
	begin
		process(Clock)
		begin
				if(Clock'event and Clock = '1') then
					PCAdd_Out <= PCAdd_In;
					SignExtendOut <= SignExtendIn;
					InstructionOut <= InstructionIn;
					RegDst_Out <= RegDst_In;
					ALUSrc_Out <= ALUSrc_In;
					MemtoReg_Out <= MemtoReg_In;
					RegWrite_Out <= RegWrite_In;
					MemRead_Out <= MemRead_In;
					MemWrite_Out <= MemWrite_In;
					Branch_Out <= Branch_In;
					ALUOp_Out <= ALUOp_In;
				end if;
		end process;
end structure;
		