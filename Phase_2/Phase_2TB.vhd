library ieee;
use ieee.std_logic_1164.all;
library work;
use work.DFFout.all;

entity Phase_2TB is
end entity Phase_2TB;

architecture Phase_2TB_arch of Phase_2TB is
	signal instruction	:	std_logic_vector(31 downto 0) := x"21080005";
	signal ALUOp	:	std_logic_vector(3 downto 0) := "0011";
	signal clock	:	std_logic := '0';
	signal ALUSrc	:	std_logic := '1';
	signal rWrite	:	std_logic := '0';
	signal RLO		:	std_logic_vector(31 downto 0); --result of logic operation

	
component Phase_2 IS
  port ( instruction: in std_logic_vector(31 downto 0);
		  ALUOp: in std_logic_vector(3 downto 0);
		  clock,ALUSrc,rWrite: in std_logic;
		  RLO: buffer std_logic_vector(31 downto 0)); --result of logic operation
	END component ;

	begin
		DUT: Phase_2 port map ( instruction, ALUOp, clock, ALUSrc, rWrite, RLO);
			clock <= not clock after 10ns;
			
			instruction <= x"21290001" after 20ns,
								x"214A0003" after 40ns,
								x"22100007" after 60ns,
								x"22310002" after 80ns,
								x"22520002" after 100ns,
								x"01095820" after 120ns,
								x"02116022" after 140ns,
								x"016C6824" after 160ns,
								x"00000000" after 180ns;
			
 			ALUSrc <= '0' after 100ns;
			ALUOp <= "0010" after 140ns,
						"0110" after 160ns;
			rWrite <= 
end Phase_2TB_arch;