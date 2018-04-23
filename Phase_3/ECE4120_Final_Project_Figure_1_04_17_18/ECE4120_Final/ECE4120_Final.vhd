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


begin --Port mapping for each device
	U1: Phase_1 port map (Clear, Clock, AddMuxOut, inst, PCOut, AddToAdd);
	U2: Main_Control port map (inst(31 downto 26), RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUControl);
	U3: ALU_Control port map (inst(5 downto 0), ALUControl, ALUOp);
	U4: Phase_2 port map (inst, Data_Memory_Mux_Out, ALUOp, Clock, ALUSrc, RegWrite, RegDst, RLO, RD1, ReadOut2, MO, SESignal, ZeroSignal);
	U5: Data_Memory port map (RLO(7 downto 0), Clock, ReadOut2, MemRead, Data_Memory_Out);
	U6: DataMemMux port map (MemToReg, Data_Memory_Out, RLO, Data_Memory_Mux_Out);
	U7: ShiftLeft2 port map (SESignal, ShiftToAdd);
	U8: AddShiftLeft port map (AddToAdd, ShiftToAdd, AddToMux);
	U9: AddMux port map (BranchAndOut, AddToAdd, AddToMux, AddMuxOut);
	U10: AndGate port map (Branch, ZeroSignal, BranchAndOut);
	
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