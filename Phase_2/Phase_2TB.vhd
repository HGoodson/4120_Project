library ieee;
use ieee.std_logic_1164.all;
library work;
use work.DFFout.all;

entity Phase_2TB is
end entity Phase_2TB;

architecture Phase_2TB_arch of Phase_2TB is
	signal instruction	:	std_logic_vector(31 downto 0) := x"21080005"; -- addi t0, t0, 0x5
	signal ALUOp	:	std_logic_vector(3 downto 0) := "0011";
	signal clock	:	std_logic := '0';
	signal ALUSrc	:	std_logic := '1';
	signal WCM		:	std_logic := '1';
	signal rWrite	:	std_logic := '1';
	signal RLO		:	std_logic_vector(31 downto 0); --result of logic operation
	signal RD1		:	std_logic_vector(31 downto 0);
	signal RD2		:	std_logic_vector(31 downto 0);
	signal MO		:	std_logic_vector(31 downto 0);

	
component Phase_2 IS
  port ( instruction: in std_logic_vector(31 downto 0);
		  ALUOp: in std_logic_vector(3 downto 0);
		  clock,ALUSrc,rWrite, WCM: in std_logic;
		  RLO: buffer std_logic_vector(31 downto 0);
		  RD1: out std_logic_vector(31 downto 0);
		  RD2: out std_logic_vector(31 downto 0);
		  MO : out std_logic_vector(31 downto 0)); --result of logic operation
	END component ;

	begin
		DUT: Phase_2 port map ( instruction, ALUOp, clock, ALUSrc, rWrite, WCM, RLO, RD1, RD2, MO);
			clock <= not clock after 10ns;
			
			instruction <= x"21290001" after 20ns, -- addi t1, t1, 0x1
								x"214A0003" after 40ns, -- addi t2, t2, 0x3
								x"22100007" after 60ns, -- addi s0, s0, 0x7
								x"22310002" after 80ns, --addi s1, s1, 0x2
								x"22520002" after 100ns, -- addi s2, s2, 0x2
								x"01095820" after 120ns, -- add t3, t0, t1
								x"02116022" after 140ns, -- sub t4, s0, s1
								x"016C6824" after 160ns, -- and t5, t3, t4
								x"00000000" after 180ns; -- no more instructions after that
		
			--rWrite <= '0' after 120ns; 
			WCM <= '0' after 120ns; -- After 120ns, we stop using I-type instructions
			ALUSrc <= '0' after 120ns; -- After 120ns, we stop using I-type instructions
			ALUOp <= "0010" after 140ns, -- Switch from add to sub on ALU
						"0110"	after 160ns; -- Switch from sub to and on ALU
			
end Phase_2TB_arch;