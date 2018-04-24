library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ECE4120_Final is
  port (  Clear, Clock :in STD_LOGIC;
			 RLO: buffer std_logic_vector(31 downto 0);
		    RD1: out std_logic_vector(31 downto 0);
		    RD2: out std_logic_vector(31 downto 0);
		    MO : out std_logic_vector(31 downto 0); --result of logic operation
			 Iout	:	out std_logic_vector(31 downto 0);
			 ALUOpOut : out std_logic_vector(3 downto 0);
			 RegDstOut, ALUSrcOut, MemtoRegOut, RegWriteOut, MemReadOut, MemWriteOut, BranchOut :	out std_logic;
			 POut, AOut: out STD_LOGIC_VECTOR(31 DOWNTO 0)
			 );
end ECE4120_Final;

architecture structure of ECE4120_Final is

component Phase_1 is
  port (  Clear, Clock :in STD_LOGIC;
			 AddIn : in STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Iout , POut, AOut: out STD_LOGIC_VECTOR(31 DOWNTO 0));
end component;

component Phase_2 is
	port(instruction: in std_logic_vector(31 downto 0);
		  WriteData:	in std_logic_vector(31 downto 0);
		  ALUOp: in std_logic_vector(3 downto 0);
		  clock,ALUSrc,rWrite, WCM: in std_logic;
		  RLO: buffer std_logic_vector(31 downto 0);
		  RD1: out std_logic_vector(31 downto 0);
		  RD2: out std_logic_vector(31 downto 0);
		  MO : out std_logic_vector(31 downto 0);
		  SE : out std_logic_vector(31 downto 0);
		  Zero : out std_logic);
end component;

component Main_Control is
	port(	inst: in std_logic_vector (5 downto 0);
			RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch :	out std_logic;
			ALUControl	:	out	std_logic_vector(1 downto 0));
end component;

component ALU_Control is
	port(	inst: in std_logic_vector (5 downto 0);
			ALUControl : in std_logic_vector (1 downto 0);
			ALUOp	:	out std_logic_vector (3 downto 0));
end component;

component Data_Memory IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
end component;

component DataMemMux is
	port (Sel	: in STD_LOGIC;
		  A		: in STD_LOGIC_VECTOR (31 downto 0);
		  B		: in STD_LOGIC_VECTOR (31 downto 0);
		  X		: out STD_LOGIC_VECTOR (31 downto 0));
end component;

component ShiftLeft2 is
	port(A: in std_logic_vector (31 downto 0);
		  Q: out std_logic_vector (31 downto 0));
end component;

component AddShiftLeft is
	port(A: in std_logic_vector (31 downto 0);
		  B: in std_logic_vector (31 downto 0);
		  Q: out std_logic_vector (31 downto 0));
end component;

component AddMux is
	port (Sel	: in STD_LOGIC;
		  A		: in STD_LOGIC_VECTOR (31 downto 0);
		  B		: in STD_LOGIC_VECTOR (31 downto 0);
		  X		: out STD_LOGIC_VECTOR (31 downto 0));
end component;

component AndGate IS
PORT ( A, B : IN STD_LOGIC ;
			C: OUT STD_LOGIC) ;
end component ;

component IF_ID_Register is
	port( Clock: in std_logic;
			PCAdd_In,Instruction_In: in std_logic_vector(31 downto 0);
			PCAdd_Out,Instruction_Out: out std_logic_vector(31 downto 0));
end component;



component EX_MEM_Register is
	port( Clock: in std_logic;
			MemtoReg_In, RegWrite_In, MemRead_In, MemWrite_In, Branch_In, ALUZero_In: in std_logic;
			MemtoReg_Out, RegWrite_Out, MemRead_Out, MemWrite_Out, Branch_Out, ALU_Zero_Out: out std_logic;
			ALUResult_In, AddResult_In, RegRead2_In: in std_logic_vector(31 downto 0);
			ALUResult_Out, AddResult_Out, RegRead2_Out: out std_logic_vector(31 downto 0);
			RegWriteIndex_In: in std_logic_vector(4 downto 0);
			RegWriteIndex_Out: out std_logic_vector(4 downto 0));
end component;

