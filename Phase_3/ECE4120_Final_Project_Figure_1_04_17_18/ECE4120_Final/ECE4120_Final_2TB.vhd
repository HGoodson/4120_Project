library ieee;
use ieee.std_logic_1164.all;
library work;
use work.DFFout.all;

entity ECE4120_Final_2TB is
end entity ECE4120_Final_2TB;

architecture ECE4120_FinalTB_arch of ECE4120_Final_2TB is
	signal ClearSig	:	std_logic := '0';
	signal ClockSig	:	std_logic := '1';	-- start clock at 1
	signal RLOSig		:	std_logic_vector(31 downto 0); -- result of logic operation
	signal RD1Sig		:	std_logic_vector(31 downto 0); -- Output of register data 1 for testing
	signal RD2Sig		:	std_logic_vector(31 downto 0); -- Output of register data 2 for testing
	signal MOSig		:	std_logic_vector(31 downto 0); -- Output of multiplexer that leads into the ALU for testing
	signal IoutSig			:	std_logic_vector(31 downto 0);
	signal ALUOpSig 	:	std_logic_vector(3 downto 0);
	signal RegDstSig 	:	std_logic;
	signal ALUSrcSig  	:	std_logic;
	signal MemtoRegSig 	:	std_logic;
	signal RegWriteSig	:	std_logic;
	signal MemReadSig 	:	std_logic;
	signal MemWriteSig 	:	std_logic;
	signal BranchSig 	:	std_logic;
	signal PCout: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal AddToAdd: std_logic_vector(31 downto 0);

	component ECE4120_Final IS
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
	END component;

	begin
		DUT: ECE4120_Final port map ( ClearSig, ClockSig, RLOSig, RD1Sig, RD2Sig, MOSig, IoutSig, ALUOpSig, RegDstSig, ALUSrcSig, MemtoRegSig, RegWriteSig, MemReadSig, MemWriteSig, BranchSig, PCout, AddToAdd);
			ClockSig <= not ClockSig after 10ns;
			
end ECE4120_FinalTB_arch;