library ieee;
use ieee.std_logic_1164.all;
library work;
use work.DFFout.all;

entity RegisterBlockTB is
end entity RegisterBlockTB;

architecture RegisterBlockTB_arch of RegisterBlockTB is
	signal RW	:	STD_LOGIC := '0';
	signal CLK	:	STD_LOGIC := '0';
	signal RR1	:	STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal RR2	:	STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal WR	:	STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal WD	:	STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal RD1	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal RD2	: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
component RegisterBlock IS
  port ( RegWrite, CLK	:	in STD_LOGIC;
			ReadRegister1	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			ReadRegister2	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			WriteRegister	:	in STD_LOGIC_VECTOR(4 DOWNTO 0);
			WriteData		:	in STD_LOGIC_VECTOR(31 DOWNTO 0);
			ReadData1	:	out STD_LOGIC_VECTOR(31 DOWNTO 0);
			ReadData2	:	out STD_LOGIC_VECTOR(31 DOWNTO 0));
	END component ;

	begin
		DUT: RegisterBlock port map ( RW, CLK, RR1, RR2, WR, WD, RD1, RD2);
			RW <= '1' after 20ns,
							'0' after 80ns;
			CLK <= not CLK after 10ns;
			WR <= "00010" after 0ns,
										"00100" after 30ns;
			WD <= "11110000111100001111000011110000" after 10ns,
										"00000000111100001111000011110000" after 50ns;
			RR1 <= "00010" after 100ns;
			
			RR2 <= "00100" after 100ns;
				
end RegisterBlockTB_arch;