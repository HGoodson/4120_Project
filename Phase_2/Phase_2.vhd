library ieee;
use ieee.std_logic_1164.all;

entity Phase_2 is
	port(instruction: in std_logic_vector(31 downto 0);
		  ALUOp: in std_logic_vector(3 downto 0);
		  clock,ALUSrc,rWrite, WCM: in std_logic;
		  RLO: buffer std_logic_vector(31 downto 0);
		  RD1: out std_logic_vector(31 downto 0);
		  RD2: out std_logic_vector(31 downto 0);
		  MO : out std_logic_vector(31 downto 0)); --result of logic operation
end Phase_2;

architecture structure of Phase_2 is

	component RegisterBlock is
	  port ( RegWrite, CLK	:	in STD_LOGIC;
				ReadRegister1	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
				ReadRegister2	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
				WriteRegister	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
				WriteData		:	in STD_LOGIC_VECTOR(31 DOWNTO 0);
				ReadData1	:	out STD_LOGIC_VECTOR(31 DOWNTO 0);
				ReadData2	:	out STD_LOGIC_VECTOR(31 DOWNTO 0));
	end component;
			 
	component ALU is
		PORT (s  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			A,B: IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			F  : Buffer STD_LOGIC_VECTOR(31 DOWNTO 0);
			Compare: OUT STD_logic ) ;
	end component;

	component SignExtendProject is
		port(	input		:in Std_logic_vector(15 downto 0);
				output	:out std_logic_vector(31 downto 0));
	end component;

	component mux_21 is
		port (Sel	: in STD_LOGIC;
			  A		: in STD_LOGIC_VECTOR (31 downto 0);
			  B		: in STD_LOGIC_VECTOR (31 downto 0);
			  X		: out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component RWmux_21 is
		port (Sel	: in STD_LOGIC;
			  A		: in STD_LOGIC_VECTOR (4 downto 0);
			  B		: in STD_LOGIC_VECTOR (4 downto 0);
			  X		: out STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
	--signal inst: std_logic_vector (31 downto 0);
	signal RWmuxout: std_logic_vector(4 downto 0);
	signal ReadOut1: std_logic_vector(31 downto 0);
	signal ReadOut2: std_logic_vector(31 downto 0);
	signal sexout: std_logic_vector(31 downto 0);
	signal muxout: std_logic_vector(31 downto 0);
	signal zero: std_logic;

begin
	M1: RWmux_21 port map(WCM, instruction(20 downto 16), instruction(15 downto 11), RWmuxout);
	R1: RegisterBlock port map(rWrite,clock,instruction(25 downto 21),instruction(20 downto 16), RWmuxout,RLO,ReadOut1,ReadOut2);
	S1: SignExtendProject port map(instruction(15 downto 0), sexout);
	M2: mux_21 port map(ALUSrc, sexout,ReadOut2,muxout);
	A1: ALU port map(ALUOp,ReadOut1,muxout,RLO,zero);
	RD1 <= ReadOut1;
	RD2 <= ReadOut2;
	MO <= muxout;
end structure;