component MEM_WB_Register is
	port( Clock: in std_logic;
			MemtoReg_In, RegWrite_In: in std_logic;
			MemtoReg_Out, RegWrite_Out: out std_logic;
			MemReadData_In,ALUResult_In: in std_logic_vector(31 downto 0);
			MemReadData_Out,ALUResult_Out: out std_logic_vector(31 downto 0);
			RegWriteIndex_In: in std_logic_vector(4 downto 0);
			RegWriteIndex_Out: out std_logic_vector(4 downto 0));
end component;

	signal inst: std_logic_vector (31 downto 0);
	signal ReadOut1: std_logic_vector(31 downto 0);
	signal ReadOut2: std_logic_vector(31 downto 0);
	signal muxout: std_logic_vector(31 downto 0);
	signal ALUControl: std_logic_vector(1 downto 0);
	signal ALUOp: std_logic_vector(3 downto 0);
	signal ALUSrc: std_logic;
	signal RegDst: std_logic;
	signal MemtoReg: std_logic;
	signal RegWrite: std_logic;
	signal MemRead: std_logic;
	signal MemWrite: std_logic;
	signal Branch: std_logic;
	signal Data_Memory_Out: std_logic_vector(31 downto 0);
	signal Data_Memory_Mux_Out: std_logic_vector(31 downto 0);
	signal SESignal: std_logic_vector(31 downto 0);
	signal ShiftToAdd: std_logic_vector(31 downto 0);
	signal AddToMux: std_logic_vector(31 downto 0);
	signal AddMuxOut: std_logic_vector(31 downto 0);
	signal AddToAdd: std_logic_vector(31 downto 0);
	signal ZeroSignal: std_logic;
	signal BranchAndOut: std_logic;
	signal PCout: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal IFID_inst,IFID_AddOut: std_logic_vector(31 downto 0);
	signal XM_MemtoReg, XM_RegWrite, XM_MemRead, XM_MemWrite, XM_Branch: std_logic;
	signal XM_ALUResult, XM_AddResult, XM_RegRead: std_logic_vector(31 downto 0);
	


begin --Port mapping for each device
	P1: Phase_1 port map (Clear, Clock, AddMuxOut, inst, PCOut, AddToAdd);
	FDReg: IF_ID_Register port map (Clock,AddtoAdd,inst,IFID_inst,IFID_AddOut);
	C1: Main_Control port map (IF_ID_inst(31 downto 26), RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUControl);
	C2: ALU_Control port map (IF_ID_inst(5 downto 0), ALUControl, ALUOp);
	P2: Phase_2 port map (IF_ID_inst, Data_Memory_Mux_Out, ALUOp, Clock, ALUSrc, RegWrite, RegDst, RLO, RD1, ReadOut2, MO, SESignal, ZeroSignal);
	--XMReg: EX_MEM_Register port map (Clock, --not fully mapped yet
	--											  P2_MemtoReg,P2_RegWrite,P2_MemRead,P2_MemWrite,P2_Branch,P2_ALUZero,
	--											  XM_MemtoReg,XM_RegWrite,XM_MemRead,XM_MemWrite,XM_Branch,XM_ALUZero,
	--											  RLO,ReadOut2,
	--										  	 );
	
	S1: ShiftLeft2 port map (SESignal, ShiftToAdd);
	A1: AddShiftLeft port map (AddToAdd, ShiftToAdd, AddToMux);
	M2: AddMux port map (BranchAndOut, AddToAdd, AddToMux, AddMuxOut);

	DM: Data_Memory port map (RLO(7 downto 0), Clock, ReadOut2, MemRead, Data_Memory_Out);
	AN1: AndGate port map (Branch, ZeroSignal, BranchAndOut);
	--MWReg: MEM_WB_Register port map (Clock,
	--											XM_MemtoReg,XM_RegWrite,
	--											MW_MemtoReg,MW_RegWrite,
	--											MemRead,XM_RLO,
	--											MW_MemRead,MW_RLO,
	--											XM_RegWriteIndex,MW_RegWriteIndex
	--										  );
	M1: DataMemMux port map (MemToReg, Data_Memory_Out, RLO, Data_Memory_Mux_Out);
	RD2 <= ReadOut2;
	Iout <= inst;
	ALUOpOut <= ALUOp;
	RegDstOut <= RegDst;
	ALUSrcOut <= ALUSrc;
	MemtoRegOut <= MemtoReg;
	RegWriteOut <= RegWrite;
	MemReadOut <= MemRead;
	MemWriteOut <= MemWrite;
	BranchOut <= Branch;
	POut <= PCOut;
	AOut <= AddToAdd;
	
end structure;